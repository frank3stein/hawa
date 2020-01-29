Use the scripts with file to create stack with and the parameters file.

The stack name is defined within build scripts so separate file is still making addition to the stack. I separated them so they are easier to navigate and debug and the concerns are also separate. Through Outputs necessary variables are added to the environment for consumption of other services.

This do not work at the moment. I believe you can not import the same parameters once you have used it. So I decided to place everything in one yaml file. You onld need hawa.yaml and hawa-parameters.json to run the project.

```bash
./create.sh hawa-network.yaml hawa-network-parameters.json
```

```bash
./update.sh hawa-network.yaml hawa-network-parameters.json
```
