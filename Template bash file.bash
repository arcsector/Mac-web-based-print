#!/bin/sh
#---------------------------------------------------------------------------------------#
#		 	   			Author: 			George Haraksin					   		 	#
#						Company:			Pacific Advisors							#
#						Supervisor:			Chris McMahan							    #
#						Date of Revision:	3/29/2017									#
#						Description:		This program installs a printer using the   #
#											lpadmin command and proprietary PPDs		#
#																						#
# PLEASE PUT ANY FUTURE CHANGES IN THE REVISION HISTORY ALONG WITH YOUR NAME, DATE OF   #
# REVISION, AND A SUMMARY OF THE CHANGES YOU MADE:									    #
#																						#
# Revision History: | [DATE]   |	 [NAME]  		|  		[DESCRIPTION]				#
#					| 3/29/17  |  George Haraksin  |  The program is completed			#
#---------------------------------------------------------------------------------------#
#Define variables

#Set current directory
BASEDIR=$(dirname "$0")

#Set Printer IP
IP="[IPADDRESSHERE]"
SOCKETIP="socket://$IP"

#Set Printer Name
PRINTERNAME="[NAMEHERE]"
PRINTERNAME_="[NAMEHERE]"

#Set PPD Path
PPDPATH="[FILEPATHFROMDIRECTORY]"
PPDNAME="[DRIVERNAMEWITHEXTENSIONNEED]"
FILEPATH="$BASEDIR$PPDPATH$PPDNAME"

#Configure the printer
lpadmin -p "$PRINTERNAME_" -E -v "$SOCKETIP" -P "$FILEPATH" -D "$PRINTERNAME"
