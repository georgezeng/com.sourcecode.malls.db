FROM java:8
ARG project=malls.db
ARG version=0.0.1-SNAPSHOT
ARG atifact=${project}-${version}.jar
RUN echo "Asia/Shanghai" > /etc/timezone
ADD target/${atifact} ./${project}.jar
CMD java -jar ${project}.jar
EXPOSE 8080