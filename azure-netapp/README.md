Ansible EE and playbooks to utilize the netapp.azure collection that provides the ability to create, modify, and delete NetApp Files Volumes.

Build the execution environment.
1. Rename the example-ansible.cfg file to ansible.cfg
2. Replace the token with your Automation Hub token. Generated here - https://console.redhat.com/ansible/automation-hub/token
3. Run the following command in the ../azure-netapp directory: ansible-builder build -t <azure-netapp-ee>:<tag>

After the execution environment image builds, you can view it by:
1. Podman CLI: podman images
2. Podman Desktop: Images > <azure-netapp-ee>:<tag>

Run the execution environment
1. Podman CLI: podman exec -it <azure-netapp-ee>:<tag>
2. Podman Desktop: Press the play button next to the image
![alt text](<./images/start-ee.png>)