Nombre: Corona SDK Starter Template
===================================

Autor: YoFriki.com Iglugo.com

Descripción: Plantilla muy básica para empezar a trabajar con aplicaciones en CORONA SDK, utilizamos la librería COMPOSER para el cambio de escena, libreía común para la gestión de botones, volumen y publcidad con Admob, y otra de ejemplo para que vayan creando las funciones de creación y purga de elemenos. Plantilla desarrollada por YoFriki.com e Iglugo.com, si quieres más tutoriales no dejen de visitarnos ... :)

Requisitos: Versión de Corona SDK Starter (gratuita) build:  v2014.2189

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






