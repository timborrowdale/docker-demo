# Build using: docker build -f Dockerfile -t go .
FROM java:8-jre
MAINTAINER Tim Borrowdale <tim.borrowdale@zuto.com>

ENV JAR docker-demo-0.0.1-SNAPSHOT.jar

ADD app/build/libs/$JAR $JAR

CMD java -jar $JAR

EXPOSE 8080
