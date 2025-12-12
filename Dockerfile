FROM nginx:stable-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 5000

CMD ["nginx", "-g", "daemon off;"]
