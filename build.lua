#!/usr/bin/env texlua

-- setting up the name
module = "tikzducks"
packageversion="1.2"
packagedate = "2020-01-02"

-- documentation
typesetfiles = {"tikzducks-doc.tex"}
docfiles     = {"tikzducks-doc.tex"}

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
		return content
	elseif string.match (file, "*-doc.tex$" ) then
		content = string.gsub (
			content,
			"\\date{Version v%d%.%d",
			"\\date{Version v" .. packageversion
		)
		return content
	end
 return content
end