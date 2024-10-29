# Proyecto_extract_export_CSV
Proyecto de Extracción de Datos y Exportación a CSV

Este proyecto está diseñado para extraer datos de una base de datos SQLite y exportarlos a un archivo CSV utilizando un contenedor Docker.

## Estructura del Proyecto

- `extraccion_basededatos.py`: El script de Python que extrae los datos y los exporta a CSV.
- `Dockerfile`: El archivo Docker que define cómo construir la imagen del contenedor.
- `requerimientos.txt`: Lista de dependencias necesarias para ejecutar el script.

## Deploy
## Creating the image
This image is based on [linux/arm64](https://hub.docker.com/_/openjdk/tags?page=1&name=17) for Linux.
The complete specification of the image that contains the application is in the [Dockerfile](Dockerfile)
## Building the image.
Build the image using `docker` or `podman`, below the commands for using podman. More information on how to use it [here](https://podman.io/). The first version for a standard is frequently used `1.0.`


> [!Warning]
>  Don't forget to use your Hub's account to tag the image, because when pushing the image to the hub, the account is where it will be located.

`docker build -t ecno20/extract_to_CSV .`

## Requisitos
- Docker
- Python 3.9
- SQLite

## Instrucciones de Uso

### 1. Clonar el repositorio

```bash
git clone https://github.com/ecno20/Proyecto_extract_export_CSV.git
cd Escritorio/Docker/python
```
### 2.Construir la imagen Docker

```bash
docker build -t ecno20/extract_to_CSV .
```
### 3. Instrucción para Ejecutar el Contenedor
Para ejecutar el contenedor y montar un volumen para persistir el archivo CSV fuera del contenedor, usa la siguiente instrucción:
```bash
docker run --name python_to_CSV -v $(pwd)/output:/app/output ecno20/extract_to_CSV
```
### Explicación:
`--name python_to_CSV` : Nombre que se le da al contenedor.

`-v $(pwd)/output:/app/output` : Monta la carpeta output en tu máquina local al directorio /app/output en el contenedor. Esto permite que los archivos generados dentro del contenedor se almacenen de manera local.

`ecno20/extract_to_CSV` : Nombre de la imagen que estás ejecutando (para nuestro proyecto utilizamos ecno20/extract_to_CSV.

### Ver Logs de un Contenedor en Ejecución:

Si el contenedor ya está en ejecución, puedes ver los logs con el siguiente comando:

```bash
docker logs -f python_to_CSV
```
El flag `-f` (follow) te permite ver la salida en tiempo real

### Mantainer:
[ecno20/Jonathan Díaz](https://github.com/ecno20/)

[email](jdsmatemaster@gmail.com)

### Comandos en git:
El archivo CSV generado estará en el directorio principal del contenedor y puedes copiarlo a tu máquina local si es necesario.
   ```bash
   git init
   git add .
   git commit -m "Primera versión del proyecto"
   git remote add origin https://github.com/ecno20/Proyecto_extract_export_CSV.git
   git push -u origin master

```
### Opcional:
Configuración Inicial de Git: Si no lo has hecho ya, configura tu nombre de usuario y tu correo electrónico para Git. Abre una terminal y ejecuta:

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu_email@example.com"
```
### Inicio de Sesión en GitHub: 
El método más moderno y seguro para autenticarte con GitHub es utilizando un token de acceso personal (PAT) en lugar de una contraseña.

### 1. Creación del Token de Acceso Personal:

* Ve a GitHub Tokens y crea un nuevo token.
* Dale un nombre descriptivo y selecciona los permisos que necesites (los básicos para repositorios suelen ser suficientes).
* Guarda el token en un lugar seguro.

### 2. Uso del Token en la Línea de Comandos: 
Cuando empujes (push) cambios por primera vez, Git te pedirá que ingreses tus credenciales. Ingresa tu nombre de usuario de GitHub y en lugar de una contraseña, pega tu token de acceso personal.
```bash
git push origin master
```

### 3. Git te pedirá:
```bash
Username for 'https://github.com': tu_usuario
Password for 'https://tu_usuario@github.com': (aquí pegas tu token)
```
### Guardar Credenciales Opcionalmente: 
Para evitar ingresar el token cada vez, puedes almacenar tus credenciales de manera segura utilizando el asistente de credenciales de Git:
```bash
git config --global credential.helper store
```

### Estructura del Proyecto
```bash
.
├── src
│   ├── extraccion_basededatos.py
│   └── crear_db.py
├── Dockerfile
├── LICENSE
├── README.md
├── requerimientos.txt
└── personal.db
```

### Reference Documentation
For further reference, please consider the following sections:

* [Overview of Docker Hub](https://docs.docker.com/docker-hub/)
* [Python Docs](https://docs.python.org/3/)
### Guides
The following guides illustrate how to use some features concretely:

* [Docker HUB API](https://docs.docker.com/docker-hub/api/latest/)
* [Python Tutorial](https://docs.python.org/3/tutorial/)
