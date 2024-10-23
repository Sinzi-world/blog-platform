CREATE TABLE users (
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE,
    username varchar(64) UNIQUE NOT NULL,
    password varchar(128) NOT NULL,
    email varchar(64) UNIQUE NOT NULL,
    phone varchar(32) UNIQUE,
    about_me varchar(4096),
    created_at timestamptz DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);

CREATE TABLE posts(
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE,
    title VARCHAR(256) NOT NULL,
    content TEXT NOT NULL,
    comment_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamptz DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);

CREATE TABLE comments(
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE,
    content TEXT NOT NULL,
    commentator_id bigint NOT NULL,
    post_id bigint NOT NULL,
    created_at timestamptz DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);
