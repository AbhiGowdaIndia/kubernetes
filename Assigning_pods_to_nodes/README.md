### The "Assigning_pods_to_nodes" folder contauins of multiple ways to control which pod goes to which node, like "node selector", "Affinity or Node Affinity", "Inter-Pod Affinity or Pod Affinity","Anti-Affinity or Pod Anti-Affinity" and "Taints and Tolerations"

* To give label to a node

  **kubectl label node \<node-name> \<key>=\<value>**  
  Example: **kubectl label node ip-172-31-38-169 env-test**

* To give multiple label to a node

  **kubectl label node \<node-name> \<key>=\<value> \<key>=\<value>**  
  Example: **kubectl label node ip-172-31-38-169 env=test os-linux**

### Node Selector.

  * To Create Deployment with node selctor from a YAML file

    **kubectl appy -f nodeSelctor-deployment.yaml**

#### Here all the pods which are created from this deployment will assign to node with the label specified at nodeSelector, which is **env=test**. if the node with the specified label is not present, all the pods will be in pending state and not assigned to any other nodes.

### Affinity or Node Affinity

  #### Node affinity with soft/required  rule

  * To Create Deployment with node selctor from a YAML file
    
    **kubectl apply -f NodeAffinity-soft.yaml**

    **The pod will get created and deployed if the node specified is exist, otherwise the pod will be on pending state.**

  #### Node affinity with soft/required  rule

  * To Create Deployment with node selctor from a YAML file
    
    **kubectl apply -f NodeAffinity-hard.yaml**

    **Kubernetes will try to schedule your pod on nodes that match your rule. But if no matching nodes are found, the scheduler will still place the pod on any available node.**

### Inter-Pod Affinity or Pod Affinity

* To Create Deployment with node selctor from a YAML file

  **kubectl apply -f InterpodAffinity-or-PodAffinity.yaml**
  
  **Pod Affinity tells Kubernetes to place a pod near other pods that match certain labels. The scheduler looks at the label of the existing pods, the label of the nodes where those pods are running or the topologyKey (which level of closeness you want). Then places the new pod accordingly.**

  **In our example we used "requiredDuringSchedulingIgnoredDuringExecution" (HARD rule). So, If the node/zone mentioned in the topologyKey does not exist, Or If no existing pods matching the label are found in that topology: The pod will NOT be scheduled and Pod stays in Pending state forever till it the scheduler find a node/ topology.**

  **If we use If using "preferredDuringSchedulingIgnoredDuringExecution" (SOFT rule), If the topology (node/zone) is not found, Kubernetes will Ignore the affinity rule and Schedule the pod on any available node.**

### Anti-Affinity or Pod Anti-Affinity

  * To Create Deployment with node selctor from a YAML file
  
    **kubectl apply -f InterpodAffinity-or-PodAffinity.yaml**

    **Pod Anti-Affinity tells Kubernetes, “Do NOT place this pod on the same node (or zone) where other specific pods are running.” It is the opposite of pod affinity.**

    **In our example we used "requiredDuringSchedulingIgnoredDuringExecution" (HARD rule). So, If the node/zone mentioned in the topologyKey has a existing pods matching the label then The pod will NOT be scheduled and Pod stays in Pending state forever till it the scheduler find a node/ topology.**

    **If we use "preferredDuringSchedulingIgnoredDuringExecution" (SOFT rule), scheduler try to avoid placing two pods with the same label. If the topology (node/zone) is not found without the same labeled pod, Kubernetes will Ignore the anti-affinity rule and Schedule the pod on any available node.**

### Taints and Tolerations

  * To add taint to a node

    **kubectl taint node \<node-name> \<key>=\<value>:effect**  
    Example: **kubectl taint node ip-172-31-35-130 env=test:NoSchedule**

  * To Create Deployment with tolerations from a YAML file
  
    **kubectl apply -f toleration-deployment.yaml**

  **The node with tains means,this node will only accepts/schedules pods which have matchinjg tolerations.**

  **The pods with tolerations means, it can schedule on nodes which have taint with match and nodes which does not have any taints.**

