.PHONY: build

build:
	sam build

deploy-infra:
	sam build && aws-vault exec my-user --no-session -- sam deploy

deploy-site:
	aws-vault exec my-user --no-session -- aws s3 sync ./website s3://best-resume-ever

invoke-put:
	sam build && aws-vault exec my-user --no-session -- sam local invoke PutFunction