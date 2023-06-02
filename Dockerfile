FROM node:18

# openjdk is a liquibase dependency
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk=11.0.18 && \
    rm -rf /var/lib/apt/lists/*

# https://github.com/liquibase/liquibase/releases
ENV LIQUIBASE_VERSION=4.21.1
ENV LIQUIBASE_HOME=/opt/liquibase

RUN mkdir -p $LIQUIBASE_HOME && \
    wget -q https://github.com/liquibase/liquibase/releases/download/v$LIQUIBASE_VERSION/liquibase-$LIQUIBASE_VERSION.tar.gz -O /tmp/liquibase.tar.gz && \
    tar -xzf /tmp/liquibase.tar.gz -C $LIQUIBASE_HOME && \
    chmod +x $LIQUIBASE_HOME/liquibase && \
    ln -s $LIQUIBASE_HOME/liquibase /usr/local/bin/liquibase && \
    rm /tmp/liquibase.tar.gz

COPY . /

ENTRYPOINT ["/main.sh"]
