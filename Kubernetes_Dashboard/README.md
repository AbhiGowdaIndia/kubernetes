### The Kubernetes Dashboard is a web UI for Kubernetes clusters. 

**It allows you to:**

* View and manage cluster resources (namespaces, deployments, pods, services, etc.).

* Monitor workload health and logs.

* Perform some cluster operations (e.g., scaling, deleting) via the UI.

* Access features like RBAC-based login, metrics, etc.

* A typical YAML file to deploy it might:

* Create a Namespace (e.g., kubernetes-dashboard).

* Deploy the dashboard’s Deployment (container image, ports, replicas).

* Expose a Service (ClusterIP or NodePort) for the dashboard.

### Following are some screenshots of the kubernetes dashboard

### Dashboard Overview
![Dashboard Screenshot](Images/k8s_workload.png)

### Pods View
![Pods Screenshot](Images/pod_list.png)

### Jobs View
![Jobs Screenshot](Images/job_list.png)