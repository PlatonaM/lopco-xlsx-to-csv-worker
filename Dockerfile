FROM alpine

RUN apk --no-cache add gnumeric curl ttf-freefont

RUN mkdir data_cache

WORKDIR /usr/src/converter

COPY . .

CMD [ "./converter.sh"]
