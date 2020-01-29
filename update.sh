aws cloudformation update-stack \
--stack-name hawa-udacity-project \
--region eu-west-1 \
--capabilities CAPABILITY_NAMED_IAM \
--profile udacity-serverless \
--template-body file://$1 \
--parameters file://$2 