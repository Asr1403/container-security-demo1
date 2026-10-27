
FROM python:3.13-slim

WORKDIR /app

RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel jaraco.context \
    && python -m pip install --no-cache-dir Flask \
    && python -c "import importlib.metadata as m; print('wheel:', m.version('wheel')); print('jaraco.context:', m.version('jaraco.context'))"

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
