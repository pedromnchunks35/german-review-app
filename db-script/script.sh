#!/bin/bash
docker run \
-d \
-p 5432:5432 \
--name german-gres \
-e POSTGRES_PASSWORD=12341234 \
-e PGDATA=/var/lib/postgresql/data/pgdata \
-v /run/media/pedromn35/disk2-home/projects/german-review-app/db:/var/lib/postgresql/data \
postgres