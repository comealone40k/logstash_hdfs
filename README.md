# logstash_hdfs
Testing the logstash webhdfs plugin

# Required
* If Kerberos auth is enabled: principlal of user able to write to target in hdfs & keytab
* Also proper krb5.conf
* If SASL_SSL auth is enabled: SSL certification & key

# Running
* bash /usr/share/logstash/bin/logstash -f /tmp/logstash_webhdfs.properties --log.level debug
