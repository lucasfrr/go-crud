FROM golang:1.23 AS build

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o api main.go

FROM scratch

WORKDIR /app

COPY --from=build /app/api ./

EXPOSE 8000

CMD [ "/api" ]
