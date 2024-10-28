# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos y el script Python al contenedor
COPY requerimentos.txt requerimentos.txt
COPY extraccion_basededatos.py extraccion_basededatos.py

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requerimentos.txt

# Comando para ejecutar el script
CMD ["python", "extraccion_basededatos.py"]
