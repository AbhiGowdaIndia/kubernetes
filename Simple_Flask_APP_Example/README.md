# This is Simple Flask app example with "Dockerfile, Deployment file, Service file and Ingress".

* **app.py** File
  
  * This is our Flask application code.   
  * Defines three API endpoints: /a, /b, and /c.  
  * Runs the app on 0.0.0.0:5000 so that Kubernetes pods can expose it externally.

* **Dockerfile**

  * This is our Dockerfile, used to Create a Docker image for your Flask app.

  * Build the Docker image   
    **docker build -t proj1:latest .**

  * Tag the image for your Docker repository  
    **docker tag proj1:latest yourdockerhubusername/proj1:latest**

  * Log in to Docker Hub
    **docker login**

  * Push the image to Docker Hub
    **docker push yourdockerhubusername/proj1:latest**

* **Deployment.yaml**

  * Deployment manages pods for your app: scaling, updates, and self-healing.  
  * replicas: 2 → Kubernetes will maintain 2 pods running.  
  * selector & labels → connect Deployment to the Service.  
  * containerPort: 5000 → port your Flask app listens to inside the pod.  
  * **kubectl apply -f Deployment.yaml**

* **Service.yaml**

  * Exposes your pods internally in the Kubernetes cluster.  
  * Maps port 80 on the Service to port 5000 on the pods.  
  * type: ClusterIP → accessible only inside the cluster (Ingress will expose externally).  
  * selector: app: proj1 → selects pods created by the Deployment.  
  * **kubectl apply -f Service.yaml**

* **Ingress.yaml**

  * Exposes your Service to external traffic.  
  * Routes requests to proj1.example.com → / → proj1-svc.  
  * ingressClassName: nginx → uses NGINX Ingress Controller.  
  * Handles path-based routing and can also be extended for TLS/HTTPS.  
  * **kubectl apply -f Ingress.yaml**

### How all files work together

  * **app.py** → Flask code running on port 5000.

  * **Dockerfile** → containerizes the app.

  * **Deployment** → runs multiple pods with the app container.

  * **Service** → exposes pods internally on port 80.

  * **Ingress** → exposes the Service externally via a host URL.

  * #### Flow of traffic:

    * **Browser -> Ingress (proj1.example.com) -> Service (proj1-svc:80) -> Pods (Flask app:5000)**
