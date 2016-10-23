-- Table: public."BLOCKS"

-- DROP TABLE public."BLOCKS";

CREATE TABLE public."BLOCKS"
(
    "BLOCK_ID" integer NOT NULL,
    "BLOCK_NAME" character varying COLLATE "default".pg_catalog NOT NULL,
    "DESCRIPTION" character varying COLLATE "default".pg_catalog,
    "TYPE" "char",
    "HOSTEL_ID" integer NOT NULL,
    "CREATED_TIME" abstime,
    "CREATE_USER" character varying COLLATE "default".pg_catalog,
    "UPDATED_TIME" abstime,
    "UPDATE_USER" character varying COLLATE "default".pg_catalog,
    CONSTRAINT "BLOCKS_pkey" PRIMARY KEY ("BLOCK_ID"),
    CONSTRAINT "FK_HOSTEL_ID" FOREIGN KEY ("HOSTEL_ID")
        REFERENCES public."HOSTELS" ("HOSTEL_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."BLOCKS"
    OWNER to postgres;