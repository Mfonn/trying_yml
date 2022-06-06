FROM node:18-alpine

WORKDIR /app
COPY . .

ARG REACT_APP_CHRIS_UI_VERSION
RUN npm run build

CMD ["cat", "/app/dist.txt"]
