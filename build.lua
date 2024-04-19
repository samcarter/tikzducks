#!/usr/bin/env texlua
-- Execute with ======================================================
-- l3build tag
-- l3build ctan
-- <check announcement.txt and format if necessary>
-- l3build upload
-- l3build clean

-- Settings ==========================================================
module = "tikzducks"
ctanpkg = "tikzducks"
builddir = os.getenv("TMPDIR") 

-- Private settings ==================================================
local ok, build_private = pcall(require, "build-private.lua")

-- Package version ===================================================
if ok then
  local handle = io.popen("git describe --tags $(git rev-list --tags --max-count=1)")
  local oldtag = handle:read("*a")
  handle:close()
  newsubtag = string.sub(oldtag, 4)
  newmajortag = string.sub(oldtag, 0, 3)
  previousversion = newmajortag .. math.floor(newsubtag)
  if ( options["target"] == "tag") then
    newsubtag = newsubtag + 1
  end
  packageversion = newmajortag .. math.floor(newsubtag)  
else 
  packageversion="v1.42"
end

-- Package date ======================================================
packagedate = os.date("!%Y-%m-%d")
--packagedate = "2020-01-02"

-- interacting with git ==============================================
function git(...)
    local args = {...}
    table.insert(args, 1, 'git')
    local cmd = table.concat(args, ' ')
    print('Executing:', cmd)
    os.execute(cmd)
end

-- replace version tags in .sty and -doc.tex files ===================
tagfiles = {"*.sty", "*-doc.tex", "*.mkiv","CHANGELOG.md"}
function update_tag (file,content,tagname,tagdate)
  tagdate = string.gsub (packagedate,"-", "/")
  if string.match (file, "%.sty$" ) then
    content = string.gsub (
      content,
      "\\ProvidesPackage{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d+",
      "\\ProvidesPackage{%1}[" .. tagdate.." version "..packageversion
    )
    return content
  elseif string.match (file, "*-doc.tex$" ) then
    content = string.gsub (
      content,
      "\\date{Version v%d%.%d+ \\textendash{} %d%d%d%d%/%d%d%/%d%d",
      "\\date{Version " .. packageversion .. " \\textendash{} " .. tagdate
    )
    return content
  elseif string.match (file, "%.mkiv$" ) then
    content = string.gsub (
      content,
            "\\writestatus{(.-)}%{ConTeXt User Module / TikZDucks %d%d%d%d%/%d%d%/%d%d version v%d%.%d+",
            "\\writestatus{%1}{ConTeXt User Module / TikZDucks " .. tagdate.." version "..packageversion
    )
    return content        
  elseif string.match (file, "CHANGELOG.md$" ) then
    local url = "https://github.com/samcarter/" .. module .. "/compare/"
    local previous = string.match(content,"compare/(v%d%.%d)%.%.%.HEAD")
      
    -- copying current changelong to announcement.txt
    -- finding start and end in changelog
    i, startstring = string.find(content, "## %[Unreleased%]")
    stopstring, i = string.find(content, "## %[" .. previousversion .. "%]")
    -- opening file and writing substring
    file = io.open("announcement.txt", "w")
    file:write(string.sub(content, startstring+3, stopstring-1), "\n")
    file:close()
      
    -- adding new unreleased heading at the top
    content = string.gsub (
      content,
            "## %[Unreleased%]",
            "## [Unreleased]\n\n### New\n\n### Changed\n\n### Fixed\n\n\n## [" .. packageversion .."]"        
    )
        
        -- adding new link at bottom
    content = string.gsub (
      content,
            "v%d.%d%.%.%.HEAD",
            packageversion .. "...HEAD\n[" .. packageversion .. "]: " .. url .. previousversion .. "..." .. packageversion
    )
    return content
  end  
  return content
end

-- committing retagged file and tag the commit =======================
function tag_hook(tagname)
  git("add", "*.sty")
  git("add", "*-doc.tex")
  git("add", "*.mkiv")  
  git("add", "CHANGELOG.md")  
  os.execute("latexmk " .. module .. "-doc")
  os.execute("cp " .. module .. "-doc.pdf documentation.pdf")
  git("add", "documentation.pdf")
  git("commit -m 'step version ", packageversion, "'" )
  git("tag", packageversion)
end

-- collecting files for ctan =========================================
docfiles = {"*-doc.tex"}
textfiles= {"README_ctan.md"}
ctanreadme= "README_ctan.md"
packtdszip   = false
installfiles = {"*.sty", "*.code.tex", "*.mkiv", "*-generic.tex","*-plain.tex"}
sourcefiles = {"*.sty", "*.code.tex", "*.mkiv", "*-generic.tex","*-plain.tex"}  
excludefiles = {"documentation.pdf"}

uploadconfig = {
  author       = uploadconfig.author,
  uploader     = uploadconfig.uploader,
  email        = uploadconfig.email,
  pkg          = ctanpkg,
  version      = packageversion .. " " .. packagedate,
  license      = "lppl1.3c",
  summary      = "A little fun package for using rubber ducks in TikZ",
  ctanPath     = "/graphics/pgf/contrib/" .. ctanpkg,
  repository   = "https://github.com/samcarter/" .. module,
  note         = [[Uploaded automatically by l3build...]],
  bugtracker   = "https://github.com/samcarter/" .. module .. "/issues",
  support      = "https://github.com/samcarter/" .. module .. "/issues",  
  announcement_file = "announcement.txt"
}

-- cleanup ===========================================================
cleanfiles = {"tikzducks-ctan.curlopt", "tikzducks-ctan.zip"}
