
run: ;
	docker run -it --privileged --security-opt seccomp:unconfined -v "${CURDIR}:/app" -w /app gcc-strace

build: ;
	docker build -t gcc-strace .

a-app: ;
	gcc -c test.S
	ld -o test test.o

c-app: ;
	gcc test.c -o test