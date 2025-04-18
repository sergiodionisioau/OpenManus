FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt
CMD ["python", "src/main.py"]  # Update with your actual entrypoint
