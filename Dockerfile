FROM debian:sid

ENV LANG en_US.utf8
RUN apt-get update && \
    apt-get install -y locales && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    apt-get upgrade -y && \
    apt-get install -y python3 sudo bash ca-certificates iproute2 python3-apt aptitude && \ 
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*