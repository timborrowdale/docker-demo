# Build using: docker build -f Dockerfile -t go .
FROM ubuntu:14.04
MAINTAINER Tim Borrowdale <tim.borrowdale@zuto.com>

ENV JAR docker-demo-0.0.1-SNAPSHOT.jar

RUN apt-get update
RUN apt-get install default-jre

ADD build/libs/$JAR

RUN $JAR

EXPOSE 8080