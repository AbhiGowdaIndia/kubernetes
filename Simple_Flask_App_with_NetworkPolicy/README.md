# This is Simple Flask app example with "Dockerfile, Deployment file, Service file, NetworkPolicy and Ingress".

* **frontend.py**
 
  * Runs a Flask API on port 5000  
  * Calls backend service URL inside Kubernetes → http://backend:5001/  
  * Acts as public-facing API  

* **backend.py**
 
  * Backend logic layer  
  * Runs on port 5001  
  * Calls DB service: http://db:5002/   

* **db.py**
 
  * Simulated DB service (for learning purpose)  
  * Runs on port 5002  
  * No real database; only responds with a message  

* **Dockerfile**

  * This is our Dockerfile, used to Create a Docker image for your Flask app.

  * Build the Docker image   
    **docker build -t frontend:latest .** # do the same for other API's also ( backend and db )

  * Tag the image for your Docker repository  
    **docker tag frontend:latest yourrepo/frontend:latest**  # do the same for other API's also ( backend and db )

  * Log in to Docker Hub
    **docker login**

  * Push the image to Docker Hub
    **docker push yourrepo/frontend:latest**  # do the same for other API's also ( backend and db )

* **Deployment.yaml**

  * **Defines Pods + ReplicaSets for all 3 tiers:**
    * frontend Deployment, backend Deployment, db Deployment
    * Each Deployment:
      * Runs 1 replica
      * Uses Docker image you created
      * Exposes container port
  * *** **kubectl apply -f Deployment.yaml**

* **Service.yaml**

  * Services give stable DNS names so apps can reach each other
  * **kubectl apply -f Service.yaml**

* **Ingress.yaml**

  * Expose only frontend to external world.
  * Requests to your domain go to frontend service
  * Backend and DB remain internal only
  * **kubectl apply -f Ingress.yaml**

* 






