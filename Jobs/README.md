# This **Jobs** folder will contains **.yaml** or **.yml** file related to Job and CronJob.

* **A job creates one or more pods and will continue to retry executon of the pods until a specified number of them successfully terminate. When the specified number of successful completion is reached, the task (job) is completed.**
* **Deleting a job will cleanup the pods it created and job can not be resumed.**
* **Suspending a job will terminate the existing pods of that job and can resume the job later. Once resume, job restart pods.**

