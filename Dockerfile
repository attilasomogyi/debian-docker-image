FROM debian:sid

RUN apt-get update
RUN apt-get install -y locales
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
RUN apt-get upgrade -y
RUN apt-get install -y python3
RUN apt-get autoclean -y
RUN apt-get clean -y
RUN rm -rf /var/lib/apt/lists/*