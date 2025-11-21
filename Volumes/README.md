# This **Volumes** folder will contains **.yaml** or **.yml** file related to volumes **emptyDir, hostpath, configMap, secrete, and persistent volume**.

### emptyDir

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

  * Get inside the co2_reader to check the file created by co1_writer. (since both the containers are using a shared emptyDir volume, all the files should be available to both the containers)

    **kubectl exec -it pod_emptydir-example -c co2_reader -- bash**

    * Change dir to **data** folder, list and cat the **message** file
      
      **cd data**  
      **ls**  
      **cat message**



