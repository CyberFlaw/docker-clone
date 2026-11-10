VM     = alpine
ARCH   = arm64          
BIN    = docker-clone
LOCALBIN    = macos-docker-clone

build-local:
	go build -o bin/$(LOCALBIN) .

build:
	CGO_ENABLED=0 GOOS=linux GOARCH=$(ARCH) go build -o bin/$(BIN) .

deploy: build
	scp bin/$(BIN) $(VM):/usr/local/bin/$(BIN)

run: deploy
	ssh -t $(VM) 'mydocker run /bin/sh'
