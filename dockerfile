# 1. Используем базовый образ Python
FROM python:3.10

# 2. Устанавливаем рабочую директорию
WORKDIR /app

# 3. Копируем файл зависимостей
COPY requirements.txt ./

# 4. Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копируем исходный код приложения
COPY . .

# 6. Открываем порт 5000
EXPOSE 5000

# 7. Указываем команду запуска приложения
CMD ["python", "app.py"]
