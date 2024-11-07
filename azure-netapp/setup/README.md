# Manual Setup
## Steps to manually setup IDE to run playbooks to use the netapp.azure collection. NOT using an execution environment.

## 1. Download RHEL9 UBI to local machine
- Login to registry.redhat.io via podman or docker:
'''
podman login registry.redhat.io
Username: {REGISTRY-SERVICE-ACCOUNT-USERNAME}
Password: {REGISTRY-SERVICE-ACCOUNT-PASSWORD}
'''

- Pull RHEL9 UBI from registry
'podman pull registry.redhat.io/ubi9/ubi:latest'

## 2. Setup Ansible and install Python
- Enable subscription-manager to get access to collections in Automation Hub
'subscription-manager enable --username username --password password --auto-attach'

- Install ansible-core, python3.11, and pip3.11
dnf install ansible-core python3.11 python3.11-pip -y

## 3. Install Python packages required for collections.
Assuming directory for container is mounted as /storage

- Install python dependencies for Azure collection
'pip3.11 install -r ../requirements.txt'

- Install Azure collection and NetApp.Azure collection
'''
ansible-galaxy collection install azure.azcollection
ansible-galaxy collection install netapp.azure
'''