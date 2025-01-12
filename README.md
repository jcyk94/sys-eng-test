# Systems Engineer / SysAdmin Application Test

Assessment Technologies:

- Ansible
- Docker

Requirement:

1. Create a simple ansible playbook to harden an OS (Ubuntu 22.04) installation.

   - Change SSH default port
   - Disable Direct root login
   - Only allow specific users to SSH in using their SSH keys
   - UFW with default incoming deny all rule
   - Open ports only for SSH and specific range of 1000-2000 tcp only
   - Install and enable 2Gb swapfile

2. Create a docker image that runs the following project binary using Dockefile. It must be able to build locally.

https://github.com/bandprotocol/chain

Version to build: v2.5.4

## Assessment Criteria

- Able to run ansible playbook to do a basic hardening of an OS.
- Able to create and customize Dockerfile to build proper docker image.

#### Steps to run

##### 1)

```
sudo docker build  -t ubuntu .
docker run -it --privileged ubuntu
```

##### 2)

```
sudo docker build --platform linux/amd64 -t chain .
sudo docker run --platform linux/amd64 -it chain
```
