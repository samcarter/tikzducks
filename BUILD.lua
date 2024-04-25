#!/usr/bin/env texlua

-- Execute with ================================================================
-- l3build tag
-- l3build ctan
-- <check announcement.txt and format if necessary>
-- l3build upload
-- l3build clean

-- Settings ====================================================================
module = "tikzducks"
ctanpkg = "tikzducks"
ctanprefix = "/graphics/pgf/contrib/"
ctansummary = "A little fun package for using rubber ducks in TikZ"

-- common settings =============================================================
-- https://github.com/samcarter/beamertheme-sam/blob/main/build-settings.lua
local common_settings, build_settings = pcall(require, "../beamertheme-sam/build-settings.lua")

-- collecting files for ctan ===================================================
textfiles= {"README_ctan.md"}
ctanreadme= "README_ctan.md"
