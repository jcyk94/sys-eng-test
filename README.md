# Systems Engineer / SysAdmin Application Test

Assessment Technologies:
- Vagrant
- Packer

Requirement:
- Build a cluster of VMs that are connected to each other with the above technologies
- OS Required: Centos 7
- Packages required:
   - Docker
   - Nomad (https://www.nomadproject.io/)
   - Consul (https://www.consul.io)

- Configuration:
   - 1 Nomad Server + 1 Consul Server on 1 VM
   - 1 Nomad Client + 1 Consul Client on 1 VM
   - Simple Firewall Rules (Default: deny all), Allow for Consul, Nomad Ports

## Assessment Criteria
- Able to run simple job file, allocate to Nomad Client
- Able to run simple service on Consul, working Service Discovery (dnsmasq)
