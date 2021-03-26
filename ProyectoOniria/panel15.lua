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
local chat
--local deslizarChat
local suspensoaudio = audio.loadSound("tension.mp3")
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
function irIzquierda(event)
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

    local fondo15 = display.newImageRect(grupo_fondo,"/PANEL 15/fondo15.png", CW+100, CH )
    fondo15.x = CW/2
    fondo15.y = CH/2
    fondo15.alpha = 1

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

    uno = display.newImageRect( grupo_intermedio,"/PANEL 15/1.png", 90, 50 )
    uno.x = 450
    uno.y = 250
    uno.alpha = 0

    dos = display.newImageRect( grupo_intermedio,"/PANEL 15/2.png", 500, 300 )
    dos.x = 220
    dos.y = 150
    dos.alpha = 0

    tres = display.newImageRect( grupo_intermedio,"/PANEL 15/3.png", 600, 300 )
    tres.x = 250
    tres.y = 150
    tres.alpha = 0

    cuatro = display.newImageRect( grupo_intermedio,"/PANEL 15/4.png", 90, 50 )
    --cuatro.x = 350
    cuatro.x = 450
    cuatro.y = 120
    cuatro.alpha = 0

    cinco = display.newImageRect( grupo_intermedio,"/PANEL 15/5.png", 600, 300 )
    cinco.x = 250
    cinco.y = 150
    cinco.alpha = 0

    seis = display.newImageRect( grupo_intermedio, "/PANEL 15/6.png",  270, 50 )
    seis.x = 290
    seis.y = 170
    --seis.y = 130
    seis.alpha = 0

    siete = display.newImageRect( grupo_intermedio, "/PANEL 15/7.png",  670, 450 )
    siete.x = 250
    siete.y = 280
    --siete.y = 225
    siete.alpha = 0

    ocho = display.newImageRect( grupo_intermedio, "/PANEL 15/8.png",  270, 50 )
    ocho.x = 290
    ocho.y = 250
    --ocho.y = 180
    ocho.alpha = 0

    nueve = display.newImageRect( grupo_intermedio, "/PANEL 15/9.png",  270, 50 )
    nueve.x = 290
    nueve.y = 250
    --nueve.y = 180
    nueve.alpha = 0

    diez = display.newImageRect( grupo_intermedio, "/PANEL 15/10.png",  270, 50 )
    diez.x = 290
    diez.y = 250
    diez.alpha = 0
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
        transition.to( dos, {alpha = 1, delay = 3000} )
        transition.to( tres, {alpha = 1, delay = 3500} )
        transition.to( cuatro, {alpha = 1, delay = 3500} )
        transition.to( uno, {alpha=0,delay = 3000} )
        transition.to( cuatro, {x=350,delay = 4500} )
        transition.to( cinco, {alpha = 1, delay = 5500} )
        transition.to( cuatro, {alpha = 0, delay = 6500} )
        transition.to( seis, {alpha = 1, delay = 8000} )
        transition.to( siete, {alpha = 1, delay = 15000} )
        transition.to( seis, {y=130, alpha = 0, delay = 25000} )
        transition.to( siete, {y=225, delay = 25000} )
        transition.to( ocho, {alpha = 1, delay = 26000} )
        transition.to( siete, {y=130, alpha = 0, delay = 30000}  )
        transition.to( ocho, {y=180, delay = 30000} )
        transition.to( nueve, {alpha = 1, delay = 31000} )
        transition.to( ocho, {y=90, alpha = 0, delay = 35000}  )
        transition.to( nueve, {y = 180, delay = 35000} )
        transition.to( diez, {alpha = 1, delay = 35500} )
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
        composer.removeScene( "panel15" )
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