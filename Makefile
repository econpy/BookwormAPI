ubuntu-install:
	apt-get install python-numpy
	apt-get install python-mysqldb
	mkdir /var/log/presidio
	touch /var/log/presidio/log.txt
	chown -R www-data:www-data /var/log/presidio
	chmod +x APIimplementation.py dbbindings.py knownHosts.py
	mv ./APIimplementation.py /usr/lib/cgi-bin/ 
	mv ./dbbindings.py /usr/lib/cgi-bin/
	mv ./knownHosts.py /usr/lib/cgi-bin/
	chown www-data:www-data /usr/lib/cgi-bin/APIimplementation.py
	chown www-data:www-data /usr/lib/cgi-bin/dbbindings.py
	chown www-data:www-data /usr/lib/cgi-bin/knownHosts.py
	chmod 755 /usr/lib/cgi-bin/APIimplementation.py
	chmod 755 /usr/lib/cgi-bin/dbbindings.py
	chmod 755 /usr/lib/cgi-bin/knownHosts.py
