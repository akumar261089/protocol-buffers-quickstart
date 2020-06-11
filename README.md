# Protocol Buffers

This is a mechanism to convert your data in binary format which takes very small storage as compared to other forms(JSON, XML etc). Which is great advantage for internet transactions.

To convert your data/message in this format we have to follow below steps
1. Define your message/data type in `proto` file - example 
1. Generate code for this message/data we need to pass this `proto` file to protoc compiler along with required language, required code path and file. and this will generate your code.
1. Once you have your code you can import it and use it in your program


## Defining A Message Type



## Generate your proto code for different languages with single container

Below command will generate a `service.pb.go` file
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc --proto_path=/repo/ --proto_path=/opt/protobuf/include --go_out=plugins=grpc:/repo/golang/proto service.proto 
```

Below command will generate a `service_pb2.py` file
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc --proto_path=/repo/ --proto_path=/opt/protobuf/include --python_out=/repo/python/ service.proto
```

Below command will generate a `request.js` and `response.js` file
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc --proto_path=/repo/ --proto_path=/opt/protobuf/include --js_out=/repo/nodejs/ service.proto 
```

Below command will generate a `service.pb.cc` and `service.pb.h` files
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc --proto_path=/repo/ --proto_path=/opt/protobuf/include --cpp_out=/repo/cpp/ service.proto
```
