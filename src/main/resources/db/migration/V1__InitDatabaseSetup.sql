CREATE TABLE USERS
(
    ID            BIGSERIAL PRIMARY KEY,
    USER_NAME     VARCHAR NOT NULL UNIQUE,
    FIRST_NAME    VARCHAR NOT NULL,
    LAST_NAME     VARCHAR NOT NULL,
    EMAIL         VARCHAR NOT NULL,
    HASH_PASSWORD VARCHAR NOT NULL,
    ROLE          VARCHAR NOT NULL DEFAULT 'Customer'
);

CREATE TABLE BOOK
(
    ID          BIGSERIAL PRIMARY KEY,
    TITLE       VARCHAR NOT NULL,
    DESCRIPTION VARCHAR,
    AUTHOR      VARCHAR NOT NULL,
    RATE        NUMERIC NOT NULL,
    PUSHED_BY   BIGINT  NOT NULL REFERENCES USERS (ID) ON DELETE CASCADE
);

CREATE TABLE REVIEW
(
    ID      BIGSERIAL PRIMARY KEY,
    CONTENT VARCHAR NOT NULL,
    MARK    INT     NOT NULL,
    BOOK    BIGINT  NOT NULL REFERENCES BOOK (ID) ON DELETE CASCADE,
    AUTHOR  BIGINT  NOT NULL REFERENCES USERS (ID) ON DELETE CASCADE
);