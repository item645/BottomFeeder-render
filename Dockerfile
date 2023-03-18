FROM eclipse-temurin:17-alpine
LABEL maintainer="item645"
COPY bottom-feeder-0.0.1.jar bottom-feeder-0.0.1.jar
RUN --mount=type=secret,id=secret_properties,dst=/etc/secrets/secret.properties
ENTRYPOINT [ \
"java", \
"-Xmx500m", \
"-jar", \
"bottom-feeder-0.0.1.jar", \
"--spring.config.import=file:/etc/secrets/secret.properties", \
"--spring.profiles.active=prod", \
"--spring.datasource.driver-class-name=org.postgresql.Driver" \
]
