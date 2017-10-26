#sshpass installation
#ssh-keygen
# creation of password,user,server csv file
OLDIFS=$IFS
IFS=","
while read password user server 
	do 
	echo "$password"
	echo "$user"
	echo "$server"
	echo "$user@$server"
	sshpass -p "$password" ssh-copy-id -o StrictHostKeyChecking=no "$user@$server"
	done<$1
IFS=$OLDIFS

