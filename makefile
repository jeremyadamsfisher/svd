DOCKER_IMG=jeremyadamsfisher1123/stable-diffusion-video

build:
	docker build -t $(DOCKER_IMG) .

push: build
	docker tag $(DOCKER_IMG) $(DOCKER_IMG):latest
	docker push $(DOCKER_IMG):latest