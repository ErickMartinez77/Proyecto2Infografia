local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local uno
local dos
local tres
local cuatro 
local cinco 
local seis 
local siete 
local ocho 
local nueve  
local suspensoaudio = audio.loadSound("tension.mp3") 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
function irIzquierda(event)
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

    local fondo12 = display.newImageRect(grupo_fondo,"/PANEL 12/fondo12.png", CW+100, CH )
    fondo12.x = CW/2
    fondo12.y = CH/2
    fondo12.alpha = 1

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

    uno = display.newImageRect( grupo_intermedio,"/PANEL 12/1.png",CW, CH )
    uno.x = 200
    uno.y = 170
    uno.alpha=0

    dos = display.newImageRect( grupo_intermedio,"/PANEL 12/2.png", 250, 100)
    dos.x = 250
    dos.y = 170
    dos.alpha = 0

    tres = display.newImageRect( grupo_intermedio,"/PANEL 12/3.png", 550, 300)
    tres.x = CW/2
    tres.y = 150
    tres.alpha = 0

    cuatro = display.newImageRect( grupo_intermedio,"/PANEL 12/4.png", 50, 130)
    cuatro.x = 230
    cuatro.y = 170
    cuatro.alpha = 0

    cinco = display.newImageRect( grupo_intermedio,"/PANEL 12/5.png", 548, 350)
    cinco.x = 490
    --cinco.x = 250
    cinco.y = 160

    seis = display.newImageRect( grupo_intermedio,"/PANEL 12/6.png", 80, 80)
    seis.x = 460
    seis.y = 90
    seis.alpha = 0

    siete = display.newImageRect( grupo_intermedio,"/PANEL 12/7.png", 500, 300)
    siete.x = 150
    siete.y = 90
    siete.alpha =0

    ocho = display.newImageRect( grupo_intermedio,"/PANEL 12/8.png", 600, 300)
    ocho.x = CW/2
    ocho.y = CH/2
    ocho.alpha = 0

    nueve = display.newImageRect( grupo_intermedio,"/PANEL 12/9.png", 600, 300)
    nueve.x = CW/2
    nueve.y = CH/2
    nueve.alpha =0
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
        transition.to( uno, {alpha = 1, delay = 1000} )
        transition.to( dos, {alpha = 1, delay = 1500} )
        transition.to( tres, {alpha = 1, delay = 2000} )
        transition.to( uno, {alpha = 0, delay = 6000} )
        transition.to( dos, {alpha = 0, delay = 6000} )
        transition.to( tres, {alpha = 0, delay = 6000} )
        transition.to( cuatro, {alpha = 1, delay = 6500} )
        transition.to( cinco, {x = 250, delay = 8000} )
        transition.to( cuatro, {alpha = 0, delay = 9000} )
        transition.to( seis, {alpha = 1, delay = 9000} )
        transition.to( siete, {alpha = 1, delay = 9500} )
        transition.to( siete, {alpha = 0, delay = 11000} )
        transition.to( ocho, {alpha = 1, delay = 11000} )
        transition.to( nueve, {alpha = 1, delay = 13000} )
        transition.to(ocho, {alpha = 0, delay = 13000})

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
        composer.removeScene( "panel12" )
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