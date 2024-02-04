# MySQL database service
db:
  container_name: s7yusuff_mysql_container
  image: mysql:5.7
  ports:
    - "33060:3306"  # Map host port 33060 to container port 3306
  volumes:
    - db_data:/var/lib/mysql
  environment:
    MYSQL_ROOT_PASSWORD: my-secret-pw
    MYSQL_DATABASE: another_unique_wordpress_db
    MYSQL_USER: another_unique_wordpress_user
    MYSQL_PASSWORD: another_unique_password
  networks:
    - appnet
  hostname: s7yusuff_mysql
