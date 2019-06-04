FROM gcc:9.1

RUN apt-get update && apt-get install strace && ltrace
