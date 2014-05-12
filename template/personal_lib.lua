local M2={};

local composer = require( "composer" )

--Creamos mano empleada para los instrumentos
local mano = display.newImage ("assets/img/hand.png", posx , posy)
--Hacemos la mano invisible
mano.alpha=0

-------------------------------
-- FUNCIONES COMUNES
-------------------------------

function M2.show_mano(posx, posy)

   mano.x=posx;mano.y=posy;mano.alpha=1
   transition.to(mano, {alpha=0, time=1800})
   return true
   
 end
 
 
  
-------------------------------
-- FUNCIONES PARA SPLASH
-------------------------------
 
function M2.create_splash ()
	local grupo = display.newGroup()
	local background = display.newImage ("assets/img/splash_screen.png" , display.contentCenterX,display.contentCenterY)
	grupo:insert(background)
	return grupo
end
 
 
 
-------------------------------
-- FUNCIONES MENU PRINCIPAL
-------------------------------
 
function M2.create_menu (event)
	
	
	local function menu_1(event)
		M2.show_mano(event.x, event.y)
		audio.play (fx_menu)
		composer.gotoScene( "menu_1", {effect="slideLeft", time=400} )
		return true
	end
	
	local function menu_2(event)
		M2.show_mano(event.x, event.y)
		audio.play (fx_menu)
		composer.gotoScene( "menu_2", {effect="slideLeft", time=400} )
		return true
	end
	

	--Como normal general, los audios los declaramos NO LOCALES, ya que no se pueden agregar a un grupo
	-- y necesitariamos liberarlo desde otras funciones cuando ya no nos haga falta
	--Los demás elementos lo declaramos como variables LOCALES, que se 
	--lo devolvemos a la escena dentro de un grupo, y la librería "composer" se ocupará en liberarlo cuando elimine la escena
	
	fx_menu = audio.loadSound ("assets/fx/fx10.wav")

	local background = display.newImage ("assets/img/menu_background.png", display.contentCenterX ,display.contentCenterY)
	
	local link_1 = display.newImage ("assets/img/item-1.png", display.contentCenterX ,350)
	local link_2 = display.newImage ("assets/img/item-2.png", display.contentCenterX ,450)

	link_1:addEventListener ("tap", menu_1)
	link_2:addEventListener ("tap", menu_2)

	local grupo = display.newGroup()		
	grupo:insert(background)
	grupo:insert(link_1)
	grupo:insert(link_2)

	return grupo
	
end

function M2.enter_menu (event)
	music_intro = audio.loadSound ("assets/fx/intro_menu.mp3")
	audio.play(music_intro)
	return true
end



function M2.exit_menu (event)
	--paramos la música
	audio.stop()
	return true
end


function M2.destroy_menu (event)
	audio.dispose(fx_menu)
	audio.dispose(music_intro)
	return true
end


-------------------------------
-- FUNCIONES MENU
-------------------------------
function M2.create_menu_1 (event)
	local background = display.newImage ("assets/img/bg_menu1.png", display.contentCenterX ,display.contentCenterY)
	local grupo = display.newGroup()
	grupo:insert(background)
	return grupo
end


-------------------------------
-- FUNCIONES MENU 2
-------------------------------

function M2.create_menu_2 (event)
	local background = display.newImage ("assets/img/bg_menu2.png", display.contentCenterX ,display.contentCenterY)
	local grupo = display.newGroup()
	grupo:insert(background)
	return grupo
end

-------------------------------------------------------------------------------------
--	FIN LIBRERIA
-------------------------------------------------------------------------------------
return M2