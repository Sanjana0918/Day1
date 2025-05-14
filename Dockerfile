# ✅ Use a lightweight, secure base image (Best Practice #1)
FROM nginx:alpine

# ✅ Set working directory inside the container
WORKDIR /usr/share/nginx/html

# ✅ Remove default page to avoid conflicts
RUN rm -rf ./*

# ✅ Copy app files to container
COPY . .

# ✅ Use a specific port
EXPOSE 80

# ✅ Nginx runs by default, no need for CMD
