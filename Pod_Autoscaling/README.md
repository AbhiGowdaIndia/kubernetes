# This **Pod_Autoscaling** folder will contains **.yaml** or **.yml** file related to **Horizantal Pod Autoscaling and Vertical Pod Autoscaling**.

* **Pod autoscaling in Kubernetes is the process of automatically adjusting the resources or number of pods in a cluster based on real-time metrics, so that your application can handle varying workloads efficiently without manual intervention.**

### Types of Pod Autoscaling

  * **Horizontal Pod Autoscaling (HPA)**  
  * **Vertical Pod Autoscaling (VPA)**  

### Horizontal Pod Autoscaling (HPA)
  
  * **HPA (Horizontal Pod Autoscaler) automatically increases or decreases the number of pod replicas in a Deployment / ReplicaSet / StatefulSet based on CPU, memory, or custom metrics.**

  Example:  
    * If your pod CPU is >70% for 5 minutes, HPA scales pods from 2 → 5.**

  * To create a Deployemnt with HPA based on CPU utilization.

    **kubectl apply -f Deployment.yaml**  
    **kubectl apply -f HPA.yaml**

    * Deployment starts with 2 replicas  
    * If average CPU usage per pod > 50%, HPA scales up  
    * If CPU drops < 50%, HPA scales down (not below 2 pods)   
    *  Maximum scale-out is 10 pods

### Vertical Pod Autoscaling (VPA)

  * **Vertical Pod Autoscaler (VPA) automatically adjusts a pod’s CPU and memory requests/limits based on actual usage.**
  * **While HPA scales number of pods, VPA scales resources of each pod.**
  * **VPA restarts pods when applying new CPU/memory values.**
  * **Requires VPA installation (not built-in like HPA).**

  * Install VPA CRDs
    
    **kubectl apply -f https://github.com/kubernetes/autoscaler/releases/latest/download/vpa-v1-crd.yaml**

  * Install VPA components

    **kubectl apply -f https://github.com/kubernetes/autoscaler/releases/latest/download/vpa-v1-example.yaml**

  * Verify VPA installation

    **kubectl get pods -n kube-system | grep vpa**

  * To create a Deployemnt with VPA based on CPU utilization.

    **kubectl apply -f deployment.yaml**  
    **kubectl apply -f vpa.yaml**