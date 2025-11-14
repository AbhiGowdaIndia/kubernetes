### The "Assigning_pods_to_nodes" folder contauins of multiple ways to control which pod goes to which node, like "node selector", "Affinity or Node Affinity", "Inter-Pod Affinity or Pod Affinity","Anti-Affinity or Pod Anti-Affinity" and "Taints and Tolerations"

### Node Selector.

* TO give label to a node

  **kubectl label node \<node-name> \<key>=\<value>**
  Example: **kubectl label node ip-172-31-38-169 env-test**

* To givr multiple label to a node

  **kubectl label node \<node-name> \<key>=\<value> \<key>=\<value>**
  Example: **kubectl label node ip-172-31-38-169 env=test os-linux**

  