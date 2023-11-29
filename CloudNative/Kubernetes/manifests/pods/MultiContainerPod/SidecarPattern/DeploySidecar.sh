kubectl apply -f sidecar-pod.yml

kubectl get pod sidecar-test

kubectl logs sidecar-pod -c sidecar