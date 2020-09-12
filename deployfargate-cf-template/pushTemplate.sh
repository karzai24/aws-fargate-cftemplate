#!/usr/bin/env bash
# This will create Cloudformation requested by pushTemplate.yml
# ansible-playbook -i "./inventories/hosts" -e "Regions=us-east-1" plays/pushTemplate.yml -v
# Example of launching script: ./pushTemplate.sh us-east-1 

if [[ $# -lt 1 ]] ; then
    echo -e '\n# You need to provide a Region'
    echo -e '#\n'
    echo -e 'Please refer to README.md\n'
    exit 64 # sysexits "command line usage" error
fi

echo -e "\nVariables used:"
echo "# Region: $Region"

ansible-playbook -i "./inventories/hosts" -e "Region=$Region"  plays/pushTemplate.yml -v
RESULT=$?
echo -e "Return Code: $RESULT\n"
echo -e "Done.\n"
