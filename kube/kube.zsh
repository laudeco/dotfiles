#Kubectl multiple config file support
export KUBECONFIG=''
for f in `ls ~/.kube/config/`
do
    export KUBECONFIG="$HOME/.kube/config/$f:$KUBECONFIG";
done
