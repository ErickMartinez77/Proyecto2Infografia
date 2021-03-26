-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )
_G.CW = display.contentWidth
_G.CH = display.contentHeight

-- include the Corona "composer" module
local composer = require "composer"

-- load title screen
composer.gotoScene( "intro", "fade" )