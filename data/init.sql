-- 创建数据库（如果未通过环境变量创建）
CREATE DATABASE IF NOT EXISTS your_database CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 创建用户并赋予权限
CREATE USER IF NOT EXISTS 'your_user' @'%' IDENTIFIED WITH caching_sha2_password BY 'your_password';
GRANT ALL PRIVILEGES ON your_database.* TO 'your_user' @'%';
FLUSH PRIVILEGES;