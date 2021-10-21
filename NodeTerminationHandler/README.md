AWS Node Termination Handler
AWS Node Termination Handler Helm chart for Kubernetes. For more information on this project see the project repo at https://github.com/aws/aws-node-termination-handler.

Prerequisites
Kubernetes >= 1.11
Installing the Chart
Add the EKS repository to Helm:

helm repo add eks https://aws.github.io/eks-charts
Install AWS Node Termination Handler:

To install the chart with the release name aws-node-termination-handler and default configuration:

helm upgrade --install aws-node-termination-handler \
  --namespace kube-system \
  eks/aws-node-termination-handler
To install into an EKS cluster where the Node Termination Handler is already installed, you can run:

helm upgrade --install --recreate-pods --force \
  aws-node-termination-handler --namespace kube-system eks/aws-node-termination-handler
If you receive an error similar to Error: release aws-node-termination-handler failed: <resource> "aws-node-termination-handler" already exists, simply rerun the above command.

The configuration section lists the parameters that can be configured during installation.

Uninstalling the Chart
To uninstall/delete the aws-node-termination-handler deployment:

helm delete --purge aws-node-termination-handler
The command removes all the Kubernetes components associated with the chart and deletes the release.