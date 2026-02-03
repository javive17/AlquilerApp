# Alquiler App

Sistema SaaS de gestión de alquileres (Spanish-only).

## Features
- Panel para propietarios
- Subida de comprobantes por inquilinos
- Validación manual + recibos PDF
- Analytics multi-propiedad
- Notificaciones por email
- Docker / Portainer ready
- Sin Nginx

## Requisitos
- Docker
- Docker Compose

## Instalación (1 comando)

```bash
git clone TU_REPO
cd alquiler_app
cp install/env.example .env
nano .env
./install/install.sh
