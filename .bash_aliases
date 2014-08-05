alias runningDocker='sudo docker ps -l -q'
alias removeAllDockerContainers='docker rmi $(docker images -q)'
alias stopAllRunningDockerContainers='sudo docker stop $(sudo docker ps -a -q)'
