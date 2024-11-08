# Azure NetApp Execution Environment
Ansible EE and playbooks to utilize the netapp.azure collection that provides the ability to create, modify, and delete NetApp Files Volumes.

## Build the execution environment.
1. Rename the `example-ansible.cfg`* file to `ansible.cfg`
2. Replace the token with your Automation Hub token. Generated here - https://console.redhat.com/ansible/automation-hub/token
3. Run the following command in the **../azure-netapp** directory: `ansible-builder build -t azure-netapp-ee:latest`

## After the execution environment image builds, you can view it by:
1. Podman CLI: 
    'podman images'
2. Podman Desktop: Images > azure-netapp-ee:latest
![alt text](<./images/ee-images.png>)

## Confirm the execution environment has desired collections
**For testing EE only.** It is recommended to use `ansible-galaxy run playbook.yml --execution-environment=ee_image` instead of `podman exec -it ee_image` to execute playbooks. See https://docs.ansible.com/ansible/latest/getting_started_ee/run_execution_environment.html for more.
1. CLI: 
    'podman exec -it azure-netapp-ee:latest'
2. Podman Desktop: Press the play button next to the image
![alt text](<./images/start-ee.png>)
3. Confirm Ansible is present: `ansible --version`
```
bash-5.1$ ansible --version
ansible [core 2.15.13]
  config file = None
  configured module search path = ['/runner/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python3.9/site-packages/ansible
  ansible collection location = /runner/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/local/bin/ansible
  python version = 3.9.18 (main, Oct  4 2024, 00:00:00) [GCC 11.4.1 20231218 (Red Hat 11.4.1-3)] (/usr/bin/python3)
  jinja version = 3.1.4
  libyaml = True
```
4. List Ansible collections: `ansible-galaxy collection list`
```
bash-5.1$ ansible-galaxy collection list

# /usr/share/ansible/collections/ansible_collections
Collection         Version
------------------ -------
ansible.utils      5.1.2  
azure.azcollection 3.0.0  
netapp.azure       21.11.0
```
5. Exit container