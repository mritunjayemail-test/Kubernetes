
# Build The Docker Image
docker  build -t ashupost/node-app:v1 ./docker

# Push Image to docker hub.
docker push ashupost/node-app:v1

# Run the Docker Container in detached mode.
docker run -it -d -p 9001:9000 --name web ashupost/node-app:v1

#execute an interactive bash shell on the container.
docker exec -it web bash
curl localhost:9000
exit

# Access The Application while running the docker container
curl localhost:9001

# Staring kubernetes
kubectl apply  -f kubernetes/web-pod.yaml -f kubernetes/web-service.yaml 
curl $(minikube ip):32001
kubectl delete -f kubernetes/web-pod.yaml -f kubernetes/web-service.yaml 

kubectl apply  -f kubernetes/web-deployment.yaml -f kubernetes/web-service.yaml 
curl $(minikube ip):32001
kubectl delete -f kubernetes/web-deployment.yaml -f kubernetes/web-service.yaml 
