#!/bin/bash
   # Filename: redirection.sh
   # Description: Illustrating standard input, output, error
   # and redirecting them
   ps -A -o pid -o command > p_snapshot1.txt
   echo -n "Running process count at snapshot1: "
   wc -l < p_snapshot1.txt
   echo -n "Create a new process with pid = "
   tail -f /dev/null &  echo $!    # Creating a new process
   echo -n "Running process count at snapshot2: "
   ps -A -o pid -o command > p_snapshot2.txt
   wc -l < p_snapshot2.txt
   echo
   echo "Diff bewteen two snapshot:"
   diff p_snapshot1.txt p_snapshot2.txt
