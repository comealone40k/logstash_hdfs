FROM centos:centos7

#RUN echo "diskspacecheck=0" >> /etc/dnf/dnf.conf

ADD repos/ /tmp/

RUN mv /tmp/*.repo /etc/yum.repos.d/

RUN yum -y install epel-release

RUN yum update -y

RUN yum install syslog-ng wget nano logstash java-1.8.0-openjdk.x86_64 openssh-clients.x86_64 openssh-server -y

RUN yum install --enablerepo=elasticsearch elasticsearch -y

#RUN mv /tmp/hadoop-3.2.1.tar.gz $HOME/

#RUN tar -xf $HOME/hadoop-3.2.1.tar.gz

#RUN echo "export HADOOP_HOME=/hadoop-3.2.1" >> /etc/bashrc
#RUN echo "export HADOOP_CONF_DIR=/hadoop-3.2.1/etc/hadoop" >> /etc/bashrc
#RUN echo "export HADOOP_MAPRED_HOME=/hadoop-3.2.1" >> /etc/bashrc
#RUN echo "export HADOOP_COMMON_HOME=/hadoop-3.2.1" >> /etc/bashrc
#RUN echo "export HADOOP_HDFS_HOME=/hadoop-3.2.1" >> /etc/bashrc
#RUN echo "export YARN_HOME=/hadoop-3.2.1" >> /etc/bashrc
#RUN echo "export JAVA_HOME=/usr/lib/jvm/jre-openjdk" >> /etc/bashrc
#RUN echo "export PATH=$PATH:/usr/lib/jvm/jre-openjdk/bin:/hadoop-3.2.1/bin" >> /etc/bashrc

#RUN echo "export HDFS_NAMENODE_USER=\"root\"" >> /etc/bashrc
#RUN echo "export HDFS_DATANODE_USER=\"root\"" >> /etc/bashrc
#RUN echo "export HDFS_SECONDARYNAMENODE_USER=\"root\"" >> /etc/bashrc
#RUN echo "export YARN_RESOURCEMANAGER_USER=\"root\"" >> /etc/bashrc
#RUN echo "export YARN_NODEMANAGER_USER=\"root\"" >> /etc/bashrc

#RUN mv -f /tmp/core-site.xml $HADOOP_CONF_DIR/core-site.xml

#RUN mv -f /tmp/yarn-site.xml $HADOOP_CONF_DIR/core-site.xml

#RUN mv -f /tmp/hdfs-site.xml $HADOOP_CONF_DIR/core-site.xml

#RUN mv -f /tmp/mapred-site.xml $HADOOP_CONF_DIR/core-site.xml

#RUN exec bash && ./hadoop-3.2.1/bin/hadoop namenode -format

#RUN /etc/init.d/ssh start

#RUN cat /tmp/krb5.conf > /etc/krb5.conf

RUN bash /tmp/install_ruby_centos_7.sh


CMD sleep 1000000