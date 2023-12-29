# Cybermycelium Infrastructure Setup Guide

## Overview

This guide provides instructions for setting up the Cybermycelium infrastructure, a big data architecture.

## Prerequisites

- Docker
- Kubernetes
- Basic network protocol, load balancing, and SSL knowledge

## Setup Steps

### 1. Clone the Repository

### 2. Navigate to the Repository Directory

### 3. Grant execution permissions and deploy the infrastructure:

chmod +x ./scripts/deplyInfrastructure.sh ./scripts/deplyInfrastructure.sh

### 4. Run Setup Scripts

## Script Descriptions

- **determineOsPackageManager.sh**: Identifies the OS package manager.
- **isDockerRunning.sh**: Checks Docker's status.
- **isMinikubeUp.sh**: Checks Minikube's status.
- **installDependencies.sh**: Installs all necessary dependencies.
- **createKindCluster.sh**: Initializes a Kubernetes cluster.

## Configuration Files

- **kind-config.yaml**: Template for Kind Kubernetes setup.

## Additional Notes

- Replace placeholders with actual values.
- Ensure Docker and Kubernetes are correctly installed and configured.

## Contributing

Feel free to contribute to the repository by forking, committing your changes, and creating a pull request.

## License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
