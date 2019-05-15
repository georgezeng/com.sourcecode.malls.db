FROM java:8
ARG project
ARG version
RUN echo "Asia/Shanghai" > /etc/timezone
ADD ~/app/${project}/${project}-${version}.jar ./${project}.jar
CMD java -jar ${project}.jar
EXPOSE 8080