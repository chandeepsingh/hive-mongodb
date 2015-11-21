# Deploy MongoDB libraries to all server nodes running Hive

wget https://oss.sonatype.org/content/repositories/releases/org/mongodb/bson/3.0.2/bson-3.0.2.jar
wget https://oss.sonatype.org/content/repositories/releases/org/mongodb/mongodb-driver-core/3.0.2/mongodb-driver-core-3.0.2.jar
wget https://oss.sonatype.org/content/repositories/releases/org/mongodb/mongo-java-driver/3.0.2/mongo-java-driver-3.0.2.jar
wget https://github.com/mongodb/mongo-hadoop/releases/download/r1.4.0/mongo-hadoop-hive-1.4.0.jar
wget https://github.com/mongodb/mongo-hadoop/releases/download/r1.4.0/mongo-hadoop-core-1.4.0.jar

mkdir /opt/cloudera/parcels/CDH/jars/mongo-hadoop/
ssh root@<all hosts> mkdir /opt/cloudera/parcels/CDH/jars/mongo-hadoop/

cp * /opt/cloudera/parcels/CDH/jars/mongo-hadoop/
scp * root@<all hosts>:/opt/cloudera/parcels/CDH/jars/mongo-hadoop/

ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/bson-3.0.2.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/bson-3.0.2.jar
ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongodb-driver-core-3.0.2.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongodb-driver-core-3.0.2.jar
ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongo-hadoop-core-1.4.0.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongo-hadoop-core-1.4.0.jar
ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongo-hadoop-hive-1.4.0.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongo-hadoop-hive-1.4.0.jar
ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongo-java-driver-3.0.2.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongo-java-driver-3.0.2.jar

ssh root@<all hosts> ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/bson-3.0.2.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/bson-3.0.2.jar
ssh root@<all hosts> ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongodb-driver-core-3.0.2.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongodb-driver-core-3.0.2.jar
ssh root@<all hosts> ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongo-hadoop-core-1.4.0.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongo-hadoop-core-1.4.0.jar
ssh root@<all hosts> ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongo-hadoop-hive-1.4.0.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongo-hadoop-hive-1.4.0.jar
ssh root@<all hosts> ln -s /opt/cloudera/parcels/CDH/jars/mongo-hadoop/mongo-java-driver-3.0.2.jar /opt/cloudera/parcels/CDH/lib/hadoop/lib/mongo-java-driver-3.0.2.jar




