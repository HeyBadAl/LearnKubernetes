FROM python:3.11.6-alpine3.18

WORKDIR /app 

COPY . /app 

RUN pip install --no-cache-dir -r requirements.txt 

EXPOSE 5000

CMD ["python", "app.py"]

