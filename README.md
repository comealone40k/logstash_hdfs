# logstash_hdfs
Testing the logstash webhdfs plugin

# Required
* If Kerberos auth is enabled: principlal of user able to write to target in hdfs & keytab
* Also proper krb5.conf
* active TGT if Kerberos auth required
* If SASL_SSL auth is enabled: SSL certification & key

# Running
* bash /usr/share/logstash/bin/logstash -f /tmp/logstash_webhdfs.properties --log.level debug

In case you run into No Kerberos credentials available: Invalid UID in persistent keyring name
remove this line from the krb5.conf:
 default_ccache_name = KEYRING:persistent:%{uid}