--liquibase formatted sql
--changeset mkowalski:2
CREATE TABLE COMMENT (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
post_id BIGINT NOT NULL,
content VARCHAR(2000),
created timeStamp
);

ALTER TABLE COMMENT
ADD CONSTRAINT  comment_post_id
FOREIGN KEY (post_id) REFERENCES post(id)