FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

#RUN pnpm install
RUN npm i -g pnpm
RUN pnpm install
RUN pnpm run build

ENV PORT 5000
ENV VARIABLE "test .env dockerfile"

EXPOSE 5000

CMD [ "pnpm", "run", "start" ]
