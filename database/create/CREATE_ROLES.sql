-- Table: public."ROLES"

-- DROP TABLE public."ROLES";

CREATE TABLE public."ROLES"
(
    "ROLE_ID" integer NOT NULL,
    "ROLE_NAME" character varying NOT NULL,
    CONSTRAINT "ROLES_pkey" PRIMARY KEY ("ROLE_ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."ROLES"
    OWNER to postgres;