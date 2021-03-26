local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local introaudio = audio.loadSound("intro.mp3")

function irIzquierda(event)
    if event.phase == "ended" then
    composer.gotoScene( "intro" , {
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
    composer.gotoScene( "panel11" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 
function irPanel12(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel12" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 
function irPanel13(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel13" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 
function irPanel14(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel14" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 
function irPanel15(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel15" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end  
function irPanel16y17(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel16y17" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 

function irPanel18(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel18" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 
function irPanel19y20(event)
    if event.phase == "ended" then
    composer.gotoScene( "panel19y20" , {
        effect = "fade",
        time = 200,
        params = {
            tiempo = 60
        }
        })
    end
    return true
end 

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
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    grupo_fondo = display.newGroup( )
    grupo_intermedio = display.newGroup( )
    grupo_delantero = display.newGroup( )

    sceneGroup:insert( grupo_fondo)
    sceneGroup:insert( grupo_intermedio)
    sceneGroup:insert( grupo_delantero)
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local portada = display.newImageRect( grupo_fondo,"Intro.png", CW+100,CH )
    portada.x = CW/2
    portada.y = CH/2

    local flechaIzquierda = display.newImageRect( grupo_delantero,"next.png", 50,50 )
    flechaIzquierda.x = 20
    flechaIzquierda.y = 280
    flechaIzquierda:scale( -1, 1 )
    flechaIzquierda:addEventListener( "touch", irIzquierda)

    local panel11 = display.newImageRect( grupo_intermedio, "/paneles/panel11.png", 50, 50 )
    panel11.x = 80
    panel11.y = 100
    panel11.escena = "panel11"
    panel11:addEventListener( "touch", irPanel11 )


    local panel12 = display.newImageRect( grupo_intermedio, "/paneles/panel12.png", 50, 50 )
    panel12.x = 160
    panel12.y = 100
    panel12:addEventListener( "touch", irPanel12)

    local panel13 = display.newImageRect( grupo_intermedio, "/paneles/panel13.png", 50, 50 )
    panel13.x = 240
    panel13.y = 100
    panel13:addEventListener( "touch", irPanel13)

    local panel14 = display.newImageRect( grupo_intermedio, "/paneles/panel14.png", 50, 50 )
    panel14.x = 320
    panel14.y = 100
    panel14:addEventListener( "touch", irPanel14 )

    local panel15 = display.newImageRect( grupo_intermedio, "/paneles/panel15.png", 50, 50 )
    panel15.x = 400
    panel15.y = 100
    panel15:addEventListener( "touch", irPanel15)

    local panel16 = display.newImageRect( grupo_intermedio, "/paneles/panel16.png", 50, 50 )
    panel16.x = 80
    panel16.y = 200
    panel16:addEventListener( "touch", irPanel16y17)

    local panel17 = display.newImageRect( grupo_intermedio, "/paneles/panel17.png", 50, 50 )
    panel17.x = 160
    panel17.y = 200
    panel17:addEventListener( "touch", irPanel16y17 )

    local panel18 = display.newImageRect( grupo_intermedio, "/paneles/panel18.png", 50, 50 )
    panel18.x = 240
    panel18.y = 200
    panel18:addEventListener( "touch", irPanel18 )

    local panel19 = display.newImageRect( grupo_intermedio, "/paneles/panel19.png", 50, 50 )
    panel19.x = 320
    panel19.y = 200
    panel19:addEventListener( "touch", irPanel19y20)

    local panel20 = display.newImageRect( grupo_intermedio, "/paneles/panel20.png", 50, 50 )
    panel20.x = 400
    panel20.y = 200
    panel20:addEventListener( "touch", irPanel19y20 )
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
        composer.removeScene( "menu" )
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