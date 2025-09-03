# Nine Thousand Pipeline

A Helm chart for deploying Tekton pipelines for AI/ML model operations and GitOps workflows.

## Overview

This Helm chart provides a comprehensive set of Tekton pipelines and tasks for:
- Model validation and testing
- Image scanning and signing
- SBOM generation
- Model deployment to Kubeflow Pipelines
- S3-based model retraining workflows

## Features

- **GitHub Integration**: Automated triggers for GitHub events
- **Model Operations**: Support for model scanning, validation, and deployment
- **Security**: Image scanning, signing with cosign, and SBOM generation
- **Kubeflow Integration**: Deploy models to Kubeflow Pipelines (KFP)
- **S3 Integration**: Model lookup and retraining from S3 storage

## Installation

Deploy the pipeline to your OpenShift/Kubernetes cluster:

```bash
helm template . | oc apply -f- -n nine-thousand-models
```

## Configuration

Key configuration values in `values.yaml`:

- `USER_NAME`: Default user for operations
- `git_server`: Git server hostname
- `cluster_domain`: Cluster domain
- `model_git_url`: URL to the models repository
- `image_scan`: Enable container image scanning
- `image_signing`: Enable image signing with cosign
- `generate_sboms`: Generate Software Bill of Materials

## Pipeline Components

### Tasks
- **Security**: Image scanning, signing, SBOM generation
- **Model Operations**: Model scanning, metadata updates
- **Deployment**: Build model containers, deploy to KFP
- **Git Operations**: Fetch commit hash, apply features

### Pipelines
- `github-pipeline`: Main GitHub-triggered pipeline
- `model-pipeline`: Model-specific operations
- `kfp-deploy-pipeline`: Kubeflow Pipelines deployment
- `s3-model-retrain-pipeline`: S3-based model retraining

### Triggers
- GitHub webhooks for automated pipeline execution
- Event listeners for different pipeline types
- S3 event triggers for model retraining

## Requirements

- OpenShift/Kubernetes cluster
- Tekton Pipelines operator
- Appropriate RBAC permissions
- Cosign for image signing

## Version

Current version: 0.0.6

For more information, visit: https://rhoai-mlops.github.io/mlops/