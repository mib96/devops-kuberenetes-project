# DevOps Project Kubernetes Deploy .NET App

### Step 1:

`install minikube or kubeadm on local machine or run App on EKS` 

### Step 2:

`containerize an application using Dockerfile`

### Step 3:

`push image to container registry like DockerHub or ECR`

### Step 4:

`create the Deployment by running the following command:`
`kubectl create -f deployment.yml`

### Step 5:

`create the Service by running the following command:`
`kubectl create -f service.yml`

### Step 6:

`access from your browser by running the following command:`
`kubectl port-forward deployment/devops-project-kubernetes-deployment 8081:8080`

### Step 7: 

`open your browser and type: localhost:8081`