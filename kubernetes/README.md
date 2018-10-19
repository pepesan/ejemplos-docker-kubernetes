# Basado en el tutorial de https://rominirani.com/tutorial-getting-started-with-kubernetes-with-docker-on-mac-7f58467203fd

# Requisitos
Tener instalado Docker for Mac o Windows
Tener activado kubernetes
(Comprueba en la configuración de cubernetes que está seleccionado docker-for-desktop)
Tener disponible el comando kubectl

# Instalación de Kubernetes Dashboard
kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

# Exposición del Dashboard 
kubectl get pods --namespace=kube-system
(Obtenemos el nombre del contenedor donde está el dashboard, varía de instalación en instalación)

kubectl port-forward kubernetes-dashboard-7798c48646-ctrtl 8443:8443 --namespace=kube-system

(ojito el kubernetes-dashboard-7798c48646-ctrtl es un ejemplo deberás substituirlo por el que te diga el comando get pods)

# Accediendo al DashBoard
https://localhost:8443/
(Te saltas la config)
Skip

Y ya accedes al Dashboard con todas las herramientas de configuración

# Compobando los nodos
Al pulsar en nodos deberá aparecer el docker-for-desktop como único nodo


# Lanzando contenedores

kubectl run hello-nginx --image=nginx --port=80
(Esto creará un pod)
kubectl get pods
(Aquí veremos ese pod)
También podremos verlos desde el menú Deployments
En los Réplica Sets veremos una réplica

# Exponiendo el pod como Servicio

kubectl expose deployment hello-nginx --type=LoadBalancer --name=hello-nginx-service

# Escalando el Servicio
kubectl scale --replicas=3 deployment/hello-nginx
(En los servicios deberíamos ver 3 instancias de pods)



# Creando Ficheros Kubernetes desde Ficheros docker-compose.yml
https://github.com/kubernetes/kompose
