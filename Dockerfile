FROM node:14

COPY . / 

# install Sanity
RUN npm install -g @sanity/cli
RUN cd backend_sanity; sanity start

#Install react, it's sanity client, and some tools. 
RUN cd ..; npx create-react-app frontend_react -y; cd frontend_react; npm install @sanity/client @sanity/image-url framer-motion node-sass react-icons
RUN npm start

# start up the backend and front end
#RUN cd backend_sanity; sanity start
#RUN cd ../frontend_react, npm start

# expose ports (for website [3000 by default], and for the Sanity backend)
EXPOSE 3333 80
# Sanity: port 3333
#React/npm: port 80
# Remember when running to map both ports when doing docker run, 
#EX: docker run -dit -p 3001:3000 -p 23:22 portfolio 
