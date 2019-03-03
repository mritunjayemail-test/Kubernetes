
kubectl create -f j-hello.yml -f j-hello-svc.yml
kubectl get deployments
kubectl describe deployments j-hello
kubectl get pods
kubectl get pods --show-labels
# Replica set
kubectl get rs --show-labels

#Get the NodePort
kubectl describe svc j-hello
export NODE_PORT=30001
curl localhost:$NODE_PORT

#Access the Pool

# Scale the deployment
kubectl scale deployment j-hello --replicas 2
kubectl get pods

kubectl set image deployment j-hello j-hello=janakiramm/j-hello:2
kubectl rollout history deployment j-hello
kubectl rollout undo deploy/j-hello

# get List of all the deployment
kubectl get deployment
kubectl delete deployment j-hello
kubectl delete svc  j-hello



Open http://127.0.0.1:8001/static/
kubectl proxy --www=local/ &

kubectl edit deployment/update-demo
kubectl rollout undo deployment/update-demo
kubectl delete deployment update-demo

kubectl run update-demo --image=gcr.io/google_containers/update-demo:nautilus --port=80 -l name=update-demo


