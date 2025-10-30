#! /bin/sh

make down && make run-services && depscompile && mix ecto.migrate  --log-migrations-sql && make run-backend-shell-tunneled
