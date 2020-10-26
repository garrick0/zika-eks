## TODO
# Deploy vpc / subnets
aws cloudformation deploy --template-file infra/vpc.yaml --stack-name zika-stack

# Deploy IAM
# Deploy nodes
# Deploy cluster
# Deploy apps

# get token
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')


# proxy to dashboard
kubectl proxy

# Run hello world on cluster
# https://www.youtube.com/watch?v=feLpGydQVio&list=PLHq1uqvAteVvUEdqaBeMK2awVThNujwMd&index=2