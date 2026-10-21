#!/usr/bin/env bash

read -p 'Threads: ' Threads
read -p 'Concurrent Users: ' Concurrent
read -p 'Duration in sec: ' Duration
read -p 'Delay in ms: ' Delay
read -p 'Run Count: ' runCount


sh /home/ahmed/Downloads/apache-jmeter-5.6.3/bin/jmeter -Jthreads=$Threads -Jconcurrent=$Concurrent -Jduration=$Duration -Jdelay=$Delay -n -t ber-loadtest.jmx -l ber_${runCount}.jtl
sh /home/ahmed/Downloads/apache-jmeter-5.6.3/bin/jmeter -g ber_${runCount}.jtl -o ber_${runCount}

rm -rf ber_${runCount}.jtl jmeter.log 
#mv ber_${runCount} /var/www/html/
