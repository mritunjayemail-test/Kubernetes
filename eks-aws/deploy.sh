
# Step to execute
kubectl create -f redis-master-controller.yml
kubectl create -f redis-master-service.yml
kubectl create -f redis-slave-controller.yml
kubectl create -f redis-slave-service.yml
kubectl create -f guestbook-controller.yml
kubectl create -f guestbook-service.yml

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
