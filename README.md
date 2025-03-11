# Build image 
docker build -t app .

# Jalankan container dengan port 3000
docker run -d -p 3000:3000 --name app app

# Restart nginx agar perubahan diterapkan
sudo systemctl restart nginx

docker logs app

