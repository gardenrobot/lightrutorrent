# Light Rutorrent

A lightweight docker compose that sets up a torrent client with a web interface.

## Description

rTorrent + ruTorrent + Lighttpd + Traefik.

The goal of this project is a very lightweight docker setup that can be used to quickly spin up ruTorrent with important configuration in one place.

## Setup

1. Install docker compose.
1. Open `.env` and edit it according to the comments.
1. Forward ports if needed:
    - 80
    - 443
    - 49164
    - 6881/udp
1. Run `docker-compose up -d`
1. Run `docker-compose ps` and check that all 3 containers are up.
