# This **Volumes** folder will contains **.yaml** or **.yml** file related to volumes **emptyDir, hostpath, configMap, secrete, and persistent volume**.

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

