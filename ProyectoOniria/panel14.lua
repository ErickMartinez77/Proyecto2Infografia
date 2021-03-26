local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local primero
local segundo
local tercero
local cuarto
local suspensoaudio = audio.loadSound("tension.mp3") 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
function irIzquierda(event)
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
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    grupo_fondo = display.newGroup( )
    grupo_intermedio = display.newGroup( )
    grupo_delantero = display.newGroup( )

    sceneGroup:insert( grupo_fondo)
    sceneGroup:insert( grupo_intermedio)
    sceneGroup:insert( grupo_delantero)

    local fondo14 = display.newImageRect(grupo_fondo,"/PANEL 14/fondo14.png", CW+100, CH )
    fondo14.x = CW/2
    fondo14.y = CH/2
    fondo14.alpha = 1

    local menu = display.newImageRect( grupo_delantero,"menuBoton.png", 50,50 )
    menu.x = 0
    menu.y = 50
    menu:addEventListener( "touch", irAMenu )

    local flechaDerecha = display.newImageRect( grupo_delantero,"next.png", 50, 50 )
    flechaDerecha.x = 470
    flechaDerecha.y = 280
    flechaDerecha:addEventListener( "touch", irDerecha)

    local flechaIzquierda = display.newImageRect( grupo_delantero,"next.png", 50,50 )
    flechaIzquierda.x = 20
    flechaIzquierda.y = 280
    flechaIzquierda:scale( -1, 1 )
    flechaIzquierda:addEventListener( "touch", irIzquierda)

    primero = display.newImageRect( grupo_intermedio,"/PANEL 14/1.png", 50, 50 )
    primero.x = 25
    primero.y = 115
    primero.alpha = 1

    segundo = display.newImageRect( grupo_intermedio,"/PANEL 14/2.png", 80, 140 )
    segundo.x = 120
    segundo.y = 160
    segundo.alpha = 0

    tercero = display.newImageRect( grupo_intermedio,"/PANEL 14/3.png", 120, 80 )
    tercero.x = 420
    tercero.y = 70
    tercero.alpha = 0

    cuarto = display.newImageRect( grupo_intermedio,"/PANEL 14/4.png", 290, 150 )
    cuarto.x = 380
    cuarto.y = 200
    cuarto.alpha = 0
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        audio.play(suspensoaudio)
        transition.to( segundo, {alpha = 1, delay = 2000} )
        transition.to( primero, {alpha = 0, delay = 2000} )
        transition.to( segundo, {alpha = 0, delay = 4000} )
        transition.to( tercero, {alpha = 1, delay = 4000} )
        transition.to( cuarto, {alpha = 1, delay = 4500}  )
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
        transition.cancelAll( )
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
        audio.pause(suspensoaudio)
        composer.removeScene( "panel14" )
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