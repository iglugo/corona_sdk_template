local M1={};

-------------------------------------------------------------------------------------
--	FUNCIONES GESTIONAR BOTONES
-------------------------------------------------------------------------------------

function M1.botones()
	
	function boton_menu()
		local composer = require( "composer" )
		local current=composer.getSceneName( "current" )
		if (_G.modo_debug==true) then print("Escena actual: ", current) end
		
		if current ~= "menu" then
			anterior=composer.getSceneName( "previous" )
			composer.gotoScene( anterior, {effect="slideLeft", time=800} )			
		end
		
		return true
	end
	
	function boton_volver(event)
	
		function boton_volver_switch(event)
			if "clicked" == event.action then
				if 1 == event.index then	
				   os.exit()
				elseif 2 == event.index then
				--En caso de decir que No, no hacemos nada
				end
			end  
		end
	
		local composer = require( "composer" )
		local current=composer.getSceneName( "current" )
		if (_G.modo_debug==true) then print("Escena actual: ", current) end
		if current == "menu" then
			native.showAlert( "Return", "Leave the Roda?", { "Yes", "No" }, boton_volver_switch)
		else
			anterior=composer.getSceneName( "previous" )
			composer.gotoScene( anterior, {effect="slideLeft", time=800} )	
		end

		return true
	end


	function boton_volumen(vol)
		volumen=audio.getVolume()
		volumen=volumen+vol
		if volumen < 0 then volumen = 0 end
		if volumen > 1 then volumen = 1 end
		audio.setVolume(volumen)
		media.setSoundVolume( volumen )
		if (_G.modo_debug==true) then print("volumen actual: ", volumen) end
		barra = volumen*220
		  
		barra_volumen = display.newRect(display.contentWidth/2-50, display.contentHeight/2, 60, 158 )
		barra_volumen.anchorX=0
		barra_volumen.width=barra
		barra_volumen.strokeWidth = 0
		barra_volumen:setFillColor( 13/255,162/255,16/255 ) -- RGB (13,162,16)

		skin = display.newImage ("assets/img/volumen.png", display.contentWidth/2 , display.contentHeight/2)
  
		transition.to(skin, {alpha=0, delay=1500, time=10})
		transition.to(barra_volumen, {alpha=0, delay=1200, time=300})
     
		return true
	end
	
	function pulsado_boton(event)
		if (_G.modo_debug==true and event.phase == "up") then print ("se ha pulsado la tecla: "..event.keyName) end
		if (event.phase == "up") then
		    if event.keyName == "menu" or event.keyName == "m" then                
			boton_menu()
		    elseif event.keyName == "back" or event.keyName == "escape" then                
			boton_volver()
		    elseif event.keyName == "volumeUp" or event.keyName == "+" or event.keyName == "numPad+" then
		       boton_volumen(0.2)
		    elseif event.keyName == "volumeDown" or event.keyName == "-" or event.keyName == "numPad-" then
		       boton_volumen(-0.2)
		    else
			if (_G.modo_debug==true) then print("tecla no mapeada") end
		    end
		end
		return true
	end

	Runtime:addEventListener( "key", pulsado_boton )
end


-------------------------------------------------------------------------------------
--	FUNCIONES PUBLICIDAD
-------------------------------------------------------------------------------------

function M1.publicidad()
	local ads = require ("ads")

	local function adListener( event )
		if ( event.isError ) then
			if _G.modo_debug==true then	print("error loading ads") end
		end
	end

	admob_id=_G.admob_id
	ads.init( "admob", admob_id,  adListener )

	adType = "banner" 
	ads.show( adType, { x=0, y=0, interval=240 } )
	return true
end
	
-------------------------------------------------------------------------------------
--	FIN
-------------------------------------------------------------------------------------

return M1; 