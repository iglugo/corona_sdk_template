-- hide device status bar
display.setStatusBar( display.HiddenStatusBar )

local composer = require( "composer" )

--Configuration
_G.modo_debug=true --If true, will show messages on console, muestra mensajes en consola
_G.modo_free=false --If true, will show ads, muestra Ads
_G.admob_id="ca-app-pub-1234567890123456789012345678" --ID for Admob ads

--Función para comprobar el uso de memoria
local function checkMemory()
   collectgarbage( "collect" )
   local memUsage_str = string.format( "MEMORY = %.3f KB", collectgarbage( "count" ) )
   print( memUsage_str, "TEXTURE = "..(system.getInfo("textureMemoryUsed") / (1024 * 1024) ) )
end


--Si estamos trabajando en modo debug, mostraremos por pantalla el uso de memoria cada 15 segundos
if _G.modo_debug==true then
	timer.performWithDelay( 15000, checkMemory, 0 )
end

local options = {
    effect = "fade",
    time = 840,
   
}
composer.gotoScene( "splash", options )