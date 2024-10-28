import sqlite3
import csv

def extraer_datos():
    # Conectar a la base de datos
    conexion = sqlite3.connect('personal.db')
    cursor = conexion.cursor()

    # Ejecutar la consulta
    cursor.execute("SELECT * FROM empleados")

    # Obtener los resultados
    empleados = cursor.fetchall()

    # Cerrar la conexión
    conexion.close()

    return empleados

def exportar_a_csv(empleados, nombre_archivo):
    with open(nombre_archivo, 'w', newline='') as archivo_csv:
        escritor_csv = csv.writer(archivo_csv)
        # Escribir la cabecera (ajustar según las columnas de tu tabla)
        escritor_csv.writerow(['ID', 'Nombre', 'Puesto', 'Salario'])
        # Escribir los datos
        escritor_csv.writerows(empleados)

# Ejecutar la función y mostrar los resultados
datos = extraer_datos()
for empleado in datos:
    print(empleado)

# Exportar los datos a un archivo CSV
exportar_a_csv(datos, 'empleados.csv')
print("Datos exportados a empleados.csv")
