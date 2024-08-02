VERSION  := $$(git describe --tags --always)
TARGET   := telepresence

all: image publish

publish:
	docker push mheers/$(TARGET):$(VERSION)
	docker tag mheers/$(TARGET):$(VERSION) mheers/$(TARGET):latest
	docker push mheers/$(TARGET):latest

image:
	cd .devcontainer &&	docker build -t mheers/$(TARGET):$(VERSION) .
