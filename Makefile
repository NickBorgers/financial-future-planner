.DEFAULT_GOAL := help

#help: @ List available tasks on this project
help: 
	@grep -E '[a-zA-Z\.\-]+:.*?@ .*$$' $(MAKEFILE_LIST)| tr -d '#' | sed -E 's/Makefile.//' | awk 'BEGIN {FS = ":.*?@ "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

#setup: @ Perform setup actions, really intended for inside a devcontainer
setup:
	go get -d ./...

#build: 
build:
	go build -a -installsuffix cgo -o swagger ./cmd/service/main.go