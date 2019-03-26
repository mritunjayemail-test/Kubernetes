# Password Secret.
kubectl create secret generic pgpassword --from-literal PGPASSWORD=Password123

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

minikube addons enable ingress
minikube addons disable ingress

# Ingress help
https://kubernetes.github.io/ingress-nginx/deploy/#minikube

# To check if the ingress controller pods have started, run the following command:
kubectl get pods --all-namespaces -l app.kubernetes.io/name=ingress-nginx --watch


kubectl create secret generic pgpassword --from-literal PGPASSWORD=Password123


