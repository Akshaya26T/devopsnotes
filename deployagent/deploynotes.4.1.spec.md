# Build push and compose up script
create a shell script to run build script for both architecture, and optionally to push both images, docker-compose up -d should pickup the correct architecture based on the host and if the image is available 
```
export TARGETARCH=arm64
export VERSION=1.0
docker compose build
```
```
export TARGETARCH=amd64
export VERSION=1.0
docker compose build
```

```
./build_push_up.sh --repo itsupportsingamtech/azdevopsdeploymentagent --version 1.0 --push
```

## Examples
```
# Docker Hub org/image
./build_push_up.sh --repo itsupportsingamtech/azdevopsdeploymentagent --version 1.0 --push

# GHCR
./build_push_up.sh --repo ghcr.io/your-org/azdevopsdeploymentagent --version 1.0 --push

# Azure Container Registry (ACR)
./build_push_up.sh --repo yourregistry.azurecr.io/azdevopsdeploymentagent --version 1.0 --push
```