### This **ResourceQuota_and_limts** folder will contains **.yaml** or **.yml** file related to **ResourceQuota and limits**.

* **ResourceQuota is a policy applied at the namespace level to limit how many resources users or workloads can consume in that namespace.**
* **It prevents one team/app from using all cluster resources.**

* It can restrict things like:

  * Compute resources

  * Total CPU requests/limits

  * Total memory requests/limits

* Number of objects

  * Pods

  * Services

  * ConfigMaps

  * Secrets

  * PVCs

* Storage

  * Total storage requested

  * Per-storage-class usage

* To create a ResourceQuota to restrict only 2 pods and 2 deplyments in **dev-team** namespace.

  **kubectl appy -f Pod-and-Deployment-RQ.yaml**

  * After this if we try to create more tha 2 pods, it will create only 2 pods and remaining pods will be in pending state.  
  * Suppose, if a deployment contains 4 replicas of a pod, it will create only 2 pods and remaining 2 will be in pending state.  
  * we can only create only 2 deployments, if we try to create more tha 2 deployments, those will be in pending state.  
  * We can use **count/pods** in special cases like **When using scopes or scopeSelector**, example  
    &nbsp;&nbsp;spec:  
    &nbsp;&nbsp;&nbsp;&nbsp;hard:  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count/pods: "2"  
    &nbsp;&nbsp;&nbsp;&nbsp;scopes:  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- BestEffort  