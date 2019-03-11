# Create Image 
docker delete service --all
docker delete pods --all

docker  build -t kubernetes-node:v1 .

kubectl get pods

kubectl apply -f deployment.yaml

#kubectl expose kubernetes-node-deployment --type=NodePort 

kubectl apply -f service.yaml


#kubectl run hello-world --replicas=5 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0  --port=8080
