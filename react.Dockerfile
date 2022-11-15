# docker build -f react.Dockerfile -t react .
FROM node:18

COPY frontend_react /frontend_react

#Install React, its sanity client, and some tools. 
RUN npx create-react-app frontend_react -y; cd frontend_react; npm install @sanity/client @sanity/image-url framer-motion node-sass react-icons

# Expose ports
EXPOSE 3000
# React/npm: port 80 

# Start React
CMD cd /frontend_react/ && npm start
