# базовый образ Node.js LTS
FROM node:lts-alpine

# определение переменных среды
ENV HOME=/home/node/app
ENV NODE_ENV=production
ENV NODE_PORT=3000

# создание папки приложения и назначение прав пользователю node
RUN mkdir -p $HOME && chown -R node:node $HOME

# установка рабочего каталога
WORKDIR $HOME

# установка активного пользователя
USER node

# копирование файла package.json с хоста
COPY --chown=node:node package.json $HOME/

# установка модулей приложения
RUN npm install && npm cache clean --force

# копирование оставшихся файлов
COPY --chown=node:node . .

# выставление порта на хосте
EXPOSE $NODE_PORT

# команда запуска приложения
CMD [ "node", "./app/index.js" ]