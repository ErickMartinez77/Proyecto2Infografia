local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local chica2_parada
local chica1
local disculpa_hola
local has_visto
local quien_es_manuel
local chica1_celular
local poeta
local chica2_senalando
local acabaDeSalir
local chica1_corriendo
local suspensoaudio = audio.loadSound("tension.mp3")
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
    grupo_fondo = display.newGroup( )
    grupo_intermedio = display.newGroup( )
    grupo_delantero = display.newGroup( )

    sceneGroup:insert( grupo_fondo)
    sceneGroup:insert( grupo_intermedio)
    sceneGroup:insert( grupo_delantero)
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local fondo11 = display.newImageRect(grupo_fondo,"/PANEL 11/fondo11.png", CW+100, CH )
    fondo11.x = CW/2
    fondo11.y = CH/2

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

    chica2_parada = display.newImageRect( grupo_intermedio,"/PANEL 11/2.png", 60, 170)
    chica2_parada.x = 145
    chica2_parada.y = 185
    chica2_parada.alpha = 1

    chica1 = display.newImageRect( grupo_intermedio,"/PANEL 11/1.png", 60, 150)
    chica1.x = 30
    chica1.y = 190
    chica1.alpha=0

    disculpa_hola = display.newImageRect( grupo_intermedio,"/PANEL 11/3.png", 100, 80)
    disculpa_hola.x = 80
    disculpa_hola.y = 100
    disculpa_hola.alpha = 0

    has_visto = display.newImageRect( grupo_intermedio,"/PANEL 11/4.png", 120, 100)
    has_visto.x = 80
    has_visto.y = 100
    has_visto.alpha = 0

    quien_es_manuel = display.newImageRect( grupo_intermedio,"/PANEL 11/6.png", 140, 100)
    quien_es_manuel.x = 100
    quien_es_manuel.y = 70
    quien_es_manuel.alpha = 0

    chica1_celular = display.newImageRect( grupo_intermedio,"/PANEL 11/chicacelular.png", 180, 200)
    chica1_celular.x = 27
    chica1_celular.y = 180
    chica1_celular.alpha=0

    poeta = display.newImageRect( grupo_intermedio,"/PANEL 11/8.png", 140, 100)
    poeta.x = 100
    poeta.y = 70
    poeta.alpha = 0

    chica2_senalando = display.newImageRect( grupo_intermedio,"/PANEL 11/9.png", 60, 170)
    chica2_senalando.x = 145
    chica2_senalando.y = 185
    chica2_senalando.alpha=0

    acabaDeSalir = display.newImageRect( grupo_intermedio,"/PANEL 11/10.png", 140, 100)
    acabaDeSalir.x = 100
    acabaDeSalir.y = 70
    acabaDeSalir.alpha = 0

    chica1_corriendo = display.newImageRect( grupo_intermedio,"/PANEL 11/chica_corriendo.png", 500, 300)
    chica1_corriendo.x = 240
    chica1_corriendo.y = 160
    chica1_corriendo.alpha=0
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        audio.play( suspensoaudio )
        transition.to( chica1, {alpha = 1, delay=200} )
        transition.to(disculpa_hola,{alpha = 1, delay = 400})
        transition.to(disculpa_hola,{alpha = 0, delay = 2000})
        transition.to( has_visto, {alpha = 1, delay = 3000} )
        transition.to( has_visto, {alpha = 0, delay = 5000} )
        transition.to( quien_es_manuel, {alpha = 1, delay = 5000} )
        transition.to( quien_es_manuel, {alpha = 0, delay = 7000} )
        transition.to( chica1, {alpha = 0, delay=7000} )
        transition.to( chica1_celular, {alpha = 1, delay=7000})
        transition.to( poeta, {alpha = 1, delay=7500} )
        transition.to( poeta, {alpha = 0, delay=11000} )
        transition.to( chica2_parada, {alpha = 0, delay=11000} )
        transition.to( chica2_senalando, {alpha = 1, delay=11000} )
        transition.to( acabaDeSalir, {alpha = 1, delay=11000} )
        transition.to( chica1_celular, {alpha = 0, delay=15000})
        transition.to( chica1_corriendo, {alpha = 1, delay=15000} )
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
        audio.pause( suspensoaudio  )
        composer.removeScene( "panel11" )
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