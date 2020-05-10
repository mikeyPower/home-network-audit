#Python script that will be used to analyse items such as 
#1.number of times devices have arised
#2.First and last time device was shown
#3.How many times each device has been on the network


import os
from xml.dom import minidom
directory = "nmap_data/"
host_list = []

for filename in os.listdir(directory):
	xmldoc = minidom.parse(directory+filename) #.documentElement

	#for child in xmldoc.childNodes:
    		#print(child)
	itemlist = xmldoc.getElementsByTagName('host')
	for i in itemlist:
		host = i.getElementsByTagName("address")[0]
		print(host.attributes['addr'].value)
		if i not in host_list:
			host_list.append(i)
		else:
			continue


print(len(host_list))
#print(host_list)
for i in host_list:
#	print(i.attributes['addr'].value)
#	print(i)
