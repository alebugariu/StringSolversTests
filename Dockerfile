# Download the base image ubuntu 16.04
FROM ubuntu:16.04

# Install the prerequisites + git, wget, unzip, sudo
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk python build-essential autoconf automake \
    libtool intltool flex bison git wget unzip sudo

# Set the encoding
ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

# Clone our repository and build our tool
RUN git clone https://github.com/alebugariu/StringSolversTests.git StringSolversTests && \
    cd StringSolversTests && chmod +x install.sh && ./install.sh