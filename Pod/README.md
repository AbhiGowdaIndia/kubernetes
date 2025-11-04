# This **Pod** folder will contains **.yaml** or **.yml** file related to pods.

Following are some of the **kubectl** commands normally used with pods.

* To create or update the resource (pod)

    **kubectl apply -f simple_pod.yaml**

* To list all the pods

    **kubectl get pods**

* To lists all pods, along with extra (“wide”) information. List pods with custom columns (quick summary view)

    **kubectl get pods -o wide**

* To get detailed information all pods

    **kubectl describe pods**

* To get detailed information about a single pod

    **kubectl describe pod \<pod-name>\

* To label a pod or to add label to existing pod  

    **kubectl label pods \<pod-name>\ \<key>=<value>\**  
    example: kubectl label pod nginx-pod env=production  

* List pods along with their labels  

    **kubectl get pods --sow_labels**  

* To update an existing label  

    **kubectl label pod \<pod-name>\ \<key>=<value>\ --overwrite**  
    example: kubectl label pod my-nginx-pod env=staging --overwrite  

* To remove label from a pod  

    **kubectl label pod \<pod-name>\ \<key>\-**  
    example: kubectl label pod my-nginx-pod env-  

* To add label to multiple pods  

    **kubectl label \<pod-name1>\ \<pod-name2>\ \<pod-name3>\**  
    example: kubectl label pods pod1 pod2 app=frontend  

* To list or filter pods using label selector

    **kubectl get pods -l \<key=value>\**  
    example: **kubectl get pods -l app=nginx  

*  To describe pods with label selector  

    **kubectl describe pods -l \<key=value>\**  
    example: **kubectl describe pods -l app=nginx**  
