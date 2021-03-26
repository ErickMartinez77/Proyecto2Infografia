local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local portada
local start
local introaudio = audio.loadSound("intro.mp3")
--local nubesSprite
local nubes

local options =
    {
        --required parameters
        width = 469,
        height = 195,
        numFrames = 2
     
    }
local nubesSprite = graphics.newImageSheet( "nubesSprite.png", options )

local sequenceData = {

            {
                start = 1,
                count = 2,
                frames = {3,2,1},
                sheet=nubesSprite,
                time = 1000
            },
            {
                name = "eliminar",
                start = 3,
                --count = 4,
                sheet=nubesSprite,
                --time = 1000
            }
        }

--local nubes = display.newSprite( nubesSprite, sequenceData )
--nubes:translate( 0, CH*0.4 )
--nubes:scale( 0.2, 0.2 )
--nubes:play( )
--nubes.anchorX = 0.5

function irAMenu(event)
    if event.phase == "ended" then
    composer.gotoScene( "menu" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end
function irPanel11(event)
    if event.phase == "ended" then
    composer.gotoScene( event.target.escena , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    portada = display.newImageRect( sceneGroup,"Intro.png", CW+100,CH )
    portada.x = CW/2
    portada.y = CH/2
    portada:addEventListener( "touch", irPanel11 )

    local menu = display.newImageRect( sceneGroup,"menuBoton.png", 50,50 )
    menu.x = 0
    menu.y = 50
    menu:addEventListener( "touch", irAMenu )

    

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        audio.play(introaudio)
        
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
        --nubes:pause( )
        --nubes:setSequence( "eliminar" )
        composer.removeScene( "intro" )
        audio.pause( introaudio )
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene