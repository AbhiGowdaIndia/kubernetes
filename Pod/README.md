# This **Pod** folder will contains **.yaml** or **.yml** file related to pods.

### Following are some of the **kubectl** commands normally used with pods.

  * To create or update the resource (pod)

    **kubectl apply -f simple_pod.yaml**

  * To list all the pods

    **kubectl get pods**

  * To lists all pods, along with extra (“wide”) information. List pods with custom columns (quick summary view)

    **kubectl get pods -o wide**

  * To get detailed information all pods

    **kubectl describe pods**

  * To get detailed information about a single pod

    **kubectl describe pod \<pod-name>**  

  * To label a pod or to add label to existing pod  

    **kubectl label pods \<pod-name> \<key>=\<value>**  
    example: **kubectl label pod nginx-pod env=production**  

  * List pods along with their labels  

    **kubectl get pods --sow_labels**  

  * To update an existing label  

    **kubectl label pod \<pod-name> \<key>=\<value> --overwrite**  
    example: **kubectl label pod my-nginx-pod env=staging --overwrite**  

  * To remove label from a pod  

    **kubectl label pod \<pod-name> \<key>-**  
    example: **kubectl label pod my-nginx-pod env-**  

  * To add label to multiple pods  

    **kubectl label \<pod-name1> \<pod-name2> \<pod-name3>**  
    example: **kubectl label pods pod1 pod2 app=frontend**  

  * To list or filter pods using label selector

    **kubectl get pods -l \<key=value>**  
    example: **kubectl get pods -l app=nginx**  

  * To describe pods with label selector  

    **kubectl describe pods -l <key=value>**  
    example: **kubectl describe pods -l app=nginx**  

### To get logs from a pod in Kubernetes

  * Basic command (single-container pod)
    
    **kubectl logs \<pod-name>**

  * If the pod has multiple containers

    **kubectl logs \<pod-name> -c \<container-name>**

  * To stream (follow) logs in real time

    **kubectl logs -f \<pod-name>**

  * To view logs from a previous crashed container

    **kubectl logs -p \<pod-name>**  
    **The -p (previous) flag shows logs from a container’s previous instance, helpful for crash debugging.**

  * To get logs from all pods with a specific label

    **kubectl logs -l app=my-app --all-containers=true**

  * For logs in a specific namespace

    **kubectl logs \<pod-name> -n \<namespace>**

### To delete pods

  * Delete a Single Pod

    **kubectl delete pod \<pod-name>**  
    **kubectl delete pod nginx-7f8d9d7d9f-abcde**  

  * Delete Multiple Pods

    **kubectl delete pod \<pod1-name> \<pod2-name>**  
    **kubectl delete pod nginx-abc redis-xyz**

  * Delete Pods by Label Selector

    **kubectl delete pod -l \<key=value>**     
    Example: **kubectl delete pod -l app=myapp**

  * Delete Pods in a Specific Namespace

    **kubectl delete pod \<pod-name> -n \<namespace>**  
    **kubectl delete pod nginx-pod -n production**

  * Delete All Pods in the Current Namespace

    **kubectl delete pods --all**  

  * Force Delete a Pod (Immediate Termination)

    **kubectl delete pod <pod-name> --grace-period=0 --force**

  * Delete All Pods in a Node (e.g., for maintenance)

    **kubectl delete pods --all --field-selector spec.nodeName=\<node-name>**  
    Example: **kubectl delete pods --all --field-selector spec.nodeName=node-1**

  * Delete Pods Managed by a Deployment or ReplicaSet

    **kubectl delete deployment <deployment-name>**  

  * Delete Pod Using YAML File

    **kubectl delete -f \<file-name>**  
    Example: **kubectl delete -f pod.tyaml**


  
