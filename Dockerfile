FROM node:18

COPY . /
COPY appwrapper.sh /appwrapper.sh

# Install Sanity
RUN npm install -g @sanity/cli
# RUN cd backend_sanity; sanity start

#Install React, it's sanity client, and some tools. 
RUN npx create-react-app frontend_react -y; cd frontend_react; npm install @sanity/client @sanity/image-url framer-motion node-sass react-icons
# RUN cd /frontend_react; npm start

# Start up the backend and front end
#RUN cd backend_sanity; sanity start
#RUN cd ../frontend_react, npm start

# Expose ports
EXPOSE 3333 80
# Sanity: port 3333
# React/npm: port 80
# Remember when running to map both ports when doing docker run, 
# EX: docker run -dit -p 3001:3000 -p 23:22 portfolio 

CMD /appwrapper.sh
