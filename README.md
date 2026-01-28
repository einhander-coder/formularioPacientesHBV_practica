# formularioPacientesHBV_practica
Proyecto para optar al cargo de soporte y desarrollo HBV Valdivia

26 de Enero de 2026

Prueba Técnica para postulación al cargo de Soporte y Desarrollo unidad HBV Valdivia

Aplicación Practica - Item 2
Hospital Base Valdivia

Autor: Frantz Hinrichsen ©2026

-----------------------------------------------------------------------

Este README representa las instrucciones en base a lo desarrollado y las partes
que constituyen el proyecto en su totalidad, siendo en este caso infraestructura de 
desarrollo, guias de estilo, base de datos y adicionales asociados para su entrega.

AVISO: Cualquier tipo de replicación, plagio o copia legible de este comprimido sin permiso o cita del autor, esta previamente sujeto a delitos o penas incurridas acorde a la ley 17.336 de Propiedad Intelectual.


-----------------------------------------------------------------------

Estructura del Proyecto

formulariohbvSGP

1. Estructura MVC:

Modelo: PacienteModel.php - Interacción BD

Vista: Views/pacientes/*.php - Interfaz Bootstrap 5

Controlador: Pacientes.php - Lógica aplicación

2. Vistas

app/Views/
│
├── 📁 layouts/                    # PLANTILLAS REUTILIZABLES
│   ├── header.php               # Head HTML + metatags + CSS
│   ├── navbar.php               # Barra de navegación
│   ├── footer.php               # Pie de página + scripts
│   └── alerts.php               # Mensajes de alerta
│
├── 📁 pacientes/                 # VISTAS DE PACIENTES (CRUD)
│   ├── listar.php              # Listado con tabla + filtros
│   ├── crear.php               # Formulario creación
│   ├── editar.php              # Formulario edición
│   ├── ver.php                 # Vista detallada individual
│   └── partials/               # Fragmentos reutilizables
│       ├── _form.php           # Formulario compartido
│       ├── _table.php          # Tabla de pacientes
│       └── _stats.php          # Estadísticas
│
├── 📁 home/                     # PÁGINAS ESTÁTICAS
│   ├── index.php               # Página de inicio
│   ├── about.php               # Acerca de
│   ├── contact.php             # Contacto
│   ├── help.php                # Ayuda
│   └── privacy.php             # Política de privacidad
│
├── 📁 errors/                   # PÁGINAS DE ERROR
│   ├── 404.php                 # Error 404
│   └── 500.php                 # Error 500
│

# Sistema de Gestión de Pacientes

## Descripción
Sistema web para gestión de pacientes desarrollado con CodeIgniter 4, Bootstrap 5 y MySQL.

## Características
- ✅ CRUD completo de pacientes
- ✅ Validaciones de formulario
- ✅ Generación de reportes PDF
- ✅ Interfaz responsiva con Bootstrap
- ✅ Estructura MVC organizada


3. TECNOLOGÍAS USADAS:
Backend: CodeIgniter 4 (PHP 8.1+)

Frontend: Bootstrap 5 + JavaScript

Base datos: MySQL 8.0 (puerto 3306)

Servidor: PHP Built-in Server (php spark serve)

4. CARACTERÍSTICAS IMPLEMENTADAS:
✅ CRUD completo pacientes

✅ Validación cliente/servidor

✅ Diseño responsive Bootstrap 5

✅ Paginación y búsqueda

✅ Manejo de sesiones y mensajes

✅ Estructura organizada MVC

✅ Base de datos con datos de muestra

✅ Layouts reutilizables


## Requisitos
- Docker y Docker Compose ( en pruebas )
- O PHP 8.1+, MySQL 5.7+, Apache/NginX

### 1. Clonar repositorio
```bash
git clone [URL_DEL_REPOSITORIO]
cd hbvformularioPrueba


5. Configuración Base de Datos ( config_bdHBV.sql)

CREATE DATABASE IF NOT EXISTS hbv_pruebaformulario;
USE hbv_pruebaformulario;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    telefono VARCHAR(15),
    email VARCHAR(100),
    direccion TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO pacientes (nombres, apellidos, fecha_nacimiento, genero, documento_identidad, telefono, email, direccion) 
VALUES 
('Juan', 'Pérez', '1990-05-15', 'Masculino', '12345678', '555-1234', 'juan@email.com', 'Av. Principal 123'),
('María', 'Gómez', '1985-08-22', 'Femenino', '87654321', '555-5678', 'maria@email.com', 'Calle Secundaria 456');

3. Configurar variables de entorno (CodeIgniter)
cp env .env
# Editar .env con credenciales de BD

6. Instalación de Dependencias

composer install dompdf/dompdf

7.configuracion de permisos (opcional)

chmod -R 755 writable

8. Acceso a la aplicación

php -S localhost:3306 -t public/

9.Ejecucion del Proyecto

# Iniciar servidor de desarrollo de CodeIgniter
php spark serve

# Opcional: especificar puerto diferente
php spark serve --port=8080

# Con host específico
php spark serve --host=localhost --port=8081

(Pantalla Principal)
# Ver en navegador: http://localhost:8080/pacientes/crear
