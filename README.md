Nombre: Corona SDK Starter Template
===================================

Author/Autor: YoFriki.com Iglugo.com

Description: Basic corona SDK starter template to start your project!

MAIN FEATURES
- Composer for scene management
- Admob preconfigured, just insert Admob ID and enable set _G.modo_free=true in main.lua
- All buttons mapped, and android keys emulated with h: home, +: Vol up, -: Vol down, ESC: back
- Debug messages shown in console controlled by flag  _G.modo_debug=true / false, to add new messages on app use this syntax: if _G.modo_debug==true then print("example debug message") end
- Shows in console memory usage if _G.modo_debug==true 
- 2 libraries included: common_libs: to control volume, volume control skin, keys, ads
                                  personal_libs: Example personal library for future reference
- Windows script added "corona.bat" which automatically installs apk file located in same directory of the cript, and then starts a debugger to show debugging messages of your app on the computer meanwhile the usb cable maintains plugged.


Descripción: Plantilla básica para corona SDK starter para iniciar tus proyectos!

CARACTERÍSTICAS PRINCIPALES
- Gestión de escenas con composer
- Publicidad Admob preconfigurado, solo insertar tu ID de Admob y activar _G.modo_free=true en main.lua
- Todas las teclas mapeadas, Las teclas android han sido emuladas con el teclado h: home, +: Vol up, -: Vol down, ESC: back
- Los mensajes de debugeado mostrados en consola están controlados mediante el flag:  _G.modo_debug=true / false en main.lua, para añadir mensajes nuevos de debugeado utilizar la siguiente sintaxis: if _G.modo_debug==true then print("msg ejemplo") end
- Muestra el uso de memoria en consola si: _G.modo_debug==true 
- 2 librerias incluidas: common_libs: control de volumen, volume control skin, teclas, publicidad
                                  personal_libs: Ejemplo de librería personal, puesto como referencia
- Añadido script de Windows "corona.bat" que instalará un archivo con extensión APK a un dispositivo android conectado por USB, posteriormente se visalizará en el PC los mensajes de debuggeo de la aplicacón siempre y cuando se mantenga el móvil conectado por cable al ordenador.

Requirements/Requisitos: Corona SDK Starter (gratuita) build:  v2014.2189

Ver: 2.0


Archivos:
---------

- main.lua: Configuración de parametros generales de la aplicación
- splash.lua: Pantallazo de creditos de inicio
- menu.lua: Carga elementros del menú principal como funciones principales, (publicidad, mapeado de botones etc..)
- common_libs: Librerías comunes para gestionar: teclas del móvil, control de volumen y publicidad
- personal_lib.lua: Librería de ejemplo para entender el encapsulado en Corona SDK
- menu1.lua y menu2.lua: archivos de ejemplo
- corona.bat: Instalador del APK en móvil

Como trabajar con la plantilla
------------------------------

En el archivo **main.lua** configurar los parametros que necesite

Si necesitas sacar parametros por pantalla hazlo de la siguiente forma:

    if _G.modo_debug==true then	print("ejemplo de impresión en consola") end

En el simulador podrás utilizar las siguientes teclas en el teclado para simular las del móvil:
- m --> Menu
- + -> Volumen Up
- - --> Volumen Down
- ESC --> Back

También puedes mapear el resto de las teclas en **common_libs.lua**

Una vez que hayas generado el APK puedes copiar el archivo en la misma carpeta que tengas el archivo **Corona.bat**, esto instalará dicho archivo en el móvil android que tengas conectado al ordenador por USB (necesario Android SDK)

Para más información lee los comentarios en los archivos






