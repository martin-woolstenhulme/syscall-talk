FROM gcc:9.1

RUN apt-get update && apt-get -y install strace ltrace vim
