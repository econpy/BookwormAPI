ubuntu-install:
	apt-get install python-numpy
	apt-get install python-mysqldb
	mkdir /var/log/presidio
	touch /var/log/presidio/log.txt
	chown -R www-data:www-data /var/log/presidio
