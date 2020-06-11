# Protocol Buffers

This is a mechanism to convert your data in binary format which takes very small storage as compared to other forms(JSON, XML etc). Which is great advantage for internet transactions.

To convert your data/message in this format we have to follow below steps
1. Define your message/data type in `proto` file - example 
1. Generate code for this message/data we need to pass this `proto` file to protoc compiler along with required language, required code path and file. and this will generate your code.
1. Once you have your code you can import it and use it in your program


## Defining A Message Type



## Generate your proto code for different languages with single container

Below command will generate a `data.pb.go` file
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc -I=/repo --go_out=/repo/ /repo/data.proto
```

Below command will generate a `data_pb2.py` file
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc -I=/repo --python_out=/repo/python /repo/data.proto
```
Below command will generate a `person.py` file
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc -I=/repo --js_out=/repo/nodejs /repo/data.proto
```

Below command will generate a `data.pb.cc` and `data.pb.h` files
```
docker run -it -v ${PWD}:/repo akumar261089/protoc-builder:latest protoc -I=/repo --cpp_out=/repo/cpp /repo/data.proto
```
