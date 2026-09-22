#Last updated: 2026-09-21T13:54:36Z

FROM python:3.14.7-alpine
# FROM python:3

WORKDIR /app

COPY requirements.txt http_tarpit.py ./
RUN pip install --no-cache-dir -r requirements.txt

ENV TARPIT_HOST="0.0.0.0"
ENV TARPIT_PORT="80"
ENV TARPIT_ARGS=""

CMD ["sh", "-c", "exec uvicorn --host $TARPIT_HOST --port $TARPIT_PORT $TARPIT_ARGS http_tarpit:app"]
