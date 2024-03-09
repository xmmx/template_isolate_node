# Шаблон проекта на node без node в локали

## Зависимости

Только docker и больше ничего.
Запуск ноды будет внутри контейнера.

## Управляющие скрипты

- `./scripts/up.sh` - запуск докер контейнера

- `./scripts/down.sh` - остановка контейнеров и чистка images/containers/volumes

- `./scripts/npm_install.sh` - установка пакетов внутри запущенного контейнера

- `./scripts/logs.sh` - вывод логов из основного контейнера

- `./scripts/cleaner.sh` - чистка images/containers/volumes

## Как работать

Пройтись по проекту и заменить sample и (включая подстроки sample-app) на название своего проекта.

Пока обязательное это:

- `docker-sompose.yml`
- `./scripts/logs.sh`
- `./scripts/npm_install.sh`
