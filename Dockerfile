# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de la aplicación al contenedor
COPY app.py /app

# Instala Flask, el framework que usaremos para crear la aplicación web
RUN pip install flask

# Expone el puerto 5000 (el que usaremos para la aplicación Flask)
EXPOSE 5000

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
