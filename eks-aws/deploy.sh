aws eks --region eu-west-1 update-kubeconfig --name My-EKS-cluster-name

# Step to execute
kubectl apply -f redis-master-controller.yml
kubectl apply -f redis-master-service.yml
kubectl apply -f redis-slave-controller.yml
kubectl apply -f redis-slave-service.yml
kubectl apply -f guestbook-controller.yml
kubectl apply -f guestbook-service.yml

# replicationcontroller scale 
kubectl scale rc guestbook --replicas=5

# Check your created service properties: 
kubectl describe service guestbook
kubectl describe service redis-master

# Clean Up all resources:
kubectl delete rc --all
kubectl delete svc --all
kubectl delete pods --all

# verify
kubectl get rc
kubectl get pods
kubectl get svc
