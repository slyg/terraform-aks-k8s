.chart_folder := ./chart
.chart_depdendencies := ./chart/charts
.app_name := my-app

infra-init:
	terraform init

infra-create:
	@echo 
	@echo "📌 Reminder: use Azure Active Directory > App registrations to access the keys"
	@echo
	terraform apply

infra-destroy:
	@echo
	@echo "📌 Reminder: use Azure Active Directory > App registrations to access the keys"
	@echo
	terraform destroy

$(.chart_depdendencies):
	helm dependency build $(.chart_folder)

helm-deploy-debug: $(.chart_depdendencies)
	helm upgrade --install $(.app_name) $(.chart_folder) --debug --dry-run

helm-deploy: $(.chart_depdendencies)
	helm upgrade --install $(.app_name) $(.chart_folder)

helm-clean-deps:
	rm -rf $(.chart_depdendencies)
	rm $(.chart_folder)/requirements.lock

helm-destroy:
	helm delete --purge $(.app_name)

helm-get-manifest:
	helm get manifest $(.app_name) > manifest.yaml

.PHONY: infra-init infra-create infra-destroy helm-deploy helm-deploy-debug helm-clean-deps helm-destroy helm-get-manifest
