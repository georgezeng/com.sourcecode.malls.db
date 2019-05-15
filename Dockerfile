FROM java:8
ARG project=mall-db
RUN echo "Asia/Shanghai" > /etc/timezone
ADD ${project}.jar ./${project}.jar
CMD java -jar ${project}.jar
EXPOSE 8080