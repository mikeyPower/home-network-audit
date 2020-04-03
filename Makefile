clean:
	rm -rf nmap_*.xml
	rm -rf wireshark_*.pcapng
run:
	./nmap.sh
	./wireshark.sh
