# This **RBAC** folder will contains **.yaml** or **.yml** file related to **Roll Based Access Control**.

###  Creating service account  

  * Creating service account (Using command line)
   
    **kubectl create sa \<account-name>**
    Example: **kubectl create sa my-sa**

  * Creating service account using manifest(yaml) file  

    **kubectl apply -f service_account.yaml**

  * List service accounts

    **kubectl get serviceaccount**

    **kubectl get sa**

### Creating token for the account

  * Using manifest(yaml file)

    **kubectl appy -f secrete_for_my_sa.yaml**  

  * List all secretes

    **kubectl get secrets**

  * To describe secrete

    **kubectl describe secrete \<screte-name>**
    Example: **kubectl describe secrete my-sa-token**

### Creting a **role** using **role.yaml** file
  
  In this file we we are creating arole with the name **my-sa-role** with access to **Pods, services and secretes** with **get, create and list** permissions.

  * To create a Role

    **kubectl appy -f role.yaml**

  * To list all the roles in a namespace

    **kubectl get roles -n \<namespace-name>**  
    ExampleL **kubectl get roles -n default**

  * To list all the roles n all namespaces

    **kubectl get roles -A**

    **kubectl get roles --all-namespaces**

### Creating a **clusterrole** using **cluster_role.yaml** file

  In this file we we are creating arole with the name **my-sa-clusterrole** with access to **Pods, services** with **get, delete and list** permissions.

  * To create a ClusterRole

    **kubectl apply -f cluster_role.yaml**

  * To list all ClusterRoles

    **kubectl get clusterroles**


