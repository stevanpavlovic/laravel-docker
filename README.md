# stevanpavlovic/laravel-docker

This is just a small set of configuration files used for building a development environment useful for Laravel projects.
Feel free to also use this for your non-Laravel projects. 

### Installation instructions:
- Open your prefered shell and navigate to your desired project's root.
- Initialize a git submodule pointing to this repo: `git submodule add git@github.com:stevanpavlovic/laravel-docker.git docker`. You can use any folder name you like, instead of using `docker`.
- Change your directory to `docker`: `cd docker/`.
- Copy the example environment configuration file to the actual one (`cp .env.example .env`) and set up your instance-specific details.
- Run `docker-compose up -d`

Now you can:
- Access your web app at `http://{COMPOSE_PROJECT_NAME}.127.0.0.1.nip.io:{NGINX_SERVER_PORT}/`.
- Access your phpmyadmin app at `http://{COMPOSE_PROJECT_NAME}.127.0.0.1.nip.io:{PHPMYADMIN_SERVER_PORT}/`.
- Run your PHP related commands (inside of the `docker/` directory) by using this kind of signature: `docker-compose exec app php artisan help`.
- Run your Yarn related commands (inside of the `docker/` directory) by using this kind of signature: `docker-compose run yarn install`.
