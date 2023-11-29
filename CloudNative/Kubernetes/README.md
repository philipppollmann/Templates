![KubernetsBanner](https://sarahcit.files.wordpress.com/2020/03/kubernetes-banner-1170x401-1.png)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

# Project structure
```yaml
example-kubernetes-project/
├── manifests/
│   ├── pods/
│   │   ├── app-pod.yaml
│   │   ├── db-pod.yaml
│   │   └── ...
│   ├── services/
│   │   ├── app-service.yaml
│   │   ├── db-service.yaml
│   │   └── ...
│   ├── deployments/
│   │   ├── app-deployment.yaml
│   │   ├── db-deployment.yaml
│   │   └── ...
│   ├── configmaps/
│   ├── secrets/
│   └── ...
├── scripts/
│   ├── deploy.sh
│   ├── update-config.sh
│   ├── run-tests.sh
│   └── ...
├── config/
│   ├── app-config.yaml
│   ├── db-config.yaml
│   ├── environment-vars.env
│   └── ...
├── helm/
│   ├── my-chart/
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   ├── templates/
│   │   └── ...
```

## README.md
File for documentation
## CHANGELOG.md
File for changes with an impact to the project
## Manifest directory 
