# Use node20 to build app for less resource usage
FROM node:20-alpine AS builder

WORKDIR /app

# Copy dependencies
COPY package*.json ./

# Install dependencies (requires 'package-lock.json', change to `npm install` in
# case its missing)
RUN npm ci

# Copy the rest of the code and build app
COPY . .
RUN npm run build


# Use nginx to serve static site
FROM nginx:alpine AS runner

# Copy built app to runner
COPY --from=builder /app/out /usr/share/nginx/html

# Serve app in port 80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
