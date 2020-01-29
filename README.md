### High Availability Web App

At the moment an application is launched that can scale up to 3 EBs and scale down to 1. All the EBs are in 2 private subnets which are in different availability zones. The traffic is routed by load balancer which also does the health checks on the instance. At the moment the instant is 2vCPu, 4 gb ram, Ubuntu 18 server with 10gb ssd mounted.

TODO: Separation of concerns when I have time. So files can deal with one aspect only.

```bash
./create.sh hawa.yaml hawa-parameters.json
```

```bash
./update.sh hawa.yaml hawa-parameters.json
```
