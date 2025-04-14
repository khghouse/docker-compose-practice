# 자바 이미지
FROM amazoncorretto:17

# 타임존 설정
ENV TZ=Asia/Seoul

# 작업 디렉토리 설정
WORKDIR /app

# JAR 파일을 컨테이너로 복사
COPY build/libs/docker-compose-practice-0.0.1-SNAPSHOT.jar app.jar

# 애플리케이션 포트 (예: 8080)
EXPOSE 8080

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
