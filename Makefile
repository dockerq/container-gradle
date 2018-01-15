build:
	docker build -t dockerq/container-gradle:3.0 .
push:
	docker push dockerq/container-gradle:3.0
test:
	docker run -d --name gradle-test dockerq/container-gradle:3.0
clean:
	docker stop gradle-test-3.0
	docker rm gradle-test-3.0
