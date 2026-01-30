FROM python:3.12-slim

WORKDIR /app

COPY index.html styles.css ./

ENV PORT=8000
EXPOSE 8000

CMD ["sh", "-c", "python -m http.server ${PORT} --bind 0.0.0.0"]
