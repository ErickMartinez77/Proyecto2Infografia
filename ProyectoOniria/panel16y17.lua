local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local uno
local ocho 
local nueve 
local diez  
local once 
local doce
local trece
local catorce
local quince
local dieciseis
local diecisiete
local dieciocho
local diecinueve
local veinte
local veintiuno
local fondo16
local fondo17
local suspensoaudio = audio.loadSound("tension.mp3") 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
function irDerecha(event)
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
function irIzquierda(event)
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

    fondo16 = display.newImageRect(grupo_fondo,"/PANEL 16 Y 17/fondo16.png", CW+100, CH )
    fondo16.x = CW/2
    fondo16.y = CH/2
    fondo16.alpha = 1

    fondo17 = display.newImageRect(grupo_fondo,"/PANEL 16 Y 17/fondo17.png", CW+100, CH )
    fondo17.x = CW/2
    fondo17.y = CH/2
    fondo17.alpha = 0

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

    uno = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/1.png", 400, 200 )
    uno.x = CW+240
    --uno.x = -240
    uno.y = CH*0.60


    ocho =display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/8.png", 25, 70 )
    ocho.x = CW*0.82
    ocho.y = CH*0.54
    ocho.alpha = 0

    dos = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/1.png", 400, 200 )
    dos.x = CW+240
    --dos.x = -240
    dos.y = CH*0.60

    nueve = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/9.png", 60, 30 )
    nueve.x = CW*0.75
    nueve.y = CH*0.43
    nueve.alpha = 0

    diez = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/10.png", 60, 30 )
    diez.x = CW*0.85
    diez.y = CH*0.35
    diez.alpha = 0

    once = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/11.png", 60, 30 )
    once.x = CW*0.75
    once.y = CH*0.33
    once.alpha = 0

    doce =display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/12.png", 30, 70 )
    doce.x = CW*0.86
    doce.y = CH*0.54
    doce.alpha = 0

    trece = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/13.png", 200, 100 )
    trece.x = CW*0.86
    trece.y = CH*0.20
    trece.alpha = 0

    catorce = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/14.png", 70, 100 )
    catorce.x = CW*0.65
    catorce.y = CH*0.55
    catorce.alpha = 0

    quince = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/15.png", 200, 100 )
    quince.x = CW*0.86
    quince.y = CH*0.20
    quince.alpha = 0

    dieciseis = display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/16.png", 70, 100 )
    dieciseis.x = CW*0.65
    dieciseis.y = CH*0.55
    dieciseis.alpha = 0

    diecisiete =display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/17.png", 30, 50 )
    diecisiete.x = CW*0.90
    diecisiete.y = CH*0.54
    diecisiete.alpha = 0

    dieciocho =display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/18.png", 130, 150 )
    dieciocho.x = CW*0.75
    dieciocho.y = CH*0.25
    dieciocho.alpha = 0

    diecinueve=display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/19.png", 40, 50 )
    diecinueve.x = CW*0.30
    diecinueve.y = CH*0.49
    diecinueve.alpha = 0

    veinte =display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/20.png", 140, 120 )
    veinte.x = CW*0.20
    veinte.y = CH*0.25
    veinte.alpha = 0

    veintiuno=display.newImageRect( grupo_intermedio, "/PANEL 16 Y 17/21.png", 40, 80 )
    veintiuno.x = CW
    veintiuno.y = CH*0.65
    veintiuno.alpha = 0
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
        transition.to( uno, {x=-240, delay = 4000, time = 4000} )
        transition.to( fondo16, {alpha=0, delay = 7000} )
        transition.to( fondo17, {alpha=1, delay = 8000} )
        transition.to( dos, {x=-240, delay = 10000, time = 4000} )
        transition.to( ocho, {alpha = 1, delay = 12000} )
        transition.to( nueve, {alpha = 1, delay = 13000} )
        transition.to( diez, {alpha = 1, delay = 13500} )
        transition.to( once, {alpha = 1, delay = 14000} )
        transition.to( nueve, {alpha = 0, delay = 16000} )
        transition.to( diez, {alpha = 0, delay = 16500} )
        transition.to( once, {alpha = 0, delay = 17000} )
        transition.to( ocho, {alpha = 0, delay = 17500} )
        transition.to( doce, {alpha = 1, delay = 18000} )
        transition.to( trece, {alpha = 1, delay = 19000} )
        transition.to( catorce, {alpha = 1, delay = 21000} )
        transition.to( trece, {alpha = 0, delay = 25000} )
        transition.to( catorce, {alpha = 0, delay = 25000} )
        transition.to( quince, {alpha = 1, delay = 23000} )
        transition.to( dieciseis, {alpha =1, delay = 24000} )
        transition.to( doce, {alpha= 0, delay =26000} )
        transition.to( quince, {alpha = 0, delay = 26000} )
        transition.to( dieciseis, {alpha = 0, delay = 26000} )
        transition.to( diecisiete, {alpha = 1, delay = 26000} )
        transition.to( dieciocho, {alpha = 1, delay = 28000} )
        transition.to( diecinueve, {alpha = 1, delay = 30000} )
        transition.to( dieciocho, {alpha = 0, delay = 31000} )
        transition.to( veinte, {alpha = 1, delay = 31000} )
        transition.to( diecisiete, {alpha = 0 , delay = 35000} )
        transition.to( veintiuno, {alpha = 1, delay = 35000} )

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
        composer.removeScene( "panel16y17" )
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