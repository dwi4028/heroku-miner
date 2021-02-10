FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev \
        && wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz

RUN tar xf cpuminer-opt-linux.tar.gz /cpuminer
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
