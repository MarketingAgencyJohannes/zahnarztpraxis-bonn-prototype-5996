FROM python:3.12-alpine
WORKDIR /srv
COPY index.html .
# Railway dynamically assigns $PORT — Python's http.server reads it from the shell.
CMD ["sh", "-c", "python -m http.server ${PORT:-8080} --bind 0.0.0.0"]
