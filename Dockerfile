FROM elixir

COPY install_dependencies.sh /docker/
RUN /docker/install_dependencies.sh

WORKDIR /usr/src/app
