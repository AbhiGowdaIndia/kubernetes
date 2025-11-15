# This **ConfigMaps_and_Secretes** folder will contains **.yaml** or **.yml** file related to COnfigMap and Secret.

## COnfigMap 

  **ConfigMap is used to store non-confidential configuration data in key–value format.**  
  **Used for Store application configuration (URLs, filenames, environment configs), Store non-sensitive variables shared across Pods and Externalize configuration so you don't bake them into container images.**

### Following are some of the **kubectl** commands normally used with **ConfigMap**.  

### Ways to Create ConfigMaps

  * From literal values

    **kubectl create configmap \<config-name> --from-literal=\<Key>=\<value>**  
    Example: **kubectl create configmap my-config --from-literal=APP_MODE=production --from-literal=TIMEOUT=30**

  * From a file

    **kubectl create configmap my-config --from-file=\<file-name>**  
    **kubectl create configmap my-config --from-file=app.properties**

    * app.properties contains bellow text  
      **APP_MODE=production**  
      **TIMEOUT=30**  

  * From a YAML manifest

    **kubectl apply -f configmap.yaml**

    **kubectl apply -f pod_with_configmap.yaml**

* To describe config map
  
  **kubectl describe configmap my-config**

* To get inside the pod to check weather the environment variables created or not

  **kubectl exec -it my-app -- bash**

    * Inside pod  
   
      **env**

## Secret

  **Secrets store confidential data (Base64 encoded) like Passwords, API keys, OAuth tokens, TLS certificates**

### Following are some of the **kubectl** commands normally used with **Secret**.  

### Ways to Create Secretes

  * From literal values

    **kubectl create secret generic \<secrete-name> --from-literal=\<key>=\<value> --from-literal=\<key>=\<value>**  
    **kubectl create secret generic db-secret --from-literal=username=admin --from-literal=password="P@ss123"**

  * From YAMLFrom YAML

    **kubectl apply -f secret.yaml**

    **kubectl apply -f pod_with_secret.yaml**

  * To describe config map
  
    **kubectl describe secret db-secret**

  * To get inside the pod to check weather the environment variables created or not

    **kubectl exec -it my-app -- bash**
    
      * Inside pod
      
        **env**

    



