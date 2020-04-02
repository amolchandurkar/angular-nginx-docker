# angular-nginx-docker
This project shows how to contanarize Angular application with multistage docker build process. 

## Running the Project locally using CLI
Build Angular application, containerize it with docker and nginx and Run it in container.
1. Install the Angular CLI:
    `npm install -g @angular/cli`
2. Run `npm install` at the root of this project
3. Run `ng serve -o`

## Running the Project Using Docker Containers
1. Install the Angular CLI:
    `npm install -g @angular/cli`
2. Run `npm install` at the root of this project
3. Build the project:
    `ng build`
4. Build the image:
    `docker build -t angular-nginx -f angular-nginx.prod.dockerfile .`
5. Run the Docker container:
    `docker run -p 8080:80 angular-nginx`
6. Visit `http://localhost:8080`