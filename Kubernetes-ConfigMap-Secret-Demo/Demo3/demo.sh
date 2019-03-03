
# Create a generic secrect from files
kubectl create secret generic dbsecret --from-file=./username.txt --from-file=./password.txt

# Check the creation of Secret
kubectl get secret

# Check the creation of secret in YAML
kubectl get secret -o yaml

# Decode the secret
echo UGFzc3dvcmQ= | base64 -D

# create secret pod
kubectl create -f secret-pod.yml

# Access the Secret in the Pod
kubectl exec -it secret-pod /bin/sh

# Clean Up
kubectl delete secret dbsecret
kubectl delete -f secret-pod.yml


