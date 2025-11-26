#!/bin/bash
function unkown_option() {
echo "--------------------------------------------------------------------------"
echo " Run the script like bellow command"
echo " MetricServer_installation.sh install"
echo " Here \"install\" is the argument"
echo "--------------------------------------------------------------------------"
}

[[ "$1" == "--help" || "$1" == "help" || "$1" == "-h" ]] && { unkown_option; exit 0;}

if [[ "$1" == 'install' ]]; then 
echo -e "\n-------------------------- Metric Server Installation in Progress --------------------------"
#kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml # this is from kubernetes SIGs
kubectl apply -f https://github.com/AbhiGowdaIndia/kubernetes/blob/main/MetricServer/components.yaml
echo -e "\n-------------------------- Metric Server Installation Completed --------------------------"
else 
unkown_option $1
exit 1
fi