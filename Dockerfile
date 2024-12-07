FROM python:3.11

RUN apt-get update && apt-get install -y --no-install-recommends curl build-essential


RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

ARG WORKDIR_PATH=/app
WORKDIR ${WORKDIR_PATH}
COPY . ${WORKDIR_PATH}/

RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi

COPY . /app/

EXPOSE 8000

# Команда для запуска сервиса
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
