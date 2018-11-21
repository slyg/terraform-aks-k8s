init:
	terraform init

create-infra:
	@echo 
	@echo "📌 Reminder: use Azure Active Directory > App registrations to access the keys"
	@echo
	terraform apply

destroy-infra:
	@echo
	@echo "📌 Reminder: use Azure Active Directory > App registrations to access the keys"
	@echo
	terraform destroy

./chart/charts:
	helm dependency build ./chart

deploy-helm: ./chart/charts
	helm upgrade --install my-app ./chart --debug --dry-run

destroy-helm:
	helm delete --purge my-app

.PHONY: init create-infra destroy-infra create-helm destroy-helm

