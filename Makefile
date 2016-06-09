default: build

build:
	go build -o bin/fusis

run:
	sudo bin/fusis balancer --single

docker:
	docker build -t fusis .

deps:
	go get -u github.com/kardianos/govendor
	govendor add +external
	govendor sync

clean:
	sudo rm -rf /etc/fusis

test:
	govendor test +local
