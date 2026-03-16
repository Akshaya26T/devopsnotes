FROM ubuntu:24.04

LABEL version="1.0"
LABEL release-notes="docker image for running azure devops deployment agent inside a container"
LABEL maintainer="Singam Tech Inc (https://github.com/Singam-Tech-Inc/)"
LABEL lastupdated="Akshaya Thirisangu"


# Install dependencies for Azure DevOps agent
RUN apt update && apt install -y \
    curl \
    tar \
    libicu-dev \
    libssl3t64 \
    libkrb5-3 \
    zlib1g \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user
RUN useradd -m agent

# Download and extract the agent
RUN mkdir -p /opt/agent && cd /opt/agent && \
    curl -fkSL -o vstsagent.tar.gz https://download.agent.dev.azure.com/agent/4.269.0/vsts-agent-linux-arm64-4.269.0.tar.gz && \
    tar -zxvf vstsagent.tar.gz && \
    rm vstsagent.tar.gz

# Copy and make the script executable
COPY deployagent.sh /deployagent.sh
RUN chmod +x /deployagent.sh

# Default command
CMD ["/bin/bash", "/deployagent.sh"]