# Kubernetes

### Kubernetes Examples & Demo Repository ⚙️

This repository covers **Pods, Deployments, Services, ReplicaSets, DaemonSets, StatefulSets, Volumes, Persistent Volumes/Claims, ConfigMaps/Secrets, RBAC, Network Policies, Ingress, Jobs, Autoscaling, Probes, Namespaces, ResourceQuotas, and more**. It also includes a simple **Flask application example** to demonstrate microservice deployment and connectivity inside Kubernetes.

---

## 🧰 Repository Structure

kubernetes/ ← Root  
│  
├── k8s_installation/ ← Scripts to setup a Kubernetes cluster (kubeadm / kops)  
│ ├── k8s_installation.sh  
│ └── install_kubernetes_using_kops.txt  
|  
├── Pod/ ← Examples of basic Pods and container types  
|  
├── Deployment/ ← Deployment manifests (basic, rolling-update, with probes, etc.)  
|  
├── Replicaset/ ← ReplicaSet example(s)  
|  
├── Daemonset/ ← DaemonSet examples  
|  
├── StatefulSet_and_HeadlessService/ ← StatefulSet + headless service + PVC examples  
|  
├── Service/ ← Service manifests: ClusterIP, NodePort, LoadBalancer, etc.  
|  
├── Ingress/ ← Ingress controller + resource configuration  
|  
├── Volumes/ ← Examples: hostPath, emptyDir, configMap volume mounts, etc.  
|  
├── Persistent_Volumes/ ← PV, PVC, StorageClass, StatefulSet with PVC  
|  
├── ConfigMaps_and_Secretes/ ← ConfigMap & Secret usage / volume-mounts / env injection  
|  
├── RBAC/ ← Role, ClusterRole, RoleBinding, ClusterRoleBinding, ServiceAccount examples  
|  
├── Network_Policy/ ← NetworkPolicy examples (default-deny, allow rules, etc.)  
|  
├── Jobs/ ← Batch jobs / scheduled work examples  
|  
├── Pod_Autoscaling/ ← Horizontal Pod Autoscaling examples  
|  
├── Probes/ ← Liveness and Readiness probe usage examples  
|  
├── Namespace/ ← Namespaces and resource-quota / limit examples  
|  
├── ResourceQuota_and_limits/ ← ResourceQuota & resource-limits examples  
|  
├── Simple_Flask_APP_Example/ ← Demo frontend-backend-DB Flask microservice example  
|  
├── Simple_Flask_App_with_NetworkPolicy/ ← Flask example with explicit NetworkPolicy for isolation  
|  
├── Types_of_containers/ ← Examples of init-containers, sidecars, multi-container pods, etc.  
|  
├── README.md ← This documentation  
|  
└── ... ← More examples and future additions  
    

  
