# This **Types_of_containers** folder will contains **.yaml** or **.yml** file with containes configuration for types containers**.

### Application Containers (Main Containers)

* These are the primary containers that run your actual application inside a Pod.  
* In our example the name of **Apllication Conatiner** is **app**.  

### Init Containers

* **Run before main containers**. Used for setup tasks (config download, waiting for a service, environment setup). They run sequentially and must complete successfully.  
* If the **init container** fails to execute successfully then **main application containers will NOT start**.
* In our example the name of the **init container** is **init-check-db**.

### Sidecar Containers

* Run alongside the main container. Provide supporting services, like logging, metrics, proxies.  
* In our example the name of **Sidecar Conatiner** is **log-agent**.  

* Sidecar container can be further devide into **2** types
  
  * **Adapter container**
  * **Ambassador container**

  #### Adapter Container

    * An adapter container is a specific kind of sidecar whose job is to convert or adapt data from one format to another.
      
      Examples:  
            * Convert app logs → structured logs  
            * Convert metrics → Prometheus format  

    * In our example the name of **Adapter Conatiner** is **log-adapter**.

  #### Ambassador Containers (special type of sidecar)  
  
    * An adapter container is a specific kind of sidecar which act as proxy between app container and external world.  
    * In our example the name of **Ambassador Conatiner** is **ambassador-proxy**.  

### Ephemeral Containers

  * Debug-only containers. Ephemeral containers are debug-only containers that you add to an existing running Pod to inspect or fix issues.  
  * They do not restart automatically. You can't define them in Pod spec; added using **kubectl debug**.  

    **kubectl debug pod/my-pod -it --image=busybox**

* To create a pod with multiple containers (which are types of containers)

  **kubectl apply -f container_types_example.yaml**

    