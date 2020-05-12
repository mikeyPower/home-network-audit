# home-wifi-audit

What's really going on in your home network?

If your curious here is a tutorial on how to use Nmap and Wireshark (command line tshark) to find out just that, along with a few scripts to analyse the information while making the process of running these tools a bit easier.

## Nmap

Now in order to figure out what our current network IP address is and range we should perform our scans lets execute the following command to find this out.

    $ ifconfig

You should now see a lot of information, we are particularly looking for the network information regarding WiFi. This is at the bottom of my screen symbolised by wlan0. Here we will be able to determine the IP address of the device we are currently using as well as the range of IP addresses to scan. See below for example output of what were after.

    inet 111.111.11.56  netmask 255.255.255.0  broadcast 111.111.11.255

Now to determine the range to scan we need to know a little about CIDIR notation, essentially since are mask is 255.255.255.0 the range we are looking inspecting is 111.111.11.0 - 111.111.11.255 in total 256 IP addresses which is dontated as 111.111.11.0/24 in CIDIR notation. Now that we have our range lets start scanning.

    $ namp -sn 111.111.111.0/24

Here we can see a list of devices on the network from nmaps output.

## Wireshark

Now in order to run Wireshark from the terminal we can execute the following command;

    $ tshark -i wlan0 -c 1 -x -V
    
This will run WireShark in promiscuous mode, to run Wireshark in monitor mode which is designed for sniffing packets on wireless networks we can run it in monitor mode by adding -I to the above command as shown.


    $ tshark -i wlan0 -c 1 -x -V -I

In order to read an output file from Wireshark which are in pcap file format we simply enter.

    $ tshark -r <file>

## Prerequisite

Installing NMAP

    $ sudo apt-get install nmap
    
    
Installing Wireshark

    $ sudo apt-get install wireshark

Or we can simply use the following bash script:

    $ ./install.sh

## Run

Now in order to we execute both script in sequence we can execute the following Makefile command:

    $ make run

## Output 

tshark will continue to run until it is cancelled which can be achieved by performing Ctrl + c. We could also set a limit as to the number of packets we want to achieve by editing the wireshar.sh script and adding either -c for packet count or -n for various options in time.

The output files will be created in two seperate folders one for Nmap (see nmap_data/ folder)  and the other for tshark (see wireshark_data/ folder).

