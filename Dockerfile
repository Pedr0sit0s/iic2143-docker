# Usa una imagen base oficial de Ruby
FROM ruby:3.1.0

# Instala dependencias del sistema
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Instala Bundler
RUN gem install bundler

# Crea el directorio de trabajo en el contenedor
WORKDIR /myapp

# Copia el archivo Gemfile y Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Instala las dependencias del proyecto
RUN bundle install

# Copia los archivos del proyecto en el contenedor
COPY . .

# Expone el puerto en el que la aplicación correrá
EXPOSE 3000

# Define el comando para correr la aplicación
CMD ["rails", "server", "-b", "0.0.0.0"]
