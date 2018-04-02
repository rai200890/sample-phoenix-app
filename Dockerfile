FROM elixir:1.6.4
ADD . .
RUN mkdir app
RUN mix local.hex --force && mix local.rebar --force && mix deps.get
WORKDIR app
