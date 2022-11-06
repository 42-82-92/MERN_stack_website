FROM node:14

COPY . / 

# install backend and frontend apps
RUN npm install -g @sanity/cli
RUN cd backend_sanity; sanity start

RUN cd ..; npx create-react-app frontend_react -y; cd frontend_react; npm install @sanity/client @sanity/image-url framer-motion node-sass react-icons
RUN npm start

# run backend and frontend apps


# start up the backend and front end

# expose ports (for website [3000 by default], and for the Sanity backend)
EXPOSE 3333
# Sanity: port 3333
#React/npm: port 80
