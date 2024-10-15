FROM squidfunk/mkdocs-material
LABEL maintainer="avantesb@gmail.com"
LABEL name="my-python-app"
RUN apk add bash
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8000
WORKDIR /app/front
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
# CMD ["mkdocs", "serve"]
EXPOSE 8000
VOLUME /my_volume