## Copy SSH secret

```sh
kubectl get secret netbox-migration --namespace=netbox-migration -o yaml | sed 's/namespace: .*/namespace: test-migration/' | kubectl apply -f -
```