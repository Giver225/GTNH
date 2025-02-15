FROM openjdk:20

# Устанавливаем зависимости
RUN apt-get update && apt-get install -y git openssh-client

# Копируем файлы
COPY ./docker/entrypoint.sh /entrypoint.sh
COPY ./java9args.txt /java9args.txt
COPY ./data/ /data/

# Настройки
WORKDIR /data
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]