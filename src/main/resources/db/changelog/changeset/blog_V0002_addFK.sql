ALTER TABLE comments
    ADD CONSTRAINT fk_user_id
        FOREIGN KEY (commentator_id)
            REFERENCES users (id);

ALTER TABLE comments
    ADD CONSTRAINT fk_post_id
    FOREIGN KEY (post_id)
    REFERENCES posts (id);

ALTER TABLE posts
    ADD CONSTRAINT fk_user_id
        FOREIGN KEY (user_id)
            REFERENCES users (id);

ALTER TABLE posts
    ADD CONSTRAINT fk_comment_id
        FOREIGN KEY (comment_id)
            REFERENCES comments (id);