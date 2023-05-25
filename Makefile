ENV ?= dev

clean:
	rm -rf infrastructure/.terraform*
	rm -rf infrastructure/terraform.tfstate*
	rm -rf infrastructure/.terraform.lock.hcl

tf/apply:
	terraform -chdir=infrastructure apply -auto-approve tfplan

tf/destroy:
	terraform -chdir=infrastructure destroy -var-file=infrastructure/environments/$(ENV)/variable.tfvars -auto-approve

tf/fmt:
	terraform -chdir=infrastructure fmt

tf/fmt-check:
	terraform -chdir=infrastructure fmt -check

tf/init:
	terraform -chdir=infrastructure init -backend-config=infrastructure/environments/$(ENV)/backend.tfvars

tf/plan:
	terraform -chdir=infrastructure plan -var-file=infrastructure/environments/$(ENV)/variable.tfvars -out=tfplan

tf/validate:
	terraform -chdir=infrastructure validate
