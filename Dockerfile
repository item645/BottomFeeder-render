FROM eclipse-temurin:17-alpine
LABEL maintainer="item645"
COPY bottom-feeder-0.0.1.jar bottom-feeder-0.0.1.jar
EXPOSE 8080
ENTRYPOINT [ \
"java", \
"-Xmx500m", \
"-Dserver.port=$PORT", \
"-jar", \
"bottom-feeder-0.0.1.jar", \
"--spring.profiles.active=prod", \
"--spring.datasource.url=jdbc:h2:file:/data/bottomfeeder", \
"--spring.datasource.driver-class-name=org.h2.Driver", \
"--spring.jpa.hibernate.ddl-auto=update" \
]