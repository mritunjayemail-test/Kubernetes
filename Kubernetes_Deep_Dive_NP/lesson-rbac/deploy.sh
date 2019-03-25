
openssl genrsa -out mia.key 2048

openssl req -new -key mia.key -out mia.csr -subj "/CN=mia/O=acg"

openssl x509 -req -in mia.csr -CA /Users/kumar/kubernetes/Kubernetes/Kubernetes_Deep_Dive_NP/lesson-rbac/mia.key -CAcreateserial -out mia.crt -days 365

kubectl config set-credentials mia \
--client-certificate=/Users/kumar/kubernetes/Kubernetes/Kubernetes_Deep_Dive_NP/lesson-rbac/mia.csr \
--client-key=/Users/kumar/kubernetes/Kubernetes/Kubernetes_Deep_Dive_NP/lesson-rbac/mia.key

kubectl config set-context mia \
--cluster=acg.k8s.local --namespace=acg --user=mia

kubectl get pods --namespace=acg

kubectl apply -f role.yml --context=acg.k8s.local
