FROM ubuntu:22.04

WORKDIR /app
COPY . /app

# Update package lists and install and Ansible
RUN apt-get update && \
      apt-get install -y ansible && \
      rm -rf /var/lib/apt/lists/*

RUN chmod +x ./test.sh

CMD ["bash", "-c", "./test.sh && exec bash"]
