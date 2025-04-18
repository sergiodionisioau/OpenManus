# Stage 1: Builder
FROM python:3.9-slim as builder
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc python3-dev

WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# Stage 2: Runtime
FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY src/ .

ENV PATH=/root/.local/bin:$PATH \
    PYTHONPATH=/app \
    PIP_NO_CACHE_DIR=1

CMD ["flask", "run"]