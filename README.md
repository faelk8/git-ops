


Inicar GO service.
```
go mod init webserverfc
```

Acessar o service.
```
go run main.go
```

Executando o container `--rm` mata o container quando finalizar.
```
docker run --rm -p 8080:8080 faelk8/gitops:lateste 
```