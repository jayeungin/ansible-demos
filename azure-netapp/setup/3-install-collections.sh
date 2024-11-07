### --- RHEL9 CONTAINER --- ###

### assumes directory for container is mounted as /storage ###
### install python dependencies for Azure collection ###
pip3.11 install -r ../requirements.txt

### install Azure collection and NetApp.Azure collection ###
ansible-galaxy collection install azure.azcollection
ansible-galaxy collection install netapp.azure