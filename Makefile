.PHONY: run-k8s
run-k8s:
	minikube start --driver=docker

.PHONY: pre-install
pre-install:
	helm repo add external-secrets https://charts.external-secrets.io

.PHONY: install
install: 
	helm install external-secrets \
  external-secrets/external-secrets \
	-n external-secrets \
	--create-namespace

.PHONY: create-secrets
create-secrets:
	./create-aws-secrets.sh
	./create-k8s-secrets.sh

.PHONY: deploy-secret-store
deploy-secret-store:
	kubectl apply -f "basic-secret-store.yaml"

.PHONY: deploy-external-secret
deploy-external-secret:
	kubectl apply -f "basic-external-secret.yaml"

.PHONE: deploy-apps
deploy-apps:
	kubectl apply -f deployments.yaml

.PHONE: test-apps
test-apps:
	./tests.sh
