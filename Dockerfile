FROM cassandra:3.10
# Install cUrl 
RUN apt-get update && apt-get install --yes curl 

# Add cassandra-lucene-index jar from maven 
RUN cd /usr/share/cassandra/lib && \ 
 curl -LO http://search.maven.org/remotecontent?filepath=com/stratio/cassandra/cassandra-lucene-index-plugin/3.10.0/cassandra-lucene-index-plugin-3.10.0.jar 

RUN cd /usr/share/cassandra/lib && \ 
 curl -LO http://central.maven.org/maven2/com/vividsolutions/jts/1.13/jts-1.13.jar