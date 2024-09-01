.PHONY = build s r b clean stop

image_name = rocker/verse
container_name = r_container

build:
	docker build -t $(image_name) .

s: FORCE
	docker run -d --rm --name $(container_name) -p 8787:8787 -v $(PWD)/container:/home -e DISABLE_AUTH=true $(image_name)
	open http://localhost:8787

r: FORCE
	docker run -it --rm --name $(container_name) -v $(PWD):/home -p 8788:8787 -e DISABLE_AUTH=true $(image_name) R

b: FORCE
#	docker run -it --rm --name $(container_name_r) -v $(PWD):/work/ -p 8789:8787 -e DISABLE_AUTH=true $(image_name) /bin/bash
	docker exec -it $(container_name) /bin/bash

clean: FORCE
	docker image rm $(image_name) 

stop: FORCE
	docker container stop r_container

FORCE:
