FROM ubuntu

ENV M2_HOME="/var/jenkins/tools/apache-maven-3.5.2"
ENV JAVA_HOME="/var/jenkins/tools/jdk1.8.0_144"
ENV PATH=${M2_HOME}/bin:${JAVA_HOME}/bin:$PATH
RUN mkdir /var/jenkins/.m2
RUN chmod -R 777 /var/jenkins/.m2
