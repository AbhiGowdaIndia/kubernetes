# This **Namespace** folder will contains **.yaml** or **.yml** file related to deployments.

### Following are some of the **kubectl** commands normally used with **Namespace**.

  * Create namespace from the YAML file.

    **kubectl apply -f namespace.yaml**  

  * List All Namespaces

    **kubectl get namespaces**  
    **kubectl get ns**

  * Create a Namespace

    **kubectl create namespace \<namespace-name>**   
    Example: **kubectl create namespace dev**  

  * Describe a Namespace

    **kubectl describe namespace \<namespace-name>**    
    Example: **kubectl describe ns dev**

  * Delete a Namespace

    **kubectl delete namespace \<namespace-name>**  
    **kubectl delete ns dev**

  * View Resources Inside a Namespace

    **kubectl get all -n \<namespace-name>**
    Example: **kubectl get all -n dev**

  * List pods from perticular namespace

    **kubectl get pods -n \<namespace-name>**   
    Ezxample: **kubectl get pods -n kube-system**

  * Set a Default Namespace (Persistent Context)

    **kubectl config set-context --current --namespace=\<namespace-name>**    
    Example: **kubectl config set-context --current --namespace=dev**

  * Check current context

    **kubectl config view --minify | grep namespace:**

  * Label a Namespace

    **kubectl label namespace <namespace-name> <key>=<value>**