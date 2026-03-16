Bug:
Breaking change
invalid docker compose script without mention of base image or docker file

Use ubuntu24lts slim to run as daemon and shell into bash in the container
No build required?

# chat2
"Binds": [
			"deploymentdevagent:/azagent:rw",
			"/host_mnt/Users/username/devopsnotes/deployagent/deployagent.sh:/deployagent.sh:rw"
		], 

# add docker file
```Bash
chmod +x ./deployagent.sh 
root@e3d8dac02449:/# ./deployagent
bash: ./deployagent: No such file or directory
root@e3d8dac02449:/# ./deployagent.sh
./deployagent.sh: line 12: curl: command not found
```

## Remove SUDO script
```Bash
Configuring Azure DevOps agent...
Must not run with sudo
```
Remove Sudo inside config.sh