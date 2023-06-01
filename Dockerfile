FROM alpine

RUN apk add --no-cache wget

# https://github.com/liquibase/liquibase/releases
ENV LIQUIBASE_VERSION=4.21.1
ENV LIQUIBASE_HOME=/opt/liquibase

RUN mkdir -p $LIQUIBASE_HOME && \
    wget -q https://github.com/liquibase/liquibase/releases/download/v$LIQUIBASE_VERSION/liquibase-$LIQUIBASE_VERSION.tar.gz -O /tmp/liquibase.tar.gz && \
    tar -xzf /tmp/liquibase.tar.gz -C $LIQUIBASE_HOME && \
    chmod +x $LIQUIBASE_HOME/liquibase && \
    ln -s $LIQUIBASE_HOME/liquibase /usr/local/bin/liquibase && \
    rm /tmp/liquibase.tar.gz

COPY entrypoint.sh .
COPY liquibase sql

#ENTRYPOINT ["./entrypoint.sh"]
ENTRYPOINT ["ls"]
