FROM elixir

COPY install_dependencies.sh /docker/
RUN /docker/install_dependencies.sh

WORKDIR /usr/src/app

COPY mix.exs mix.lock ./
RUN mix deps.get

COPY . .

CMD ["./entrypoint.sh"]
