# This **Network_Policy** folder will contains **.yaml** or **.yml** file related to NetworkPolicy.

* **Kubernetes Network Policies are rules that control how pods communicate with each other and with external networks.**
* **They act like a firewall for pods inside the cluster.**
* **By default in Kubernetes:**
    * **All pods can talk to all other pods (allow all).**
    * **All traffic to/from pods is allowed unless restricted.**
* **A NetworkPolicy lets you restrict this traffic.**
* **When defining a pod or namespace based network policy, we use a selector to specify what traffic is allowed to and from the pod(s) that match the selector.**

