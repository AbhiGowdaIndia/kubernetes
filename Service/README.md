# This **Service** folder will contains **.yaml** or **.yml** file related to services ClusterIP and NodePort.

### Following are some of the **kubectl** commands normally used with **Service**.

  * Apply Service from YAML

    **kubectl apply -f service.yaml**

  * List All Services

    **kubectl get services**  
    **kubectl get svc**

  * Describe a Service

    **kubectl describe service \<service-name>**  
    Example: **kubectl describe svc nginx-service**

  * Create a Service (Imperative Command)

    **kubectl expose deployment \<deployment-name> --port=80 --target-port=8080 --type=ClusterIP**  
    Example: **kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=NodePort**

  * Get Service Details in YAML

    **kubectl get service \<service-name> -o yaml**  
    Example: **kubectl get svc nginx-service -o yaml**

  * Get Services Across All Namespaces

    **kubectl get svc -A**

  * Delete a Service

    **kubectl delete service \<service-name>**   
    Example: **kubectl delete svc nginx-service**

  * Get Endpoints of a Service

    **kubectl get endpoints \<service-name>**   
    **kubectl get endpoints nginx-service**

  * To access a Pod or enter inside a pod

    **kubectl exec -it \<pod-name> -- bash**   
    **kubectl exec -it \<pod-name> bash**

  * To enter inside a container in particular pod

    **kubectl exec pod -it -c \<container-name> /bin/bash**
