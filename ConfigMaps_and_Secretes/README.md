# This **ConfigMaps_and_Secretes** folder will contains **.yaml** or **.yml** file related to COnfigMap and Secrete.

  **ConfigMap is used to store non-confidential configuration data in key–value format.**  
  **Used for Store application configuration (URLs, filenames, environment configs), Store non-sensitive variables shared across Pods and Externalize configuration so you don't bake them into container images.**

### Following are some of the **kubectl** commands normally used with **COnfigMap and Secrete**.  

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

    



