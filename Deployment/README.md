# This **Deployment** folder will contains **.yaml** or **.yml** file related to deployments.

### Following are some of the **kubectl** commands normally used with Deployment

  * To Create Deployment from a YAML file

    **kubectl apply -f deployment.yaml**

  * To list all Deployments in the current namespace

    **kubectl get deployments**

  * To view details of a specific Deployment

    **kubectl describe deployment \<deploy-name>**  
    Example: **kubectl describe deployment my-deploy**

  * Show pods managed by a Deployment using label selector

    **kubectl get pods -l \<key=my-deployvalue>**  
    Example: **kubectl get pods -l app=my-deploy**

### Scale the Deployment

  * Change number of replicas

    **kubectl scale deployment \<deploy-name> --replicas=5**  
    Example: **kubectl scale deployment my-deploy --replicas=5**

  * Basic CPU-based autoscaling

    **kubectl autoscale deployment \<deployment-name> --min=\<min-pods> --max=\<max-pods> --cpu-percent=\<target-cpu>**  
    Example: **kubectl autoscale deployment my-deploy --min=2 --max=5 --cpu-percent=60**

### Rollout Management

  * Check rollout status

    **kubectl rollout status deployment/\<deploy-name>**  
    Example: **kubectl rollout status deployment/my-deploy**

    **kubectl rollout status deployment \<deploy-name>**  
    Example: **kubectl rollout status deployment my-deploy**

  * View rollout history

    **kubectl rollout history deployment/\<deploy-name>**  
    Example: **kubectl rollout history deployment/my-deploy**

    **kubectl rollout history deployment \<deploy-name>**  
    Example: **kubectl rollout history deployment my-deploy**

    **kubectl rollout history deploy \<deploy-name>**  
    Example: **kubectl rollout history deploy my-deploy**

  * Rollback to previous version
    
    **kubectl rollout undo deployment/\<deploy-name>**  
    Example: **kubectl rollout undo deployment/my-deploy**

  * Rollback to a specific revision

    **kubectl rollout undo deployment/\<deploy-name> --to-revision=2**  
    Example: **kubectl rollout undo deployment/\<deploy-name> --to-revision=2**

### Delete a Deployment

  * Delete by name
    
    **kubectl delete deployment \<deploy-name>**  
    Example: **kubectl delete deployment my-deploy**

  * Delete using label selector

    **kubectl delete deployment -l \<key=value>**  
    Example: **kubectl delete deployment -l app=my-deploy**

* To get logs from a specific Deployment directly (short version)  

  **kubectl logs deployment/\<deployment-name> --all-containers=true**