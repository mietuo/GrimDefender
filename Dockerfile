FROM node:18-alpine

WORKDIR /app
COPY . .

RUN npm install -g serve

EXPOSE 3000
CMD sh -c "serve -s . -l tcp://0.0.0.0:${PORT:-3000}"

