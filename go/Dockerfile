FROM golang:alpine

# set the working directory to the application directory
WORKDIR /go/src/gitrepo:10080/user/test/

# copy the application files needed for production (in this case, only the binary)
ADD . /go/src/gitrepo:10080/user/test/

# build binary for create minimal docker image
RUN go build hello_world.go

# expose the application on port 8000.
# This should be the same as in the port used in the application
EXPOSE 8000
CMD ./hello_world