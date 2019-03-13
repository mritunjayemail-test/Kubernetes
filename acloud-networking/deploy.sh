# Create 
kubectl apply -f ping-deploy.yml 

kubectl get deploy

kubectl get pods -o wide

#### Exeecute e
kubectl exec -it pingtest-6769c69dd5-cfnw5 bash
apt-get update
apt-get install iputils-ping curl dnsutils iproute2 -y
