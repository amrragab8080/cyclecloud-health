# Cyclecloud Health
A comprehensive compute cluster and data science platform targeted for healthcare and life sciences (HCLS) workloads. The motivation for this github is to
help researchers get up and running quickly with a platform flexible for running a diverse range of HCLS workloads.
### Components
JupyterHub endpoint (Ubuntu 18.04) using the Azure DataScience including Slurm cluster (CentOS 7)
1) Tightly coupled (hpc)
2) Embarassingly parallel (htc),
3) GPU accelerated workloads (gpu)
4) Include docker/singularity

Setup Azure CycleCloud according to the [documentation](https://docs.microsoft.com/en-us/azure/cyclecloud/qs-install-marketplace).
After ```git clone --recursive``` this repo we first need to upload the latest cyclecloud-docker project:
```
cd cyclecloud-docker
cyclecloud project upload <storage_container>
```
Next we upload the datascience-vm project:
```
cd cyclecloud-data-science-vm
cyclecloud project upload <storage_container>
```
Finally we will upload the main cyclecloud-health project
```
cd cyclecloud-health-cluster
cyclecloud project upload <storage_container>
```
### Deployment
```cyclecloud import_cluster "cyclecloud-health" -f templates/slurm-cluster.txt -c slurm```
<p align="center">
  <src="/imgs/dashboard.png?raw=true"/>
</p>
