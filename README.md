# HimzoSCH

This is the rails based web project of the **Pulcsi és Foltmékör** group

## Requirements
 * Ruby 3.0.3
 * Postgresql 15.0
 * Redis (for hot reload during development)
 
**OR**

* Docker with compose


## Setup

For the application to run you need to setup a database and optionally a Redis isntance.

### Without docker

 * Set up Postgresql DB with default user/password `postgres/postgres`
 * Copy the `.env.example` file to `.env` and set up the DB port
 * Run `rails db:setup` to create the databases

 * **WITH Rails 7 You have to run with `bin/dev` instead of `rails s`**

### With docker

 * Create a `.env` file from the example
 * There is a `docker-compose.dev.yml` file to set up DB and Redis for you
 * Run `docker compose -f docker-compose.dev.yml up -d`
 * After running you can set up the db with `rails db:setup`
 * **Run the app with `bin/dev`**

### Full docker setup (Recommended)
 * Create a `.env` file from the example
 * Build image with 
```bash
 docker compose -f docker-compose.dev.yml --profile=full_docker build
  ```

 * Run dev server with

```bash
 docker compose -f docker-compose.dev.yml --profile=full_docker up
```
This sets up docker in a way that both hot reload and db is working out of the box 
The project folder is attached as a volume, so every change is instantly reflected in the docker image.
This way it is not required to restart the server.

While its running you can access the server console with
```bash
docker compose -f docker-compose.dev.yml exec -it web bash
```
to run rails commands

# Javascript dependencies

Rails 7 works with `importmap-rails` instead of npm or Yarn. To add a Node dependency
use the following command (i.e React)

```bash
bin/importmap pin react@17.0.1
```

After that you can use it in any javascript file
```javascript
import React from "react"
import ReactDOM from "react-dom"
//...
```

to remove a dependency use
```bash
bin/importmap unpin react
```

# Hot reload
The app uses [Hotwire::Livereload](https://github.com/kirillplatonov/hotwire-livereload)
for easier development with TailwindCSS.
This require a Redis instance to run.
If you don't run it locally you can set the url in the `.env` file 
```dotenv
      REDIS_URL="redis://live-reload:6379/1"
```

If you want to disable it run
```bash
  bin/rails livereload:disable
```

If you don't have Redis then you can change the development part in `config/cable.yml`
to 
```yaml
development:
  adapter: async
```
# Possible issues

## Console says server already running, but its not
If you use `bin/dev` and the full docker development simultaneously, there is a possibility that `tmp/pids/server.pid`
does not get deleted. Delete it manually!

## Tailwind classes not getting applied
Tailwind uses its own bundler that only bundles the used css classes.
 * If you run the app with `rails s` then it does not get compiled automatically
 * I you run `assets:precompile` the new css files can be ignored. Delete all files from `public/assets`. **Don't run assets:precompile again**

## Missing .env file
If you develop in only docker, the compose file sets up all the necessary env variables,
but compose will look for the .env file. Create an empty one if there is none.
