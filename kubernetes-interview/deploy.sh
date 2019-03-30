# S3 Bucket name:
my-s3-bucket-interview-test

#ARN Node Group role
arn:aws:iam::418185438171:role/my-eks-NodeGroup-1AD5W39VKR28R-NodeInstanceRole-T0PAWDQAR3QY

# EKS Name
eks-my-eks

aws eks --region eu-west-1 update-kubeconfig --name eks-my-eks

# Step to execute

kubectl apply -f main-deployment.yml


# replicationcontroller scale 
kubectl scale rc my-database-app --replicas=5

# Check your created service properties: 
kubectl describe service my-database-app
kubectl describe service redis-master

# Clean Up all resources:
kubectl delete rc --all
kubectl delete svc --all
kubectl delete pods --all

# verify
kubectl get rc
kubectl get pods
kubectl get svc
