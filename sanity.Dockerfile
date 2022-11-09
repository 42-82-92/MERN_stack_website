# docker build -f sanity.Dockerfile -t sanity .
FROM node:18

COPY backend_sanity /backend_sanity

# Install Sanity
RUN cd /backend_sanity; npm install -g @sanity/cli

# Expose ports
EXPOSE 3333
# Sanity: port 3333

# Start sanity
CMD cd /backend_sanity/ && sanity start
