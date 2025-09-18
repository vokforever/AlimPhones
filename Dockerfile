FROM python:3.11-slim

WORKDIR /app

# Установка Python зависимостей
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копирование кода
COPY russian_phone_bot.py .

# Создание директории для логов
RUN mkdir -p /tmp && chmod 777 /tmp

# Создание пользователя для безопасности
RUN useradd -m -u 1000 botuser && chown -R botuser:botuser /app
USER botuser

# Переменная окружения для логирования
ENV PYTHONUNBUFFERED=1

CMD ["python", "russian_phone_bot.py"]
