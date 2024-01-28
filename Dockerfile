FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY javascript.js /usr/share/nginx/html/javascript.js
COPY styles.css /usr/share/nginx/html/styles.css
