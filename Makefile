
run: ;
	docker run -it --security-opt seccomp:unconfined -v "${CURDIR}:/app" -w /app gcc-strace

build: ;
	docker build -t gcc-strace .

ass-app: ;
	gcc -c test.S
	ld -o test test.o

c-app: ;
	gcc test.c -o test