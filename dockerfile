FROM nginx:alpine
COPY . /usr/share/nginx/html
RUN echo "server { listen 80; root /usr/share/nginx/html; index rohit.html; location / { try_files \$uri \$uri/ /rohit.html; } }" > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
