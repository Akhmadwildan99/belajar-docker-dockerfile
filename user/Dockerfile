FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S wildangroup
RUN adduser -S -D -h /app wildanuser wildangroup
RUN chown -R wildanuser:wildangroup /app
USER wildanuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go