FROM java:8
ARG project=malls-db
RUN echo "Asia/Shanghai" > /etc/timezone
ADD ${project}.jar ./${project}.jar
CMD java -jar ${project}.jar
EXPOSE 8080