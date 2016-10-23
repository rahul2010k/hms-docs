-- Table: public."USERS"

-- DROP TABLE public."USERS";

CREATE TABLE public."USERS"
(
    "LAST_LOGIN_TIME" abstime NOT NULL,
    "PASSWORD" text NOT NULL,
    "USER_ID" integer NOT NULL,
    "USER_NAME" character varying(15)  NOT NULL,
    "IS_ACTIVE" "char" NOT NULL,
    "IS_LOCKED" "char" NOT NULL,
    "ROLE_ID" integer NOT NULL,
    CONSTRAINT "USERS_pkey" PRIMARY KEY ("USER_ID"),
    CONSTRAINT "FK_USER_ROLE" FOREIGN KEY ("ROLE_ID")
        REFERENCES public."ROLES" ("ROLE_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."USERS"
    OWNER to postgres;