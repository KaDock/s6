REPO := kalledk
NAME := s6
TAG := latest

IMAGE := $(REPO)/$(NAME):$(TAG)


ABS_PATH := $(dir $(abspath $(MAKEFILE_LIST)))


.PHONY: build run

all: build

build:
	docker build -t $(IMAGE) $(ABS_PATH)/Docker

run: build
	docker run --rm -i -t $(IMAGE)

shell: build
	docker run --rm -i -t ${IMAGE} /bin/sh
