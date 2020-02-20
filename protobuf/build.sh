#!/bin/bash


# def
mkdir ../pb -p  
protoc -I/usr/local/include -I.\
 -I$GOPATH/src \
 --go_out=plugins=grpc:../pb \
 def.proto


# cloud_storage
mkdir ../pb/cloud_storage -p  
protoc -I/usr/local/include -I.\
 -I$GOPATH/src \
 --go_out=plugins=grpc:../pb/cloud_storage \
 cloud_storage.proto



# jwt
mkdir ../pb/jwt
protoc -I/usr/local/include -I.\
 -I$GOPATH/src \
 --go_out=plugins=grpc:../pb/jwt \
 jwt_service.proto
