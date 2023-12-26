FROM alpine:latest

RUN apk add --update g++ git

RUN git clone https://github.com/mannazarov/cpp_fibonacci/ /home/andrew/lab1/src/

WORKDIR /home/andrew/lab1/src/

RUN g++ -o myapp main.cpp

CMD ["./myapp"]

