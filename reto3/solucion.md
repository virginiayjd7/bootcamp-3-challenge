# Clase 4 - Docker

### Solucion Ejercicio 3

## 3.- Crea un contenedor con las siguientes especificaciones:
	a. Utilizar la imagen base NGINX haciendo uso de la version nginx:alpine
	b. Al acceder a la URL localhost:8080/index.html aparecer el mensaje HOMEWORK 1
	c. Persistir el fichero index.html en un volumen llamado static_content


### Paso 1: Crear el fichero Dockerfile. Las instrucciones que se han utilizado para el fichero son:
```
	- Utilizar la imagen de nginx con la version requerida
	FROM nginx:alpine
	
	- Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor
	COPY /src/index.html /usr/share/nginx/html
```	
 ![](1.png)

 ![](2.png)

### Paso 2: Crear un volumen 'static_content' en el CLI de Docker mediante la siguiente instruccion
![](3.png)

	
### Paso 3: Construir la imagen del contenedor. El nombre de la imagen es 'bootcamp_nginx'
![](5.png)
	
### Paso 4: Crear el contenedor	con nombre 'bootcamp_container' utilizando la imagen construida en el paso 3
	- Mediante el parametro -v hacemos que el volumen 'static_content' creado en el paso 2 apunte al directorio del contenedor donde se encuentra el archivo index.html. De esta forma persistimos todo el contenido del directorio /usr/share/nginx/html del contenedor en el volumen
![](6.png)
	
	
### Paso 5: Acceder a la URL http://localhost/8080/index.html y comprobar que aparece la pagina deseada
![](7.png)

### Paso 6: Deploy to Registry DockerHub

- Recuerda que debes contar con una cuenta en https://hub.docker.com
- Logeate en docker-hub desde la terminal
- Ubicar el usuario de dockerhub, que con ese vas autheticarte
- Documentacion [Docker](https://docs.docker.com/engine/reference/commandline/login/)
```docker login````
```docker login -u "myusername" -p "mypassword" docker.io```
- tagear la imagen
```docker tag bootcamp_nginx roxsross12/bootcamp_nginx:v1.0.0 ```
![](8.png)
- Push en el registry
```dcoker push roxsross12/bootcamp_nginx:v1.0.0```
![](9.png)
- Listo

 
### Entregable:

- Armar una solucion.md y usando Markdown :

- Documentacion [Markdown](https://docs.github.com/es/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

- Crear Dockerfile

- Subir Registry DockerHub [Dockerhub](https://hub.docker.com/repository/docker/yjd7/bootcamp_nginx)