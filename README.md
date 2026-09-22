# HTTP Tarpit

HTTP tarpit, built using FastAPI and
[fastapi-tarpit](https://github.com/thus/fastapi-tarpit) middleware.

## Build & Run Docker Image

```bash
docker build -t http-tarpit .
docker run -d -p "8666:80" --restart "unless-stopped" http-tarpit
```

## Build & Run Docker Image with Compose

1. Edit `./docker-compose.example.yml` or one of the example compose files in `./docker-examples` as needed.
2. Copy and edit `./.env.example`  as needed.

```bash
cp ./.env.example ./.env && \
cp ./docker-compose.example.yml ./docker-compose.yml && \
```

3. bring the container up.

```bash
docker compose up -d && \
sleep 1 && \
docker compose logs
```
