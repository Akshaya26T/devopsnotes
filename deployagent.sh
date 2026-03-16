#!/usr/bin/env bash
set -euo pipefail

# This script is intended to run inside a container.
# It installs the Azure DevOps agent into /azagent and starts it as a long-running process.

AGENT_DIR=/azagent
mkdir -p "$AGENT_DIR"
cd "$AGENT_DIR"

# Download and extract the agent.
curl -fkSL -o vstsagent.tar.gz https://download.agent.dev.azure.com/agent/4.269.0/vsts-agent-linux-x64-4.269.0.tar.gz
tar -zxvf vstsagent.tar.gz

# Required environment variables
: "${AZP_URL:?AZP_URL is required (e.g. https://dev.azure.com/yourOrg)}"
: "${AZP_TOKEN:?AZP_TOKEN is required (your PAT)}"
: "${AZP_PROJECT:?AZP_PROJECT is required (project name)}"
: "${AZP_ENVIRONMENT:=development}"
: "${AZP_AGENT_NAME:=agent-${HOSTNAME}}"

# Configure the agent only if it isn't already configured.
# The agent writes a `.agent` file when config is complete.
if [ ! -f ".agent" ]; then
  echo "Configuring Azure DevOps agent..."
  ./config.sh \
    --environment \
    --environmentname "${AZP_ENVIRONMENT}" \
    --acceptteeeula \
    --agent "${AZP_AGENT_NAME}" \
    --url "${AZP_URL}" \
    --work _work \
    --projectname "${AZP_PROJECT}" \
    --auth PAT \
    --token "${AZP_TOKEN}"
else
  echo "Agent already configured; skipping config step."
fi

# In containers, run.sh keeps the agent process in the foreground.
# Use exec so the agent process becomes PID 1 (best practice for containers).
exec ./run.sh
