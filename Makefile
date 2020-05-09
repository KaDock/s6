REPO := KaDock
NAME := s6
TAG := latest

IMAGE := $(REPO)/$(NAME):$(TAG)


.PHONY: build run all shell

all: build

build:
	docker build -t $(IMAGE) ./Docker

run: build
	docker run --rm -i -t $(IMAGE)

shell: build
	docker run --rm -i -t ${IMAGE} /bin/sh
