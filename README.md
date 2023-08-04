### High Availability Web App

At the moment an application is launched that can scale up to 3 EBs and scale down to 1. All the EBs are in 2 private subnets which are in different availability zones. The traffic is routed by load balancer which also does the health checks on the instance. At the moment the instant is 2vCPu, 4 gb ram, Ubuntu 18 server with 10gb ssd mounted.

TODO: Separation of concerns when I have time. So files can deal with one aspect only.

Use FN: ImportValue to import values within the stack.

```bash
./create.sh hawa.yaml hawa-parameters.json
./create.sh hawa-services.yaml hawa-services-parameters.json
./create.sh hawa-network.yaml hawa-network-parameters.json
```

If you creted services or network before the other, please use the update script instead.

```bash
./update.sh hawa.yaml hawa-parameters.json
```

To validate the template

```bash
aws cloudformation validate-template --template-body file://hawa-services.yaml
```

The URL of the deployed app is at

http://hawa-loadb-9bwkl0hqcr2v-1775168024.eu-west-1.elb.amazonaws.com/
