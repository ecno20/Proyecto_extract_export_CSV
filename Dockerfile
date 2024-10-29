# Usa una imagen base de Python
#FROM python:3.9-slim
# Establece el directorio de trabajo dentro del contenedor
#WORKDIR /app
# Copia el archivo de requerimientos y el script Python al contenedor
#COPY requerimentos.txt requerimentos.txt
#COPY extraccion_basededatos.py extraccion_basededatos.py
# Instala las dependencias necesarias
#RUN pip install --no-cache-dir -r requerimentos.txt
# Comando para ejecutar el script
#CMD ["python", "extraccion_basededatos.py"]
#
#Segunda versión
#
# Usa una imagen base de Python
#FROM python:3.9-slim
# Establece el directorio de trabajo dentro del contenedor
#WORKDIR /app

# Copia el archivo de requerimientos al contenedor
#COPY requerimientos.txt /app/requerimientos.txt

# Instala las dependencias necesarias
#RUN pip install --no-cache-dir -r requerimientos.txt

# Copia el script Python al contenedor
#COPY src/extraccion_basededatos.py /app/extraccion_basededatos.py

# Comando para ejecutar el script
#CMD ["python", "extraccion_basededatos.py"]
#
#Tercera versión (incluye la base de datos en el Dockerfile)

# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos al contenedor
COPY requerimientos.txt /app/requerimientos.txt

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requerimientos.txt

# Copia el script Python al contenedor
COPY src/extraccion_basededatos.py /app/extraccion_basededatos.py

# Copia la base de datos al contenedor
COPY personal.db /app/personal.db

# Comando para ejecutar el script
CMD ["python", "extraccion_basededatos.py"]

