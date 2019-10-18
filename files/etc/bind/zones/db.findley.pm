;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	core1.home. admin.core1.findley.pm. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL


;	name servers - NS records
			IN		NS		core1.findley.pm.

;	name servers - A records
core		IN		A		10.0.0.10
core1		IN		A		10.0.0.11
core2		IN		A		10.0.0.12
wolf		IN		A		10.0.0.13
forge		IN		A		10.0.0.14
git			IN		A		10.0.0.41

;	CNAME Records

filestore 	IN		CNAME	wolf.findley.pm.
monitor		IN		CNAME	wolf.findley.pm.
bookstack	IN		CNAME	wolf.findley.pm.