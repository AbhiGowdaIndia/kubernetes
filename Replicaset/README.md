# This **ReplicaSet** folder will contains **.yaml** or **.yml** file related to Replicaset.

### Create a ReplicaSet

  * From YAML manifest

    **kubectl apply -f replicaset.yaml**  

  * View ReplicaSets

    **kubectl get rs**
    **kubectl get replicaset**

  * View details of a specific ReplicaSet

    **kubectl describe rs \<replicaset-name>**
    
  * Get ReplicaSets in a specific namespace  
  
    **kubectl get rs -n \<namespace>**

  * View Pods Managed by a ReplicaSet

    **kubectl get pods -l app=myapp**  

  * View Status / Events

    **kubectl get rs -o wide**  
    **kubectl describe rs \<replicaset-name>**

### Delete a ReplicaSet

  * Delete by name

    **kubectl delete rs \<replicaset-name>**  

  * Delete using YAML

    **kubectl delete -f replicaset.yaml**

  * Delete all ReplicaSets with a label

    **kubectl delete rs -l app=myapp**

