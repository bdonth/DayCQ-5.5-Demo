#!/bin/sh
# This script should deploy or build and deploy a given package

help() { 
echo "parameters: hostname port package-path package-name"
}

  
case $1 in
--help | -h | -help | -hlep)
help
;;
*)
if [ `echo $@ | wc -w` -gt 3 ]
then
curl -u admin:admin -F name=$4 -F file=@$3 http://$1:$2/crx/packmgr/service.jsp
curl -u admin:admin http://$1:$2/crx/packmgr/service.jsp?cmd=inst\&name=$4
else
help
fi;;
esac
