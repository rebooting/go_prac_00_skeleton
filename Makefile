build:
	go build -o run.exe

run: build
	./run.exe

create_project: test_env
	go mod init github.com/rebooting/$$GOPROJ


test_env:
ifeq ($(shell echo $$GOPROJ),)
	echo "Please set GOPROJ environment variable"
	echo "export GOPROJ=<project name>"
	exit 1
endif