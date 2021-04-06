CREATE ROLE "eclab-user" LOGIN PASSWORD 'weak-password';

CREATE DATABASE eclab_db
    OWNER "eclab-user"
    ENCODING 'UTF-8'
    LC_COLLATE 'ja_JP.UTF-8'
    LC_CTYPE 'ja_JP.UTF-8'
    TEMPLATE template0;
