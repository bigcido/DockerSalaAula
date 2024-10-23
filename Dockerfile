FROM: openjdk:21-jdk
LABEL maintainer="Alvaro Dias"
RUN mkdir -p /usr/src/appjava
RUN mkdir -p /usr/src/projjava
RUN chmod 777 /usr/src/appjava
RUN chmod 777 /usr/src/projjava
COPY . /usr/src/appjava
RUN rm /usr/src/appjava/Dockerfile
RUN javac -cp -d /usr/src/appjava/Eu.java
WORKDIR /usr/src/projjava
ENTRYPOINT ["java", "-cp", "/usr/src/appjava", "Eu"]
VOLUME /usr/src/projjava
