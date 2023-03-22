aws cloudformation create-stack \
--stack-name hawa-udacity \
--region eu-west-1 \
--capabilities CAPABILITY_NAMED_IAM \
--template-body file://$1 \
--parameters file://$2 \
--profile udacity-serverless