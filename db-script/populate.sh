#!/bin/bash
set -e

psql -h localhost -p 5432 -v --username postgres --dbname postgres -f script.sql