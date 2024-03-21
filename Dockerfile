FROM python:3.10
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /application
COPY ./registerapp/requirements.txt /application/
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080

