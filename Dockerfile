FROM python:3.10.5

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8501

COPY ./Models ./Models
COPY ./app.py ./app.py

CMD ["streamlit", "run", "app.py"]