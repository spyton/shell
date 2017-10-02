while read "$1" ; do
ping -c1 $server && servers_up="$servers_up $server"
done  
echo "The following servers are up: $servers_up"

