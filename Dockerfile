# Gunakan image Node.js sebagai base image
FROM node:18-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy seluruh project ke dalam container
COPY . .

# Build aplikasi (jika menggunakan Vite atau framework lain)
RUN npm run build

# Expose port 4000 agar sesuai dengan konfigurasi nginx
EXPOSE 4000

# Perintah untuk menjalankan aplikasi dengan port 4000
CMD ["npm", "run", "preview", "--", "--port", "4000"]
