# Hentikan dan hapus container lama
docker stop chatai
docker rm chatai

# Build image 
docker build -t aplikasi1 .

# Jalankan container dengan port 3000
docker run -d -p 3000:3000 --name aplikasi1 aplikasi1

# Restart nginx agar perubahan diterapkan
sudo systemctl restart nginx

docker logs chatai

