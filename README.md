"# MDA-Proyecto" 
En el archivo database.yml dentro de la carpeta de "config" se debe especificar el username y la contraseña, además del host y el puerto en el que estará alojada la base de datos para que se pueda conectar.

Inicializar la base de datos:(cmd) rails db:create db:migrate

Inicializar base de datos con valores del seeding:(cmd) "rails db:seed"

Inicializar proyecto: (cmd) rails s

Si es la primera vez en ejecutar el proyecto, es probable que se tengan que instalar las gemas específicas para el proyecto: (cmd) bundle install

VISTA CLIENTES:

En el localhost la vista por defecto es la vista para clientes

VISTA ADMINISTRADORES:

En la página inicial en la vista de clientes hay un botón con una llave en el menú superior. Para acceder a la vista de administrador, se deberá hacer click en el botón y rellenar con los siguientes valores para iniciar sesión:

email: admin@admin.com contraseña: !mda-g6

Una vez hecho el log-in saldrá el menú con los CRUD correspondientes, se podrá entrar desde el menú.

Los siguientes enlaces en la vista del cliente no estan disponibles de momento: Eventos, Política y Condiciones, ¿Quiénes somos?
Asi como tampoco las secciones de Inicio, Política y Condiciones, ¿Quiénes somos? de la vista del servidor.
