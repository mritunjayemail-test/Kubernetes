###
kubectl apply -f hpademo.yml 
kubectl get deploy --namespace acg-ns
kubectl get hpa --namespace acg-ns

kubectl get nodes


# make stress load 
kubectl run -i --tty loader --image=busybox /bin/sh
while true; do wget -q -O- http://acg-lb.acg-ns.svc.cluster.local; done 

# CIDR range for node IP
kubectl get nodes -o jsonpath='{.items[*].spec.externalID}'

