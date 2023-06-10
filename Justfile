bootstrap:
	ansible-playbook -i hosts -K bootstrap.yml

format:
	prettier --prose-wrap always --print-width 79 --loglevel silent -w "**.md"

update:
	ansible-playbook -i hosts bootstrap.yml --extra-vars @private_config.yml --tags update -K

install tags:
	ansible-playbook -i hosts bootstrap.yml --extra-vars @private_config.yml --tags {{ tags }} -K
