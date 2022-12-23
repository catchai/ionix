
# construimos nuestra imagen webapp

docker build -t hello-world .

docker run -p 80:8080 hello-world

docker login 

docker tag hello-world 63038688/hello-world

docker push 63038688/hello-world:latest

# Creamos el helm chart 
```
helm create helloworld-ionix

```

# Instalamos nuestro hello page
```
helm package helloworld-ionix 
helm install helloworld  helloworld-ionix-0.1.0.tgz 
```

# Visualizamos nuestros servicios
```
kubectl get svc --watch
```

~/space/prueba_ionix/1_4_deployhelm $ > kubectl get pods
NAME                                          READY   STATUS             RESTARTS   AGE
helloworld-helloworld-ionix-697bdff7d-hxgbr   1/1     Running            0          2m20s