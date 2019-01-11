VERSION=0.0.1

build:
	docker build -t riskingh-base .

tag:
	docker tag riskingh-base:latest riskingh/base:$(VERSION)
	docker tag riskingh-base:latest riskingh/base:latest

push: build tag
	docker push riskingh/base:$(VERSION)
	docker push riskingh/base:latest
