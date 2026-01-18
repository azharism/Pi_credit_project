FROM python:3.11-slim AS build
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip wheel --wheel-dir /wheels -r requirements.txt
COPY . .

FROM python:3.11-slim
WORKDIR /app
COPY --from=build /wheels /wheels
RUN pip install --no-index --find-links=/wheels -r requirements.txt
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]


