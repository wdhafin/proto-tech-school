gen:
	protoc --proto_path=proto --go_out=pb --go_opt=paths=source_relative --go-grpc_out=pb --go-grpc_opt=paths=source_relative proto/*.proto
	# REF : https://developers.google.com/protocol-buffers/docs/reference/go-generated

clean:
	rm pb/*.go

run: 
	go run main.go

test:
	go test -cover -race ./...