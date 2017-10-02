   #!/bin/bash
   # Welcome script to display a message to users
   # Author: @theurbanpenguin
   # Date: 1/1/1971
   if [ $# -lt 1 ] ; then
   echo "Usage: $0 <name>"
   exit 2
   fi
   echo "Hello $1"
   exit 1
