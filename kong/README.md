# kong

If you want to use enterprise edition, you need to create a `konglicense`.

```sh
tee kong-license2.yaml <<EOF
apiVersion: configuration.konghq.com/v1alpha1
kind: KongLicense
metadata:
  name: kong-license
  namespace: kong-system
rawLicenseString: '$(echo $KONG_LICENSE_DATA)'
EOF
```

Then, apply `konglicense` to your cluster.

```sh
kubectl apply -f kong-license.yaml
```
