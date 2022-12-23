# Setup dev

```bash
# check dev_yongwoon_network is exist
docker network

# If not exist, create netwoerk
docker network create dev_rust_actix_network
```

- docker build

```bash
docker-compose build --no-cache
```

- docker run

```bash
docker-compose up
```

- Initial postgresql ID/PW
  - User: postgres
  - PW : postgres

※ createdb is a command line utility which you can run from bash and not from **psql**

- Setup DB

  - Access DB container

  ```bash
  docker-compose exec db bash
  ```

  - Access sql server

  ```bash
  su postgres
  ```

  - Create DB user (db container)

  ```bash
  createuser -P -s -e admin
  # Enter password for new role: test1234
  # Enter it again: test1234
  ```

  - Create database (db container)

  ```bash
  createdb -O admin rust_actix_development
  ```
