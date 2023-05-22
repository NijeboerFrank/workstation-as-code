all: bootstrap 

bootstrap:
	ansible-playbook -i hosts -K bootstrap.yml

format:
	prettier --prose-wrap always --print-width 79 --loglevel silent -w "**.md"

