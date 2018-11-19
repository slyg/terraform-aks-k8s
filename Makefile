init:
	terraform init

create:
	@echo 
	@echo "📌 Reminder: use Azure Active Directory > App registrations to access the keys"
	@echo
	terraform apply

destroy:
	@echo
	@echo "📌 Reminder: use Azure Active Directory > App registrations to access the keys"
	@echo
	terraform destroy

.PHONY: init create destroy

