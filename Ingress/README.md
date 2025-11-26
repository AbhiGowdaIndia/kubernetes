# This **Ingress** folder will contains **.yaml** or **.yml** file related to **ingress controller**.

* **An Ingress Controller is the component that implements the rules defined in your Ingress resources and actually manages the traffic coming from outside the cluster.**
* **This is a third party controllers(tools) which we need to install it one time in our cluster as controller.**

* **Install NGINX Ingress Controller using Helm (Recommended)** (befor this we need to install helm, if we not yet installed)
  
  * Add the ingress-nginx Helm repo

    **helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx**
    **helm repo update**

  * Install NGINX Ingress Controller

    **helm install my-ingress ingress-nginx/ingress-nginx -n ingress-nginx --create-namespace**

  * Verify
    
    **kubectl get pods -n ingress-nginx**  
    **kubectl get svc -n ingress-nginx**

* **Install Using Official YAML (kubectl apply)**

  * RUn:

    **kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml**

  * Verify

    **kubectl get pods -n ingress-nginx**
    **kubectl get svc -n ingress-nginx**

* To create Deployment and service
  
  **kubectl apply -f Deploys_and_services.yaml**

  * Deployments : Both have 2 replicas for basic redundancy.  
    * app1-deployment → nginx  
    * app2-deployment → httpd  

  * Services  
    * app1-service → routes traffic to app1 pods  
    * app2-service → routes traffic to app2 pods

* To run Ingress ( with path based routing)
  
  **kubectl appy -f Ingress_Resource.yaml**

  * Ingress  
    * /app1 → app1-service:80  
    * /app2 → app2-service:80

  * Ingress Controller  
    * Make sure NGINX Ingress Controller is installed and running (ingressClassName: nginx).


