
FROM python:3.13-slim

WORKDIR /app

RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel \
    && python -m pip install --no-cache-dir Flask

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
