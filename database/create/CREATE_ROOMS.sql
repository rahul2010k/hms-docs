-- Table: public."ROOMS"

-- DROP TABLE public."ROOMS";

CREATE TABLE public."ROOMS"
(
    "ROOM_ID" integer NOT NULL,
    "ROOM_NUMBER" character varying NOT NULL,
    "CATEGORY_ID" integer NOT NULL,
    "FLOOR_ID" integer NOT NULL,
    "CREATED_TIME" abstime,
    "CREATE_USER" character varying,
    "UPDATED_TIME" abstime,
    "UPDATE_USER" character varying,
    CONSTRAINT "ROOMS_pkey" PRIMARY KEY ("ROOM_ID"),
    CONSTRAINT "FK_FLOOR_ID" FOREIGN KEY ("FLOOR_ID")
        REFERENCES public."FLOORS" ("FLOOR_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."ROOMS"
    OWNER to postgres;