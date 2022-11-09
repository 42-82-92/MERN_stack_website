FROM node:18

COPY frontend_react /frontend_react

#Install React, its sanity client, and some tools. 
RUN npx create-react-app frontend_react -y; cd frontend_react; npm install @sanity/client @sanity/image-url framer-motion node-sass react-icons; cd /frontend_react
RUN cd /frontend_react, npm start

# Expose ports
EXPOSE 80
# React/npm: port 80 

# Start React
CMD npm start
