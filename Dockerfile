# Dockerfile to build a flask app
FROM python:3.9
WORKDIR /usr
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python","-m","flask","run"]
