FROM golang:latest
WORKDIR /app
COPY . /app
RUN go mod init example.com/m/v2
RUN go mod tidy
RUN go get github.com/prometheus/client_golang/prometheus
RUN go build -o reserva-salas
EXPOSE 8080
CMD ["./reserva-salas"]