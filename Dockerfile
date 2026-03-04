FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --upgrade wheel && \
    pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]