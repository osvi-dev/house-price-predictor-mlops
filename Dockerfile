FROM python:3.11-slim as builder

# Para perfomance es mejor instalar las librerias primero
COPY src/api/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

COPY src/api /app/
COPY models/ /app/models/

EXPOSE 8000

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]