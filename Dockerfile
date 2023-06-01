FROM alpine
ENV LIQUIBASE_VERSION=4.22.0 # https://github.com/liquibase/liquibase/releases
RUN apk update
RUN apk add wget
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz"
RUN tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz
RUN rm liquibase-${LIQUIBASE_VERSION}.tar.gz
COPY entrypoint.sh .
COPY liquibase sql
#ENTRYPOINT ["./entrypoint.sh"]
ENTRYPOINT ["pwd"]
