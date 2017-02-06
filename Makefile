all: \
	jessie \
	jessie-docker

jessie:
	cd $(PWD)/packer/ && packer build debian-jessie.json
