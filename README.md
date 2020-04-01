# home-wifi-audit

As my machine is debian based I'm going to use that as my basis for the information to follow


Now in order to figure out what our current network IP address is and range we should perform our scans lets execute the following command to find this out.

    $ ifconfig

You should now see a lot of information, we are particularly are looking for the network information regarding WiFi this is at the bottom of my screen symbolised by wlan0. Here we will be able to determine the IP address of the device we are currently using as well as the range of IP addresses to scan. See below for example output of what were after.

    inet 111.111.11.56  netmask 255.255.255.0  broadcast 111.111.11.255

Now to determine the range to scan we need to know a little about CIDIR notation, essentially since are mask is 255.255.255.0 the range we are looking inspecting is 111.111.11.0 - 111.111.11.255 in total 256 IP addresses which is dontated as 111.111.11.0/24 in CIDIR notation. Now that we have our range lets start scanning.

    $ namp -sn 111.111.111.0/24

Here we can see a list of devices on the network from nmaps output.

## WireShark

Now in order to run WireShark from the terminal we can execute the following command;

    $ tshark -i wlan0 -c 1 -x -V
    
This will run WireShark in promiscuous mode, to run WireShark in monitor mode which is designed for sniffing packets on wireless networks we can run it in monitor mode by adding -I to the above command as shown.


    $ tshark -i wlan0 -c 1 -x -V -I



Installing NMAP

    $ sudo apt-get install nmap
    
    
Installing WireShark

    $ sudo apt-get install wireshark
