# Docker IIC2143

Este proyecto configura un entorno de desarrollo Ruby on Rails utilizando Docker. Sigue estos pasos para configurar y ejecutar el proyecto.

## Requisitos Previos

- Docker instalado en tu máquina.
- Docker Compose instalado en tu máquina.

## Instrucciones de Configuración

### 1. Clona el Repositorio

```sh
git clone <https://github.com/Pedr0sit0s/iic2143-docker.git>
cd <iic2143-docker>
```

### 2. Configura las Variables de Entorno

En el archivo .env en el directorio raíz del proyecto asegúrate de reemplazar myuser y mypassword con tus credenciales de PostgreSQL.

### 3. Construir y levantar los contenedores

Ejecuta los siguientes comandos para construir y levantar los contenedores:

```sh
docker-compose build
docker-compose up -d
```

### 4. Instalar Dependencias y Crear la Base de Datos

Ejecuta los siguientes comandos para instalar las dependencias y crear la base de datos:


```sh
docker-compose run web bundle install
docker-compose run web rake db:create
```

### 5. Iniciar el Servidor

Levanta el servidor con el siguiente comando:

```sh
docker-compose up
```

### 6. Acceder a la Aplicación
Abre tu navegador y dirígete a http://localhost:3000. Deberías ver la página de bienvenida de Ruby on Rails.

