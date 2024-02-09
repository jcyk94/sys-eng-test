FROM golang:1.19-buster

WORKDIR /chain
COPY . /chain

# install required tools
RUN apt update && \
      apt upgrade -y && \
      apt install -y build-essential curl wget jq && \
      apt install git 

# Clone BandChain Laozi version v2.5.4
RUN cd ~ && \
      git clone https://github.com/bandprotocol/chain && \
      cd chain && \
      git fetch && \
      git checkout v2.5.4

# Install binaries to $GOPATH/bin
RUN make install

CMD ["bash", "-c", "bandd version && exec bash"]
