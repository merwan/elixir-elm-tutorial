FROM elixir

COPY install_dependencies.sh /docker/
RUN /docker/install_dependencies.sh

WORKDIR /usr/src/app

COPY mix.exs .
RUN mix local.hex --force
RUN mix deps.get

COPY . .
RUN cd assets && npm install && node node_modules/brunch/bin/brunch build

CMD ["mix phx.server"]
