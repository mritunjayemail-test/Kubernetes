
cd Docker
docker build -t <DOCKER_HUB_USER>/web .
docker push <DOCKER_HUB_USER>/web

# Launch the app with Docker Compose
docker-compose up -d 

docker-compose ps
curl localhost:3000

kubectl get nodes

# kube master and DNS running status
kubectl cluster-info

# Kube cotainer service status
kubectl get cs

# Deploy the app to Kubernetes
cd ../Kubernetes
kubectl create -f db-pod.yml
kubectl create -f db-svc.yml
kubectl create -f web-pod.yml
kubectl create -f web-svc.yml
kubectl create -f web-rc.yml

# Run in browser
http://localhost:3000/

# see the Env variable and ping
kubectl exec -it web /bin/bash
env
curl localhost:5000
ping redis
exit

# Desc web pod 
kubectl describe pod web

# Check that the Pods and Services are created
kubectl get pods
kubectl get svc

# Get the NodePort for the web Service. Make a note of the port.
kubectl describe svc web

# replicationcontroller scale 
kubectl scale rc web --replicas=5

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
