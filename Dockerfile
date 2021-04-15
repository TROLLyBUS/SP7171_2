FROM alpine
RUN apk update && apk add nasm gcc musl-dev
COPY main.asm .
RUN nasm -f elf64 main.asm && gcc -m64 main.o -no-pie
CMD ./a.out

