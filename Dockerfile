FROM node:14-alpine
WORKDIR /app

#Laravel backend
ENV REACT_APP_BACKEND_URL="http://localhost:8000/api"

COPY . .
RUN yarn install

CMD [ "yarn" , "start" ]

EXPOSE 4100
