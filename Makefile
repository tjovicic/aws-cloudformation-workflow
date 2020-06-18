create-stack:
	aws cloudformation create-stack --stack-name Resources --template-body file://resources.yml --parameters file://params.json
	aws cloudformation wait stack-create-complete --stack-name Resources
update-stack:
	aws cloudformation update-stack --stack-name Resources --template-body file://resources.yml --parameters file://params.json
	aws cloudformation wait stack-update-complete --stack-name Resources
	 