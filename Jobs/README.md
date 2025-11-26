# This **Jobs** folder will contains **.yaml** or **.yml** file related to Job and CronJob.

### Job

* **A job creates one or more pods and will continue to retry executon of the pods until a specified number of them successfully terminate. When the specified number of successful completion is reached, the task (job) is completed.**
* **Deleting a job will cleanup the pods it created and job can not be resumed.**
* **Suspending a job will terminate the existing pods of that job and can resume the job later. Once resume, job restart pods.**

* To create a job from YAML file

  **kubectl apply -f simple_Job.yaml**

### CronJob

* **A CronJob creates jobs aon a repeating schedule. CronJob is not a direct type of Job, but it creates Jobs on a schedule.**
* **CronJob is meant for performing regular scheduled actions such as backups, report generation and so on.**

* To create a CronJob from YAML file

  **kubectl appy -f CronJob.yaml**

### Key fields:

* **parallelism** → How many pods can run at the same time

* **completions** → Total successful pods required to finish the job

* **backoffLimit** → Max number of retries before job fails

* **activeDeadlineSeconds** → Maximum time job is allowed to run (in seconds)

* **ttlSecondsAfterFinished** → Delete job pods after they finish (in seconds)

* **successfulJobsHistoryLimit** → How many successful jobs to keep

* **failedJobsHistoryLimit** → How many failed jobs to keep

* **concurrencyPolicy**	→ Prevent overlapping runs (Allow, Forbid, Replace)

* **startingDeadlineSeconds** → Max delay allowed to start job if missed schedule

