# This **StatefulSet_and_HeadlessService** folder will contains **.yaml** or **.yml** file related to **StaefulSet and Headless Service**.

### Understanding StatefulSetand HeadlessService.

* Create StatefulSet

  **kubectl appy -f statefulset.yaml**

* Create Headless Service

  **kubectl appy -f headless_service.yaml**

#### Normally, if we try to do **nslookup on clusterIP service's IP**, it won't give IP address of the **Pods** (as it it naturaly loadbalance the traffic, there is no need to remember the pods IP).

  Example: **nslookup 10.106.134.172**

#### Now, We have headless service for staefulSet. If we try to do **nslookup on service's IP**, it will give IP address of the **Pods**. Because for staefulSets, it is necessary to maintain stickyness it keep records or Ip of the pods.

  Example: **nslookup 10.106.134.172**  

### To perform nslookup we can use IP of the service or DNS. The DNS will be  in the bellow format.

  **\<objectname>.\<namespace>.\<type>.\<url-cluster>**    
  Example: **ci-svc.default.svc.cluster.local**

  **nslookup ci-svc.default.svc.cluster.local**
