FROM python:3.7.2-alpine3.8
LABEL maintainer="avantesb@gmail.com"
LABEL name="my-python-app"
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN cd front
CMD ["mkdocs", "serve"]
EXPOSE 8000
VOLUME /my_volume