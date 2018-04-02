migrate:
	docker-compose run --rm web mix ecto.migrate

new:
	docker-compose run --rm web mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez --force && mix phx.new . --no-brunch

console:
	docker-compose run --rm web iex -S mix

shell:
	docker-compose run --rm web bash

test:
	docker-compose run --rm web mix test
