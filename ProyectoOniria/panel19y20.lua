local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local fondo,tres, cuatro, cinco, seis, siete, ocho, nueve, quince, dieciseis, diecisiete, dieciocho, diecinueve,
veinte, veinte1,veinte2,veinte3,veinte4,veinte5,veinte6,veinte7,veinte8,veinte9, treinta,
treinta1,treinta2,treinta3,treinta4,treinta5,treinta6,treinta7
local suspensoaudio = audio.loadSound("tension.mp3") 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
function irIzquierda(event)
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

    fondo = display.newImageRect(grupo_fondo,"/PANEL 19y20/fondo1.png", CW+100, CH )
    fondo.x = CW/2
    fondo.y = CH/2
    fondo.alpha = 1

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

    tres = display.newImageRect( grupo_intermedio, "/PANEL 19y20/3.png", 130, 80 )
    tres.x = 50
    tres.y = 220
    tres.alpha = 0

    cuatro = display.newImageRect( grupo_intermedio, "/PANEL 19y20/4.png", 220, 300 )
    cuatro.x = 400
    cuatro.y = 180
    cuatro.alpha = 0

    cinco = display.newImageRect( grupo_intermedio, "/PANEL 19y20/5.png", 130, 80 )
    cinco.x = 300
    cinco.y = 150
    cinco.alpha = 0

    seis = display.newImageRect( grupo_intermedio, "/PANEL 19y20/6.png", 200, 300 )
    seis.x = 420
    seis.y = 150
    seis.alpha = 0

    siete = display.newImageRect( grupo_intermedio, "/PANEL 19y20/7.png", CW+100, CH )
    siete.x = CW/2
    siete.y = CH/2
    siete.alpha = 0

    ocho = display.newImageRect( grupo_intermedio, "/PANEL 19y20/8.png", 200, 100 )
    ocho.x = 400
    ocho.y = 100
    ocho.alpha = 0

    nueve = display.newImageRect( grupo_intermedio, "/PANEL 19y20/9.png", CW+100, CH )
    nueve.x = CW/2
    nueve.y = CH/2
    nueve.alpha = 0

    quince = display.newImageRect( grupo_intermedio, "/PANEL 19y20/15.png", CW+100, CH )
    quince.x = CW/2
    quince.y = CH/2
    quince.alpha = 0

    dieciseis = display.newImageRect( grupo_intermedio, "/PANEL 19y20/16.png", 220, 80 )
    dieciseis.x = 200
    dieciseis.y = 85
    dieciseis.alpha = 0

    diecisiete = display.newImageRect( grupo_intermedio, "/PANEL 19y20/17.png", CW+100, CH )
    diecisiete.x = CW/2
    diecisiete.y = CH/2
    diecisiete.alpha = 0

    dieciocho = display.newImageRect( grupo_intermedio, "/PANEL 19y20/18.png", 180, 180 )
    dieciocho.x = 90
    dieciocho.y = 130
    dieciocho.alpha = 0

    diecinueve = display.newImageRect( grupo_intermedio, "/PANEL 19y20/19.png", 150, 150 )
    diecinueve.x = 80
    diecinueve.y = 150
    diecinueve.alpha = 0

    veinte = display.newImageRect( grupo_intermedio, "/PANEL 19y20/20.png", CW+100, CH )
    veinte.x = CW/2
    veinte.y = CH/2
    veinte.alpha = 0

    veinte1 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/21.png", CW+100, CH )
    veinte1.x = CW/2
    veinte1.y = CH/2
    veinte1.alpha = 0

    veinte2 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/22.png", CW+100, CH )
    veinte2.x = CW/2
    veinte2.y = CH/2
    veinte2.alpha = 0

    veinte3 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/23.png", CW+100, CH )
    veinte3.x = CW/2
    veinte3.y = CH/2
    veinte3.alpha = 0

    veinte4 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/24.png", CW+100, CH )
    veinte4.x = CW/2
    veinte4.y = CH/2
    veinte4.alpha = 0

    veinte5 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/25.png", CW+100, CH )
    veinte5.x = CW/2
    veinte5.y = CH/2
    veinte5.alpha = 0

    veinte6 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/26.png", 200, 80 )
    veinte6.x = 250
    veinte6.y = 270
    veinte6.alpha = 0

    veinte7 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/27.png", 120, 60 )
    veinte7.x = 470
    veinte7.y = 230
    veinte7.alpha = 0

    veinte8 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/28.png", CW+100, CH )
    veinte8.x = CW/2
    veinte8.y = CH/2
    veinte8.alpha = 0

    veinte9 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/29.png", CW+100, CH )
    veinte9.x = CW/2
    veinte9.y = CH/2
    veinte9.alpha = 0

    treinta = display.newImageRect( grupo_intermedio, "/PANEL 19y20/30.png", CW+100, CH )
    treinta.x = CW/2
    treinta.y = CH/2
    treinta.alpha = 0

    treinta1 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/31.png", CW+100, CH )
    treinta1.x = CW/2
    treinta1.y = CH/2
    treinta1.alpha = 0

    treinta2 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/32.png", 200, 80 )
    treinta2.x = 270
    treinta2.y = 170
    treinta2.alpha = 0

    treinta3 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/33.png", 200, 100 )
    treinta3.x = 270
    treinta3.y = 170
    treinta3.alpha = 0

    treinta4 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/34.png", 150, 50 )
    treinta4.x = 400
    treinta4.y = 50
    treinta4.alpha = 0

    treinta5 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/35.png", 150, 150 )
    treinta5.x = 100
    treinta5.y = 120
    treinta5.alpha = 0

    treinta6 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/36.png", 200, 100 )
    treinta6.x = 270
    treinta6.y = 170
    treinta6.alpha = 0

    treinta7 = display.newImageRect( grupo_intermedio, "/PANEL 19y20/37.png", 150, 150 )
    treinta7.x = 420
    treinta7.y = 200
    treinta7.alpha = 0
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
        transition.to( tres, {alpha = 1, delay = 1000} )
        transition.to( cuatro, {alpha = 1, delay = 2000} )
        transition.to( cinco, {alpha=1, delay = 3000} )
        transition.to( seis, {alpha = 1 , delay = 5000} )
        transition.to( tres, {alpha = 0, delay = 7000} )
        transition.to( cuatro, {alpha = 0, delay = 7000} )
        transition.to( cinco, {alpha=0, delay = 7000} )
        transition.to( seis, {alpha = 0 , delay = 7000} )
        transition.to( siete, {alpha = 1 , delay = 7000} )----------
        transition.to( ocho, {alpha = 1 , delay = 9000} )
        transition.to( nueve, {alpha = 1 , delay = 11000} )
        transition.to( quince, {alpha = 1 , delay = 15000} )
        transition.to( dieciseis, {alpha = 1, delay = 18000} )
        transition.to( diecisiete, {alpha = 1, delay = 20000} )
        transition.to( dieciocho, {alpha = 1, delay = 22000} )
        transition.to( diecinueve, {alpha = 1, delay = 23000} )
        transition.to( veinte, {alpha =1, delay = 25000} )
        transition.to( veinte1, {alpha = 1, delay = 27000} )
        transition.to( veinte2, {alpha=1,delay=28000} )
        transition.to( veinte3, {alpha=1,delay=31000} )
        transition.to( veinte4, {alpha = 1, delay = 33000} )
        transition.to( veinte5, {alpha = 1, delay = 35000} )
        transition.to( veinte6, {alpha = 1, delay = 37000} )
        transition.to( veinte7, {alpha = 1, delay = 38000} )
        transition.to( veinte8, {alpha=1,delay=39000} )
        transition.to( veinte9, {alpha = 1, delay = 40000} )
        transition.to( treinta, {alpha = 1, delay = 41000} )
        transition.to( treinta1, {alpha = 1, delay = 43000} )
        transition.to( treinta2, {alpha = 1, delay = 45000} )
        transition.to( treinta2, {alpha = 0, delay = 50000} )
        transition.to( treinta3, {alpha = 1, delay = 50000} )
        transition.to( treinta4, {alpha = 1, delay = 55000} )
        transition.to( treinta5, {alpha = 1, delay = 60000} )
        transition.to( treinta3, {alpha = 0, delay = 60000} )
        transition.to( treinta6, {alpha = 1, delay =60500} )
        transition.to( treinta7, {alpha = 1, delay = 63500} )

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
        composer.removeScene( "panel19y20" )
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