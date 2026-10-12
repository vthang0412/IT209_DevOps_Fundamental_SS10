
#!/bin/bash
set -e

# 1. Tao Custom Bridge Network
docker network inspect app-net >/dev/null 2>&1 || docker network create app-net

# 2. Tao Named Volume
docker volume inspect db-data >/dev/null 2>&1 || docker volume create db-data

# 3. Khoi chay PostgreSQL
docker rm -f db-server app-container 2>/dev/null || true

docker run -d \
  --name db-server \
  --network app-net \
  -e POSTGRES_DB=appdb \
  -e POSTGRES_USER=appuser \
  -e POSTGRES_PASSWORD=appsecret \
  -v db-data:/var/lib/postgresql/data \
  postgres:15-alpine

# Cho Database san sang
until docker exec db-server pg_isready -U appuser -d appdb >/dev/null 2>&1; do
  sleep 2
done

# 4. Khoi chay Backend tren cung Network
docker run -d \
  --name app-container \
  --network app-net \
  -p 8081:3000 \
  -e DB_HOST=db-server \
  -e DB_PORT=5432 \
  -e DB_NAME=appdb \
  -e DB_USER=appuser \
  -e DB_PASSWORD=appsecret \
  hw-backend:v1

echo "Network, Volume, Database va Backend da duoc tao."
docker ps
