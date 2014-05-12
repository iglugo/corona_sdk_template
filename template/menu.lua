local composer = require( "composer" )

--Librerías propias de la app
local personal_lib = require( "personal_lib" )

--Cargando librerías comunes para gestionar botonees
local common_libs = require( "common_libs" )

local scene = composer.newScene()


--Inicialización de funciones que se ejecutarán en toda la aplicación
if (_G.modo_free==true) then common_libs.publicidad() end
common_libs.botones()

--ESCENA-


function scene:create( event )
	--Creamos elementos de la escena
	
    local sceneGroup = self.view	
	objeto = personal_lib.create_menu()
	sceneGroup:insert(objeto)
	
end



function scene:show( event )
	--Empezamos la animación, música
    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        personal_lib.enter_menu()
    elseif ( phase == "did" ) then
        
    end
end


-- "scene:hide()"
function scene:hide( event )
	--Paramos la animación, música
    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
		personal_lib.exit_menu()
    elseif ( phase == "did" ) then
 
    end
end



-- "scene:destroy()"
function scene:destroy( event )
	--Se ejecuta si se necesita liberar memoria
	local sceneGroup = self.view
		personal_lib.destroy_menu()

end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene