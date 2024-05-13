FROM ubuntu:latest
LABEL authors="bang-yewon"

ENTRYPOINT ["top", "-b"]

# jdk17 Image Start
FROM openjdk:17
FROM ubuntu:latest
LABEL authors="bang-yewon"

ENTRYPOINT ["top", "-b"]

# jdk17 Image Start
FROM openjdk:17

# 인자 설정 - JAR_File
ARG JAR_FILE=./build/libs/ci-cdTest-0.0.1-SNAPSHOT.jar
# JAR_FILE 확인 : 해당 프로젝트에서 ./gradlew build 후 libs에 들어가 jar확인하기

# jar 파일 복제
COPY ${JAR_FILE} app.jar

# 인자 설정 부분과 jar 파일 복제 부분 합쳐서 진행해도 무방
#COPY build/libs/*.jar app.jar

# 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]
# 인자 설정 - JAR_File
ARG JAR_FILE=./build/libs/ci-cdTest-0.0.1-SNAPSHOT.jar
# JAR_FILE 확인 : 해당 프로젝트에서 ./gradlew build 후 libs에 들어가 jar확인하기

# jar 파일 복제
COPY ${JAR_FILE} app.jar

# 인자 설정 부분과 jar 파일 복제 부분 합쳐서 진행해도 무방
#COPY build/libs/*.jar app.jar

# 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]