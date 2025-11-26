# This **MetricServer** folder will contains **.yaml** or **.yml** files and metric Server installation script.

* **The kuberenetes Metric server is an aggregator of resource usage data in our cluster.**
* **It collects these metrics from all nodes and pods using Kubelet Metrics API and makes them available to Kubernetes components.**

* **We can setup Metric Server by running the script "MetricServer_installation.sh" or directly apply the components file provided by Kuberenetes SIGS**

  * **Running "MetricServer_installation.sh**

    **sh MetricServer_installation.sh install**

  * **By apply the components file provided by Kuberenetes SIGS (Here I am usisng the link for file saved in my github account)**

    **kubectl apply -f https://github.com/AbhiGowdaIndia/kubernetes/blob/main/MetricServer/components.yaml**

