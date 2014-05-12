local composer = require( "composer" )
local personal_lib = require( "personal_lib" )


local scene = composer.newScene()

-- -----------------------------------------------------------------------------------------------------------------
local function comenzar()
	composer.gotoScene("menu", "fade", 840)
end


-- "scene:create()"
function scene:create( event )

	local sceneGroup = self.view	
    objeto = personal_lib.create_splash()
	sceneGroup:insert(objeto)
  
end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        
		
    elseif ( phase == "did" ) then
       splashtimer=timer.performWithDelay(1240,comenzar, 1)
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        timer.cancel(splashtimer)
    elseif ( phase == "did" ) then
        
    end
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )


-- -------------------------------------------------------------------------------

return scene