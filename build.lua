#!/usr/bin/env texlua

-- setting up the name
module = "tikzducks"
packageversion="v1.3"
packagedate = "2020-01-02"

-- Auto-versioning ---------------------------------------------------
function git(...)
    local args = {...}
    table.insert(args, 1, 'git')
    local cmd = table.concat(args, ' ')
    print('Executing:', cmd)
    os.execute(cmd)
end

tagfiles = {"*.sty", "tikzducks-doc.tex"}
function update_tag (file,content,tagname,tagdate)
	tagdate = string.gsub (packagedate,"-", "/")
	if string.match (file, "%.sty$" ) then
		content = string.gsub (
			content,
			"\\ProvidesPackage{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d",
			"\\ProvidesPackage{%1}[" .. tagdate.." version "..packageversion
		)
		return content
	elseif string.match (file, "*-doc.tex$" ) then
		content = string.gsub (
			content,
			"\\date{Version v%d%.%d \\textendash{} %d%d%d%d%/%d%d%/%d%d",
			"\\date{Version " .. packageversion .. " \\textendash{} " .. tagdate
		)
		return content
	end
	return content
end

function tag_hook(tagname)
	git("add", "*.sty")
	git("add", "*-doc.tex")
	os.execute("latexmk " .. module .. "-doc")
	os.execute("cp tikzducks-doc.pdf documentation.pdf")
	git("add", "documentation.pdf")
	git("commit -m 'step tag ", packageversion, "'" )
	git("tag", packageversion)
end