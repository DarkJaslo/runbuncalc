
FROM node:20

WORKDIR /usr/src/app

# Copy the complete project, including tsconfig.json
COPY . .

# Install dependencies
# This triggers the subpkg postinstall process
RUN npm install

# Build the application (frontend + website)
RUN npm run build

EXPOSE 3000

CMD ["node", "server.js"]
