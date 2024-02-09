#!/bin/bash

# Run ansible-playbook
ansible-playbook ./harden.yaml

# Run additional commands
echo -e "1) Change SSH Port:\n $(grep -E '^Port ' /etc/ssh/sshd_config)\n"
echo -e "2) Disable Direct root login:\n $(grep -E '^PermitRootLogin ' /etc/ssh/sshd_config)\n"
echo -e "3) Only allow specific users to SSH in using their SSH keys:\n $(grep -E '^AllowUsers ' /etc/ssh/sshd_config)\n"
echo -e "4) UFW with default incoming deny all rule:\n $(ufw status)\n"
echo -e "5) Open ports only for SSH and specific range of 1000-2000 tcp only:\n $(ufw status)\n"
echo -e "6) Install and enable 2Gb swapfile:\n $(swapon --show)\n"