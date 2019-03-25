
kubectl config set-credentials mia \
--client-certificate=~/kubernetes/Kubernetes/Kubernetes_Deep_Dive_NP/lesson-rbac/mia.crt \
--client-key=~/kubernetes/Kubernetes/Kubernetes_Deep_Dive_NP/lesson-rbac/mia.key

kubectl config set-context mia \
--cluster=acg.k8s.local --namespace=acg --user=mia

kubectl get pods --namespace=acg

kubectl apply -f role.yml --context=acg.k8s.local
