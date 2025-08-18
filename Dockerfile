FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./src /app

EXPOSE 5000

CMD ["python3", "app.py"]
