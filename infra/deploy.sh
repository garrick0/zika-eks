aws cloudformation package --template-file master-stack.yaml --output-template packaged.yaml --s3-bucket zika-cloudformation 
aws cloudformation deploy --template-file /Users/samuel.gleeson/dev/zika-eks/infra/packaged.yaml --stack-name zika-stack  --capabilities CAPABILITY_NAMED_IAM

