FROM wodby/node:8.11-0.3.0
USER root
ADD . /app
WORKDIR /app
RUN whoami
RUN npm install
RUN ln -s /app/node_modules/.bin/pm2 /usr/bin
RUN ln -s /app/node_modules/.bin/pm2-runtime /usr/bin
ENTRYPOINT ["npm"]
CMD ["start"]
