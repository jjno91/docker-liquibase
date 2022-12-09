FROM alpine
RUN apk update
RUN apk add liquibase
COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]