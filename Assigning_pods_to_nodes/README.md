### The "Assigning_pods_to_nodes" folder contauins of multiple ways to control which pod goes to which node, like "node selector", "Affinity or Node Affinity", "Inter-Pod Affinity or Pod Affinity","Anti-Affinity or Pod Anti-Affinity" and "Taints and Tolerations"

* To give label to a node

  **kubectl label node \<node-name> \<key>=\<value>**  
  Example: **kubectl label node ip-172-31-38-169 env-test**

* To give multiple label to a node

  **kubectl label node \<node-name> \<key>=\<value> \<key>=\<value>**  
  Example: **kubectl label node ip-172-31-38-169 env=test os-linux**

### Node Selector.

  *  To Create Deployment with node selctor from a YAML file

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

