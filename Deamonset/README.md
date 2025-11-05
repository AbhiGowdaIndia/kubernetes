# This **Daemonset** folder will contains **.yaml** or **.yml** file related to Deamonset.

### Following are the **kubctl** commands used with **Deamonset**

  * Create a DaemonSet

    **kubectl apply -f daemonset.yaml**

  * View DaemonSets

    **kubectl get daemonsets**
    **kubectl get ds**

  * Describe a DaemonSet (Detailed Info)

    **kubectl describe daemonset \<daemonset-name>**

  * Check DaemonSet Status

    **kubectl rollout status daemonset/\<daemonset-name>**
  
  * View DaemonSet YAML from Cluster

    **kubectl get daemonset \<daemonset-name> -o yaml**

  * Restart a DaemonSet

    **kubectl rollout restart daemonset/\<daemonset-name>**

  * Delete a DaemonSet

    **kubectl delete daemonset \<daemonset-name>**

  * Get DaemonSets Across All Namespaces

    **kubectl get ds -A**