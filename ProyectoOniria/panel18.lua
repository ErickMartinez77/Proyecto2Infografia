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
local diez  
local once 
local fondo18
local fondo18_2 
local suspensoaudio = audio.loadSound("tension.mp3") 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
function irIzquierda(event)
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

    fondo18 = display.newImageRect(grupo_fondo,"/PANEL 18/fondo18.png", CW+100, CH )
    fondo18.x = CW/2
    fondo18.y = CH/2
    fondo18.alpha = 1

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

    fondo18 = display.newImageRect(grupo_fondo,"/PANEL 18/fondo18.png", CW+100, CH )
    fondo18.x = CW/2
    fondo18.y = CH/2
    fondo18.alpha = 0

    uno = display.newImageRect( grupo_intermedio, "/PANEL 18/1.png", 450, 300 )
    uno.x = 220
    uno.y = 170
    uno.alpha = 0

    dos = display.newImageRect( grupo_intermedio, "/PANEL 18/2.png", 500, 300 )
    dos.x = 250
    dos.y = 150
    dos.alpha = 0

    tres = display.newImageRect( grupo_intermedio, "/PANEL 18/3.png", 450, 300 )
    tres.x = 220
    tres.y = 170
    tres.alpha = 0

    cuatro = display.newImageRect( grupo_intermedio, "/PANEL 18/4.png", 500, 300 )
    cuatro.x = 250
    cuatro.y = 150
    cuatro.alpha = 0

    cinco = display.newImageRect( grupo_intermedio, "/PANEL 18/5.png", 500, 300 )
    cinco.x = 250
    cinco.y = 150
    cinco.alpha = 0

    seis = display.newImageRect( grupo_intermedio, "/PANEL 18/6.png", 500, 300 )
    seis.x = 250
    seis.y = 150
    seis.alpha =0

    siete = display.newImageRect( grupo_intermedio, "/PANEL 18/7.png", 150, 100 )
    siete.x = 80
    siete.y = 100
    siete.alpha = 0

    ocho = display.newImageRect( grupo_intermedio, "/PANEL 18/8.png", 150, 30 )
    ocho.x = 350
    ocho.y = 250
    ocho.alpha = 0

    fondo18_2 = display.newImageRect(grupo_fondo,"/PANEL 18/fondo18_2.png", CW+100, CH )
    fondo18_2.x = CW/2
    fondo18_2.y = CH/2
    fondo18_2.alpha = 0

    nueve = display.newImageRect( grupo_intermedio, "/PANEL 18/9.png", 50, 150 )
    nueve.x = 133
    nueve.y = 160
    nueve.alpha = 0

    diez = display.newImageRect( grupo_intermedio, "/PANEL 18/10.png", 150, 80 )
    diez.x = CW
    diez.y = 160
    diez.alpha = 0

    once = display.newImageRect( grupo_intermedio, "/PANEL 18/11.png", 450, 280 )
    once.x = 200
    once.y = 150
    once.alpha = 0
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
        transition.to( uno, {alpha = 1} )
        transition.to( dos, {alpha = 1, delay=2000} )
        transition.to( dos, {alpha = 0, delay= 5000} )
        transition.to( tres, {alpha = 1, delay= 5000} )
        transition.to( cuatro, {alpha = 1, delay = 7000} )--
        transition.to( cinco, {alpha = 1, delay = 10000} )
        transition.to( seis, {alpha = 1, delay = 13000} )
        transition.to( siete, {alpha=1, delay = 16000} )
        transition.to( ocho, {alpha = 1, delay = 20000} )
        transition.to( fondo18, {alpha = 0, delay = 24000} )
        transition.to( uno, {alpha = 0, delay = 24000} )
        transition.to( tres, {alpha = 0, delay = 24000} )
        transition.to( cuatro, {alpha = 0, delay = 24000} )
        transition.to( cinco, {alpha = 0, delay = 24000} )
        transition.to( seis, {alpha = 0, delay = 24000} )
        transition.to( siete, {alpha = 0, delay = 24000} )
        transition.to( ocho, {alpha = 0, delay = 24000} )

        transition.to( fondo18_2, {alpha = 1, delay = 24500} )
        transition.to( nueve, {alpha = 1, delay = 26000} )
        transition.to( diez, {alpha = 1, delay = 29000} )
        transition.to( nueve, {alpha = 0, delay = 29800} )
        transition.to( once, {alpha = 1, delay = 31000} )

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
        composer.removeScene( "panel18" )
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