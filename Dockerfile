FROM node:14-alpine
WORKDIR /app

#Laravel backend
ENV REACT_APP_BACKEND_URL="http://localhost:8000/api"

COPY . .
RUN yarn install
EXPOSE 4100
CMD [ "yarn" , "start" ]
