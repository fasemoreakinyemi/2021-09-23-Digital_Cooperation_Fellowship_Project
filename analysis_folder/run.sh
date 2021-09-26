#!/usr/bin/env sh
# -*- coding: None -*-

main(){
#	create_dir 
#	pull_docker 
	start_docker

}

create_dir(){
	mkdir data
}

pull_docker(){
	sudo docker pull dagshub/ml-workspace-minimal
}

start_docker(){
	sudo docker run -d \
		-v "/${PWD}:/workspace" \
		-p 8080:8080 \
		--shm-size 2g \
		--restart always \
		dagshub/ml-workspace:latest
}

main
