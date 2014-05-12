----------------------------------------------
--	LIBRERIAS
----------------------------------------------

local composer = require( "composer" )

--Librerías propias de la app
local personal_lib = require( "personal_lib" )

local scene = composer.newScene()



----------------------------------------------
--		ESCENA							--
----------------------------------------------

function scene:create( event )

    local sceneGroup = self.view	
	local objeto = personal_lib.create_menu_1()
	sceneGroup:insert(objeto)
 
end


function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
		
        
    elseif ( phase == "did" ) then
        
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
		
    elseif ( phase == "did" ) then
		
    end
end


function scene:destroy( event )

	local sceneGroup = self.view
    

end

----------------------------------------------
--		LISTENERS DE ESCENA					--
----------------------------------------------

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene