# Kubernetes

* It contains bash scripts to steup a **kubernetes clusers** in 2 ways.
  
  1. Using **Kubeadm**
     
     * The script file is **k8s_installation.sh**
     * We just need to run this script. This will setup kuberentes cluster for **Ubuntu** and **RHEL** operating systems. For any other operating system this will throw a message.
       
  3. Using **Kops**
 
     * The file is **install_kubernetes_using_kops.txt**
     * The file will conatines several steps, we need to run all the mentiones steps to setup kuberenets cluster which is managed by AWS.
     
     
* This repository contains **templates for pods, controllers like Deployments, Replicasets, Deamonsets etc..**
  
* It also contains the **kubectl commands used with objects**, perticlarly within the folders for which object they are related to.

### Following are the commands used get the details of clusters and change clusters

  * To list all the kubernetes clusters
    
    **kubectl config get-clusters**

  * To list all the cotext (Includes Users + cluster)

    **kubectl config get-context**

  * To show the current (active) cluster

    **kubectl config current-context**

  * To switch between context
 
    **kubectl config use-context <context_name>**

### Following are the commands used get the details nodes

  * To list the nodes

    **kubectl get nodes**
    
    shorter format **kubectl get no**

  * To lists all nodes, along with extra (“wide”) information. List nodes with custom columns (quick summary view)

    **kubectl get nodes -o wide**

  * To get detailed information about a single node

    **kubectl describe node <node-name>**

  * Show node details in a YAML format

    **kubectl get node <node-name> -o yaml**

  * * Show node details in a JSON format
   
      **kubectl get node <node-name> -o json**

### create or update resources in your Kubernetes cluster using a configuration file (YAML or JSON).

  * Basic syntax

    **kubectl apply -f \<file-name>\.yaml**

  * Apply from a remote URL

    **kubectl apply -f https://k8s.io/examples/application/deployment.yaml**

  * Apply multiple files

    **kubectl apply -f \<filename_1>\.yaml -f \<filename_2>\.yaml**

  * Common options
    
    **-f	--> Specifies the file or folder**  
    **--dry-run=client	--> Check if YAML is valid without applying**  
    **--namespace <ns>	--> Apply in a specific namespace**  
    
    
    

  
