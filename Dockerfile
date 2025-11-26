# Use the official Ubuntu base image
FROM ubuntu:latest

# Maintainer information
LABEL maintainer="ananda dhar <anandadhar087@gmail.com>"

# Update package lists
RUN apt-get update

# Default command to run
CMD ["echo", "Hello World..! from my first docker image"]

