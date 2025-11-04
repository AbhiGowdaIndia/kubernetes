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
