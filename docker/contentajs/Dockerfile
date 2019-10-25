#FROM wodby/node:8.11-0.3.0
FROM node:8.16.2-alpine
ADD . /app
WORKDIR /app
RUN npm install
RUN npm audit fix
ENTRYPOINT ["npm"]
CMD ["start"]
