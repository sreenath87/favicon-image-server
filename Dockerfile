FROM python:3.11.14-slim-trixie
RUN mkdir /code
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY main.py /code
CMD ["uvicorn", "main:app", "--host=0.0.0.0", "--port=8111"]
