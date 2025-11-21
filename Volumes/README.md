# This **Volumes** folder will contains **.yaml** or **.yml** file related to **emptyDir, hostpath, configMap, secrete, and persistent volume**.

### emptyDir Volume

  * **An emptyDir is a temerory storage volume, that is created when a pod is assigned to a node. It is usefull for sharing files between containers with in the same pod. The data stored in emptyDir volume will be lost when the pod is deleted or rescheduled.**

  * Create a Pod with 2 containers sharing an emptyDir volume from YAML manifest

    **kubectl appy -f emptyDirVolume_pod.yaml**

    Here, First container **co1_writer** will crete a file with the name **message** in datafolder inside the emptyDir which we created and mounted with the name **shared-data**.

  * Get inside the co1_writer to check the file created by itself.

    **kubectl exec -it pod_emptydir-example -c co1_writer -- bash**

    * Change dir to **data** folder, list and cat the **message** file
      
      **cd data**  
      **ls**  
      **cat message**

  * Get inside the **co2_reader** to check the file created by **co1_writer**. (since both the containers are using a shared emptyDir volume, all the files should be available to both the containers)

    **kubectl exec -it pod_emptydir-example -c co2_reader -- bash**

    * Change dir to **data** folder, list and cat the **message** file
      
      **cd data**  
      **ls**  
      **cat message**

### hostPath Volume

  * **A folder from the any of the workernode where the pod is created is mounted and used as volume. The data stored in hostPath volume will be not lost even when the pod is deleted or rescheduled, because the data is stored in node. If the pod is resheduled to new node, the pod may not get the data since it is scheduled to new node. but the datais still exist in the node unless we delete it.**

  * Create a Pod with hostPath volume from YAML manifest

    **kubectl appy -f hostPathVolume_pod.yaml**

### ConfigMap and Secret as Volume

  *  **ConfigMap and Secret Valumes allow us to mount configuration data or secrets as files into pod. ConfigMaps are used for storing configuraton settings and secret are used for sensitive data like API keysor passwords.**

  * To create configMap and secrete

    **kubectl apply -f configMap.yaml -f secret.yaml**

  * To cretate a pod with configMap and secret as Voulme

    **kubectl apply -f ConfigMap_Secret_volume.yaml**

  * If we get inside the pod, the files with name **app.properties** and **app.conf** will found in bellow mentioned folders,  
    *  **/data/volume/secret/app.conf**
    *  **/data/volume/configmap/app.properties**  

### Persistent Volume and Persistent Volume Claim

* **A PersistentVolume (PV) is a cluster-level storage resource in Kubernetes. It represents actual physical storage (like a disk on a node, NFS share, AWS EBS, etc.). Each PV has capacity, access modes, reclaim policy (Retain, Recycle, Delete) and the access mode (RWO, ROX, RWX). They exist independent of Pods, meaning data is preserved even if the Pod using it is deleted.**

* **A PersistentVolumeClaim (PVC) is a request for storage made by a Pod. It is a namespace-level storage resource in Kubernetes. PVCs specify how much storage is needed. Kubernetes matches a PVC to a suitable PV automatically (binding). We can claim the Persitant volume from any namespace by create a Persistent volume claim.**

* Creating a Persistent volume form YAML file

  **kubectl apply -f PersistentVolume.yaml**

* Creating a Persistent volume claim form YAML file

  **kubectl apply -f PersistentVolumeClaim.yaml**

* create a pod with PVC attaching to claim PV

  **kubectl apply -f PV_PVC_Pod.yaml**

### Storage Class (Dynamic Persistent Volume)

* **A StorageClass in Kubernetes defines how dynamic storage (PersistentVolumes) should be created. Each StorageClass is associated with a particular storage backend or provider (AWS,EBS,EFS, Azure etc).**  
* **We need to install driver for the storage provider. Search for the "Kubernetes SIGS" in browser, where we can find all the CSI(Cloud Storage Interface) drivers of all the cloud providers. (Since we are using AWS-EBS as storage, we need to instal driver for AWS-EBS.)**  
* **To use AWS-EBS as storage class or DynamicPersistentVolume we should have IAM Account with access to EBS and we shouls have the "AWS_ACCESS_KEY_ID" and "AWS_SECRETE_ACCESS_KEY" of that IAM user and need to export these credential to environmental variables along with "AWS_DEFAULT_REGION".**

* To generate or Create generic aws-secrete

  **kubectl create secret generic aws-secret --namespace kube-system --from-literal=key_id=${AWS_ACCESS_KEY_ID} --from-literal=access_key=${AWS_SECRET_ACCESS_KEY}**

  **kubectl get secret -m kube-system**

  **kubectl describe secret aws-secret -n kube-system**

* Deploy the driver

  **Kubectl apply -k "\<github_link_to_the_driver>"**

* Create a storage class using YAML file

  **kubectl apply -fStorageClass_EBS.yaml**
  
  **Kubectl get sc**

  **kubectl describe sc ebs-sc**

* To create PVC to claim StorageClass using YAML file

  **kubectl apply -f PVC_EBS.yaml**

  **kubectl get pvc**

  **kubectl describe pvc ebs-pvc**

* **Now can login and see in "AWS consol -> EBS Volumes" to check he created volume.**
  **The volume can be used by a resource once the resource is attached the PVC.**
