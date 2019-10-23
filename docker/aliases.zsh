alias dm='docker-machine'
alias adl-eval='eval $(docker-machine env adlogix-dev)'

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

alias dockercleannonei='docker rmi $(docker images | grep "<none>" | awk '{print $3}')'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'
