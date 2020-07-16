FROM alpine

RUN apk update && apk upgrade && apk add gnumeric curl ttf-freefont

RUN mkdir data_cache

WORKDIR /usr/src/converter

COPY . .

CMD [ "./converter.sh"]
