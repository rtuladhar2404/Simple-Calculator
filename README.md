# Simple-Calculator
This is a basic calculator web application built with HTML, CSS, and JavaScript. It allows users to perform basic arithmetic operations like addition, subtraction, multiplication, and division. The project is deployed using Nginx in a Docker container and can be run locally or deployed to a Kubernetes cluster.

Technologies Used
 - HTML 
 - CSS
 - JavaScript
 - Nginx
 - Docker
 - Kubernetes

Building the Docker Image
 1. Prerequisites:
    - Docker should be install and running on the local machine 
    - Docker Hub Account (It is used to store, share and manage the Docker container images)

 2. Building the image:
    - Navigate to project folder through terminal(for linux user) or command prompt(for windows user)
    - Run the following command to build the Docker Image:
      -  docker run -t rtuladhar2404/calculator-project . (rtuladhar2404 is my docker hub username and calculator-project is the        docker images name, you can change it as per your requirement)

 3. Pushing the Docker Image to DockerHub
    - Login to your DockerHub through terminal with following command
        - docker login
    - Pushing the image to Docker Hub
        docker push rtuladhar2404/calculator-project

Deploying the project in Kubernetes
 1. Creating the yaml file with script to create namespace, deploy section to define the type of Kubernetes resource and service    to define the service along with ports to use.

 2. Apply the yaml file with kubernetes command
    - kubectl apply -f calculator-project.yaml
    
 3. Access the application
    - Open the browser and go to http://192.168.56.21:32000 to access the calculator running in the Kubernetes cluster.

