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

Install tiller:

```
helm init
```

Dashboard:

```
az aks browse --resource-group sylvain-k8s-resources --name sylvain-k8s
```

## Get info

To check the effects of the chart, here is a way to generate the manifest:

```
helm get manifest my-app
```
