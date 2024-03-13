# 컨테이너 베이스 이미지 설정 (JAVA)
FROM openjdk:11-jre-slim

# 환경 변수 설정: 애플리케이션의 홈 디렉토리를 /apps로 설정
ENV APP_HOME=/apps

# 빌드 파일 경로 설정
ARG JAR_FILE_PATH=build/libs/jobposting-0.0.1-SNAPSHOT.jar

# 작업 디렉토리 설정
WORKDIR $APP_HOME

# 빌드된 jar 파일 복사
COPY $JAR_FILE_PATH app.jar

# 컨테이너 포트 설정
EXPOSE 8080

# jar 파일 기반 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
