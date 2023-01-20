!#/bin/bash

	#The history file to be sent
	history >> HistoryFile.txt
	
  	#Installing mailutils
  	mail --version
  	sudo apt-get install mailutils
  	sudo apt install ssmtp
  	sudo nano /etc/ssmtp/ssmtp.conf

<<comment
	  I'm sending it to an email I created with a strange name, just for testing.
	  So feel free to bother me. You're welcome :) 	
comment


	# Here's what I edited


<<comment
	 #mail I sent from
	SERVER=bishobahy@gmail.com

	mailhub=smtp.gmail.com:587

	AuthUser=bishobahy@gmail.com
	
	#password of app passwaords from google
	Authpass= >> an app password that was created by google
	UseTLS=YES
	UseSTARTTLS=YES

	# Where will the mail seem to come from?
	#rewriteDomain=
	rewriteDomain=gmail.com

	# name of your virtualbox
	hostname= -VirtualBox
comment

  	
  	mail -A HistoryFile.txt bishobahy@gmail.com
  	

<<comment
	Then we press ( Ctrl + d )
comment
