FROM node:16.4.2-alpine
ENV TZ=America/Sao_Paulo
ENV DOCKER_CONTAINER=1
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/src/app

COPY package*.json ./
COPY prisma ./prisma/
COPY .env ./

RUN npm install --no-progress --quiet
RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]