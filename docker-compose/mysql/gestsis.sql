-- Source
-- https://dzone.com/articles/multiple-mysql-databases-with-one-mysql-container

-- # Create second_db database if it doesn't exist
DROP DATABASE IF EXISTS gestsis;
DROP DATABASE IF EXISTS hs;
DROP DATABASE IF EXISTS test;
DROP DATABASE IF EXISTS gestsis_auth;
CREATE DATABASE IF NOT EXISTS gestsis;
CREATE DATABASE IF NOT EXISTS hs;
CREATE DATABASE IF NOT EXISTS test;
CREATE DATABASE IF NOT EXISTS gestsis_auth;

-- # Grant all privilidges on second_db to org_user
GRANT ALL PRIVILEGES ON gestsis_auth.* TO 'gestsis'@'%';
GRANT ALL PRIVILEGES ON gestsis.* TO 'gestsis'@'%';
GRANT ALL PRIVILEGES ON hs.* TO 'gestsis'@'%';
GRANT ALL PRIVILEGES ON test.* TO 'gestsis'@'%';