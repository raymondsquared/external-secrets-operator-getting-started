# external-secrets-operator-getting-started

External Secrets Operator is a Kubernetes operator that integrates external secret management systems like AWS Secrets Manager, HashiCorp Vault, Google Secrets Manager, Azure Key Vault, IBM Cloud Secrets Manager, CyberArk Conjur and many more. The operator reads information from external APIs and automatically injects the values into a Kubernetes Secret.

[https://external-secrets.io/latest/introduction/getting-started/](https://external-secrets.io/latest/introduction/getting-started/)

[![License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/mit)

External-secrets runs within your Kubernetes cluster as a deployment resource. It utilizes CustomResourceDefinitions to configure access to secret providers through SecretStore resources and manages Kubernetes secret resources with ExternalSecret resources.

## 🚀 Features

- **External Secrets Operator**: It simplifies secret management by integrating with external secret management systems like AWS Secrets Manager, HashiCorp Vault, and Google Secret Manager. It automatically fetches secrets from these external sources and injects them into Kubernetes Secrets, ensuring secure and dynamic management of sensitive information within your applications. This approach promotes best practices by separating secrets from application code and centralizing their management, enhancing security and reducing operational overhead.
- **Kubernetes Secrets** : Kubernetes Secrets are used to store sensitive data such as passwords, API keys, and database credentials. Secrets are used by pods, services, and other resources to access external data. [https://kubernetes.io/docs/concepts/configuration/secret/](https://kubernetes.io/docs/concepts/configuration/secret/)

## 🧰 Prerequisites

- Minikube

## 🛠 Installation

```bash
# Install dependencies
make install
```

## 📚 Usage

### App Commands

```bash
make run-k8s                            # Start the kubernetes (minikube)
make install                            # Install OPA Gatekeeper
make create-secrets                     # Create secrets (both AWS and app's secrets)
make deploy-secret-store                # Deploy ESO secret store
make deploy-external-secret             # Deploy ESO external secret

make deploy-apps                        # Deploy test applications
make test-apps                          # Test if you can get secrets out the pods
```

## 🤝 Contributing

We welcome contributions to Kubernetes Deployment Strategy! Please see the [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to submit pull requests, report issues, and suggest improvements.

## 📜 License

This repo is open-source software licensed under the [MIT license](http://www.apache.org/licenses/mit).

## 🙏 Acknowledgements

- [Kubernetes](https://kubernetes.io/) for the amazing framework
- [ESO](https://external-secrets.io/) also for the amazing framework
- All our contributors and supporters!

---

Made with ❤️ by the raymondsquared. Happy coding!
