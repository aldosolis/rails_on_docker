# Create a new rails app using

1. Rename .env.example with you own values

2. Create your src directory
```bash
mkdir src
```

3. Run the following command to generate a new rails app

```bash
docker-compose run --rm webapp rails new . -d postgresql
```

4. Replace database with database.yml.example

```bash
cp database.yml.example src/config/database.yml
```

5. Create databases

```bash
docker-compose run --rm webapp rails db:create
```

6. Run rails server

```bash
docker-compose up
```