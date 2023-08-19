FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm install -g create-vite
# RUN npm install vite
# RUN npm run build
EXPOSE 3033
CMD ["npm", "run dev"]