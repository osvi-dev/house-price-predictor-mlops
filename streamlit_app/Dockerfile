FROM python:3.9-slim

WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./app.py /app/

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run", "app.py", "--server.address=0.0.0.0" ]