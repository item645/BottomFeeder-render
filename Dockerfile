FROM eclipse-temurin:17-alpine
LABEL maintainer="item645"
COPY bottom-feeder-0.0.1.jar bottom-feeder-0.0.1.jar
ENTRYPOINT [ \
"java", \
"-Xmx500m", \
"-jar", \
"bottom-feeder-0.0.1.jar", \
"--spring.profiles.active=prod", \
"--spring.datasource.url=jdbc:h2:file:/data/bottomfeeder", \
"--spring.datasource.driver-class-name=org.h2.Driver", \
"--spring.jpa.hibernate.ddl-auto=update", \
"--bf.application.url=https://bottom-feeder.onrender.com" \
]
