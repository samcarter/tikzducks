#!/usr/bin/env texlua

-- setting up the name
module = "tikzducks"
packageversion="1.3"
packagedate = "2020-01-02"

function git(...)
    local args = {...}
    table.insert(args, 1, 'git')
    local cmd = table.concat(args, '')
    print('Executing:', cmd)
    os.execute(cmd)
end

function sleep(s)
  local ntime = os.clock() + s/10
  repeat until os.clock() > ntime
end

-- Auto-versioning ---------------------------------------------------
tagfiles = {"tikzducks.sty", "tikzducks-doc.tex"}
function update_tag (file,content,tagname,tagdate)
	tagdate = string.gsub (packagedate,"-", "/")
	if string.match (file, "%.sty$" ) then
		content = string.gsub (
			content,
			"\\ProvidesPackage{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d",
			"\\ProvidesPackage{%1}[" .. tagdate.." version v"..packageversion
		)
		git(" add ", file)
		return content
	elseif string.match (file, "*-doc.tex$" ) then
		content = string.gsub (
			content,
			"\\date{Version v%d%.%d \\textendash{} %d%d%d%d%/%d%d%/%d%d",
			"\\date{Version v" .. packageversion .. " \\textendash{} " .. tagdate
		)
		git(" add ", file)
		os.execute("sleep 1 ; latexmk " .. module .. "-doc")
		os.execute("cp tikzducks-doc.pdf documentation.pdf")
		git(" add ", "documentation.pdf")
		git(" commit -m 'step tag ", packageversion, "'" )
		git(" tag ", "v", packageversion)
		return content
	end
	return content
end