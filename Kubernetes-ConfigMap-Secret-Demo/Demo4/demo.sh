# Deploy the ConfigMap
echo admin | base64

# Create the Pod with Env Var
kubectl create -f my-secret.yml

# Create the pod 
kubectl create -f secret-env-pod.yml

# Check the env vars
kubectl exec -it secret-env-pod /bin/sh
env

# Clean Up
kubectl delete -f my-secret.yml -f secret-env-pod.yml
