## Intro

This is a playground app to experiment things related to Terraform, Kubernetes, Helm and Helm charts on an azure free tier account.

Most of the commands have their counterpart in the makefile for convenience.

## Install

Azure provides a neat way to quickly start with kubernetes:

Install kubetcl:

```
az aks install-cli
```

Credentials:

```
az aks get-credentials --resource-group sylvain-k8s-resources --name sylvain-k8s
```

Dashboard:

```
az aks browse --resource-group sylvain-k8s-resources --name sylvain-k8s
```
