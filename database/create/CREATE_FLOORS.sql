-- Table: public."FLOORS"

-- DROP TABLE public."FLOORS";

CREATE TABLE public."FLOORS"
(
    "FLOOR_ID" integer NOT NULL,
    "FLOOR_NAME" character varying NOT NULL,
    "DESCRIPTION" character varying,
    "TYPE" "char",
    "BLOCK_ID" integer NOT NULL,
    "CREATED_TIME" abstime,
    "CREATE_USER" character varying,
    "UPDATED_TIME" abstime,
    "UPDATE_USER" character varying,
    CONSTRAINT "FLOORS_pkey" PRIMARY KEY ("FLOOR_ID"),
    CONSTRAINT "FK_BLOCK_ID" FOREIGN KEY ("BLOCK_ID")
        REFERENCES public."BLOCKS" ("BLOCK_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."FLOORS"
    OWNER to postgres;