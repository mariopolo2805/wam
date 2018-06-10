# Prueba WAM - Mario Antonio Polo Daza

Se va a utilizar **Jekyll** como motor de templating para construir la landing planteada en `/assets`

[Servidor de prueba](https://wam-mario-antonio-polo-daza.herokuapp.com/)

## Instalación y Construcción

Paso a seguir para poder iniciar la aplicación:
 1. Instalar Ruby (v2.5.1): https://gorails.com/setup/ubuntu/16.04 (se ha usado la manera con rvm)
 2. Comprobar que se ha instalado junto con Ruby el paquete RubyGems ```gem -v```
 3. Instalar el paquete de desarrollo de Ruby: ```sudo apt-get install ruby-dev```
 4. Instalar Jekyll: https://jekyllrb.com/docs/installation/
 5. Instalar *bundle* con: ```gem install bundle```
 
Ahora en el directorio del proyecto:
 1. Instalar dependencias del proyecto con ```bundle install```
 2. Ejecutar la aplicación. Modos:
  - "jekyll serve": construye el proyecto y lo sirve en el puerto 4000
  - "jekyll build": únicamente construye el proyecto sin servirlo
