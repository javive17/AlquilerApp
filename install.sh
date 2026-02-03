#!/bin/bash
set -e

echo "🚀 Instalando Alquiler App (producción, sin Nginx)"

if ! command -v docker &>/dev/null; then
  echo "❌ Docker no está instalado"
  exit 1
fi

if [ ! -f .env ]; then
  cp install/env.example .env
  echo "⚠️  Edita el archivo .env y vuelve a ejecutar"
  exit 0
fi

docker compose -f install/docker-compose.prod.yml up -d --build

docker compose exec web python manage.py migrate
docker compose exec web python manage.py collectstatic --noinput

echo "✅ Instalación completa"
echo "👉 Accede en http://TU_SERVIDOR:8000"
