### This **Probes** folder will contains **.yaml** or **.yml** file related to **Liveness Probe, Readiness Probe and startup Probe**.

* **Probes are periodic calls to some application endpoints  within a contaner.**

### Probe Types Supported

**You can perform probes using:**
  
  * **HTTP check**  
  * **TCP check**  
  * **Exec command**  
  * **gRPC probe**  

**HTTP check**

  httpGet:  
  &nbsp;&nbsp;path: /status  
  &nbsp;&nbsp;port: 8080

**TCP check**

  tcpSocket:  
  &nbsp;&nbsp;port: 6379

**Exec command**

  exec:  
  &nbsp;&nbsp;command: ["pg_isready"]

**gRPC probe (K8s v1.24+)**
  
  grpc:
  &nbsp;&nbsp;port: 8080

#### Types of probes

  * **Liveness Probe**  
  * **Readiness Probe**  
  * **Startup Probe**  

#### Liveness Probe
  
  * **A liveness probe in Kubernetes is a health check that tells Kubernetes whether a container is still running properly.**  
  * **If the liveness probe fails, Kubernetes restarts the container.**  
  * **It helps recover from deadlocks, hangs, or frozen apps**  

  * To create a pod with livenessProbe

    **kubectl apply -f LivenessProbe_Pod.yaml**

#### Readiness Probe

  * **A Readiness Probe in Kubernetes is a health check that tells when a container is ready to receive traffic.**  
  * **Kubernetes waits until the readiness probe succeeds. Only then the Pod is added to the Service endpoint**  
  * **If the probe fails, the Pod stays running, but stops receiving traffic. (It does NOT restart the container)**  

  * To create a pod with ReadinessProbe

    **kubectl apply -f ReadinessProbe_Pod.yaml**

#### Startup Probe

  * **A startup probe in Kubernetes is a special health check used to verify that a container has successfully started before any other probes run.**  
  * **Kubernetes waits until startup probe passes, Only then liveness & readiness probes become active**  
  * **If startup probe fails → Kubernetes restarts the container**  

  * To create a pod with ReadinessProbe

    **kubectl apply -f StartupProbe_Pod.yaml**

**Key fields**

* **httpGet / tcpSocket / exec** → type of check

* **initialDelaySeconds** → wait before first check (default 10s)

* **periodSeconds** → how often to check (default 10s)

* **failureThreshold** → consecutive failures (default 3)

  