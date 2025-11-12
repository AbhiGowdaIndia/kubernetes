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

  * To list all the roles in current namespace
    **kubectl get roles**

  * To list all the roles in a perticular namespace

    **kubectl get roles -n \<namespace-name>**  
    ExampleL **kubectl get roles -n default**

  * To list all the roles in all namespaces

    **kubectl get roles -A**

    **kubectl get roles --all-namespaces**

### Creating a **clusterrole** using **cluster_role.yaml** file

  In this file we we are creating arole with the name **my-sa-clusterrole** with access to **Pods, services** with **get, delete and list** permissions.

  * To create a ClusterRole

    **kubectl apply -f cluster_role.yaml**

  * To list all ClusterRoles

    **kubectl get clusterroles**

### Creating a **RoleBinding** with **role_binding.yaml** manifest(yaml) file to attach the **role(my-sa-role)** and the **account(my-sa)** that we created  

  * To create a RoleBining

    **kubectl appy -f role_binding.yaml**

  * To list rolebindings in current namespace

    **kubectl get rolebindings**

  * To list rolebindings in perticular namespace

    **kubectl get rolebindings -n \<namespace-name>**  
    Example: **kubectl get rolebindings -n default**

  * To list all the rolebindings in all namespaces

    **kubectl get rolebindings -A**

    **kubectl get rolebindings --all-namespaces**

### Creating a **ClusterRoleBinding** with **cluster_role_binding.yaml** manifest(yaml) file to attach the **cluster_role(my-sa-clusterrole)** and the **account(my-sa)** that we created  

  * To create a ClusterRoleBinding

    **kubectl appy -f cluster_role_binding.yaml**

  * To list ClusterRoleBindings

    **kubectl get clusterrolebindings**

### To test the perticular account with different operations

   **kubectl auth can-i \<operation> \<resource> --as=system:\<account-type>:\<namespace-name>:\<account-name>**
   Example: **kubectl auth can-i list pod --as=system:serviceaccount:default:my-sa

### Creating **context** to make use of the service account and **roles, cluster roles** we created by attaching these to the context that we are creating.

  * To get the url of the cluster

    **kubectl cluster-info**

  * To get more information about the cluster

    **kubectl cluster-info dump**

  * To set the cluster with name

    **kubectl config set-cluster \<cluster-name> --server=\<url-of-the-server> --insecure-skip-tls-verify=true**
    Example: **kubectl config set-cluster test-cluster --server=https://65.0.203.90:6443 --insecure-skip-tls-verify=true**

  * to describe secrete (we need to copy the token dispyed here)

    **kubectl describe secrete my-sa-token**

  * To add user with the token

    **kubectl confg set-credentials my-sa --token=\<token-that-we-copied>**

  * To set context with the user access

    **kubectl config set-context \<context-name> --cluster=\<cluster-name> --user=\<user-name>**
    Example: **kubectl config set-context my-context --cluster=test-cluster --user=my-sa**

  * To switch to the context just we created

    **kubectl config use-context my-context**

### The context the we create by running all the above commands can be done by editing or updating config file in **$HOME/.kube/** folder like **config** file

  * After updating the kubeconfig file, verify it.

    **kubectl config view**

  * Check available contexts

    **kubectl config get-contexts**

  * Switch to the right context (if needed)

    **kubectl config use-context <context-name>**

### Commands to list namespace level obeject and non namespace lavel objects

  * To list namespace level objects

    **kubectl api-resources --namespaced=true**

  * To list non=-namespace level objects

    ***kubectl api-resources --namespaced=false**



