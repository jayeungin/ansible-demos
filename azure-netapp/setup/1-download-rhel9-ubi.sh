### --- LOCAL MACHINE --- ###

# login to registry.redhat.io via podman or docker
podman login registry.redhat.io 
# docker login registry.redhat.io
### Username: {REGISTRY-SERVICE-ACCOUNT-USERNAME}
### Password: {REGISTRY-SERVICE-ACCOUNT-PASSWORD}

# pull image from registry
podman pull registry.redhat.io/ubi9/ubi:latest
# docker pull registry.redhat.io/ubi9/ubi:9.4-1214.1729773476