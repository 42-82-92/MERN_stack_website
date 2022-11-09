# docker build -f sanity.Dockerfile -t sanity .
FROM node:18

COPY backend_sanity /backend_sanity

# Install Sanity
RUN npm install -g @sanity/cli; cd backend_sanity

# Expose ports
EXPOSE 3333
# Sanity: port 3333

# Start sanity
CMD sanity start
