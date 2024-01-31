FROM golang:1.18 as build
WORKDIR /app
COPY . .
#RUN CGO_ENABLED=0 GOOS=linux go build -o server
RUN GOOS=linux go build -o server


# imagem minima
FROM scratch
WORKDIR /app
COPY --from=build /app/server .
ENTRYPOINT [ "./server" ]