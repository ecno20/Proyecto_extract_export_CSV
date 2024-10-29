import sqlite3

# Conectar a la base de datos (se creará si no existe)
conexion = sqlite3.connect('personal.db')
cursor = conexion.cursor()

# Crear la tabla empleados
cursor.execute('''
    CREATE TABLE empleados (
        id INTEGER PRIMARY KEY,
        nombre TEXT NOT NULL,
        puesto TEXT NOT NULL,
        salario REAL NOT NULL
    )
''')

# Insertar algunos datos de ejemplo
empleados = [
    ('Juan Pérez', 'Desarrollador', 50000),
    ('Ana Gómez', 'Diseñadora', 45000),
    ('Luis Martínez', 'Gerente', 60000)
]

cursor.executemany('''
    INSERT INTO empleados (nombre, puesto, salario) 
    VALUES (?, ?, ?)
''', empleados)

# Guardar los cambios y cerrar la conexión
conexion.commit()
conexion.close()

print("Base de datos y tabla 'empleados' creadas con éxito.")
