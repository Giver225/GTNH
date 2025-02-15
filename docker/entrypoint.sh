#!/bin/bash

# Фикс кодировки для Minecraft
export LANG=C.UTF-8

# Инициализация Git
cd /data

# Проверяем наличие репозитория
if [ ! -d .git ]; then
    echo "Инициализируем Git-репозиторий..."
    git init
    git remote add origin https://github.com/Giver225/GTNH/
fi

# Подтягиваем изменения
git pull origin main

# Симлинк для бэкапов
ln -sf /backups /data/backups

# Запуск сервера с вашими параметрами
echo "Запуск сервера..."
java -Xms6G -Xmx9G -Dfml.readTimeout=180 @/java9args.txt -jar lwjgl3ify-forgePatches.jar nogui

# После остановки сервера
echo "Сервер остановлен. Пушим изменения..."
git add .
git commit -m "Авто-коммит $(date '+%d.%m.%Y %H:%M')"
git push origin main