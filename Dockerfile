FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "-m", "uvicorn", "weatherapi:app", "--host", "0.0.0.0", "--port", "8000"]

EXPOSE 8000/tcp