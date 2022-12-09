
#!/bin/bash
aws cloudformation validate-template --template-body file://deployment_template.yml
aws cloudformation deploy --stack-name static-hosting-demo-stack --template-file deployment_template.yml --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
aws s3 cp index.html s3://static-hosting-demo/
