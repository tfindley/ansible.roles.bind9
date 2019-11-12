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

;	A records - Infrastructure
{% for line in clients_reserved %}
{{line.hostname}}			IN			A			{{line.IP}}
{% endfor %}

;	CNAME Records
{% for line in dns_extzone_cname %}
{{line.from}}				IN			CNAME		{{line.to}}.{{dns_extzone}}.
{% endfor %}