FROM nginx

RUN apt-get update
RUN apt-get install openssl

COPY ./cert.sh cert.sh
RUN chmod +x cert.sh
RUN ./cert.sh
