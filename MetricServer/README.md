# This **MetricServer** folder will contains **.yaml** or **.yml** files and metric Server installation script.

* **The kuberenetes Metric server is an aggregator of resource usage data in our cluster.**
* **It collects these metrics from all nodes and pods using Kubelet Metrics API and makes them available to Kubernetes components.**

* **We can setup Metric Server by running the script "MetricServer_installation.sh" or directly apply the components file provided by Kuberenetes SIGS**

  * Running "MetricServer_installation.sh

    **sh MetricServer_installation.sh install**

  * By apply the components file provided by Kuberenetes SIGS (Here I am usisng the link for file saved in my github account)

    **kubectl apply -f https://github.com/AbhiGowdaIndia/kubernetes/blob/main/MetricServer/components.yaml**

* Components.yaml file contains configuration for all the required objects like **ServiceAccount**, **ClustersRoles**, **RoleBinding**, **ClusterRoleBinding**, **Service**, **Deployment** and **APIService**.

**Using "top" after installing the metric server**

* To get the metric of nodes

  **kubectl top nodes**

  * The command kubectl top nodes shows the real-time CPU and memory usage of each node in your Kubernetes cluster.

* To get the metric of pods (in perticular namespace)

  **lubectl top pods -n kube-system**

  * The command kubectl top pods -n kube-system shows the CPU and memory usage of all pods running inside the kube-system namespace.