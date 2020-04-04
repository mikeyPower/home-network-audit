clean:
	rm -rf nmap_data/nmap_*.xml
	rm -rf wireshark_data/wireshark_*.pcapng
run:
	./nmap.sh
	./wireshark.sh
