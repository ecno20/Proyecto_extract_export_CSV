# Proyecto_extract_export_CSV
Proyecto de Extracción de Datos y Exportación a CSV

Este proyecto está diseñado para extraer datos de una base de datos SQLite y exportarlos a un archivo CSV utilizando un contenedor Docker.

## Estructura del Proyecto

- `extraccion_basededatos.py`: El script de Python que extrae los datos y los exporta a CSV.
- `Dockerfile`: El archivo Docker que define cómo construir la imagen del contenedor.
- `requerimientos.txt`: Lista de dependencias necesarias para ejecutar el script.

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
docker build -t extract_to_CSV .
```
### 3. Ejecutar el contenedor

```bash
docker run --name python_to_CSV extract_to_CSV
```
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
