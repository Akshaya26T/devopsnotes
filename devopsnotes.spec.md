``` Bash
mkdir azagent;
cd azagent;
curl -fkSL -o vstsagent.tar.gz https://download.agent.dev.azure.com/agent/4.269.0/vsts-agent-linux-x64-4.269.0.tar.gz;
tar -zxvf vstsagent.tar.gz; 
if [ -x "$(command -v systemctl)" ]; then 
  ./config.sh --environment --environmentname "development" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/akshayagthirusangu/ --work _work --projectname 'shelton-webapp' --auth PAT --token CyY6Ffa3LpEc5fGAvQHimXD84Tldvr1OEHKdV3uS0zMxon8BmCJJJQQJ99CCACAAAAAAAAAAAAASAZDO10uw --runasservice; 
  sudo ./svc.sh install; 
  sudo ./svc.sh start; 
else 
  ./config.sh --environment --environmentname "development" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/akshayagthirusangu/ --work _work --projectname 'shelton-webapp' --auth PAT --token CyY6Ffa3LpEc5fGAvQHimXD84Tldvr1OEHKdV3uS0zMxon8BmCJJJQQJ99CCACAAAAAAAAAAAAASAZDO10uw; 
  ./run.sh; 
fi
```
given docker volume volumea exists, create a docker compose yaml script for running the following script in a shellscript in deployagent.sh in the same folder as the docker file to run the container as daemon for azure devops deployment agent

mkdir azagent;
cd azagent;
curl -fkSL -o vstsagent.tar.gz https://download.agent.dev.azure.com/agent/4.269.0/vsts-agent-linux-x64-4.269.0.tar.gz;
tar -zxvf vstsagent.tar.gz; 
if [ -x "$(command -v systemctl)" ]; then 
  ./config.sh --environment --environmentname "environmentviariable" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/orgenvironmentvariable/ --work _work --projectname 'projectenvironmentvariable' --auth PAT --token tokenenvironmentvariable --runasservice; 
  sudo ./svc.sh install; 
  sudo ./svc.sh start; 
else 
  ./config.sh --environment --environmentname "environmentviariable" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/orgenvironmentvariable/ --work _work --projectname 'projectenvironmentvariable' --auth PAT --token tokenenvironmentvariable; 
  ./run.sh; 
fi
