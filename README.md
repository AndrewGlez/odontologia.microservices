# ODONTOLOGÍA

## Clone this repo
```git clone https://github.com/AndrewGlez/odontologia.microservices```

```git pull origin master```

## Build the images
### for `pacientes`, `fichas` and `odontograma` microservices
```docker build -t <image_name> <path to folder>```

### for nginx server
```docker build -t <image_name> <root_folder>```

## Deploying containers
### Using docker compose
```docker compose up -d```
