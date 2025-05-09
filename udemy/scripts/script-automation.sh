#!/usr/bin/env bash

# Define directory for script(s)
dir="/vagrant/scripts"

read -r -p "Enter the script name: " script
read -r -p "Enter the name of the author: " fname
read -r -p "Enter the description for the script: " desc

echo "#!/usr/bin/env bash" > ${dir}/${script}
printf "\n"

echo "#######################################" >> ${dir}/${script}
printf "\n"

echo "#Author: " ${fname} >> ${dir}/${script}
printf "\n"

echo "#Date: " $(date) >> ${dir}/${script}
printf "\n"

echo "#Description: " ${desc} >> ${dir}/${script}
printf "\n"

echo "#Modified: " $(date) >> ${dir}/${script}
printf "\n"

echo "#######################################" >> ${dir}/${script}
printf "\n"

echo "" >> ${dir}/${script}
echo "exit 0" >> ${dir}/${script}

# Set executable permission
sudo chmod +x ${script}

# Open/modify in VIM
vim ${script}