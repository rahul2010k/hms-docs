CREATE TABLE public."SEATS"
(
    "SEAT_ID" integer NOT NULL,
    "SEAT_NUMBER" character varying NOT NULL,
    "ROOM_ID" integer NOT NULL,
    "CREATED_TIME" abstime,
    "CREATE_USER" character varying,
    "UPDATED_TIME" abstime,
    "UPDATE_USER" character varying,
    PRIMARY KEY ("SEAT_ID"),
    CONSTRAINT "FK_ROOM_ID" FOREIGN KEY ("ROOM_ID")
        REFERENCES public."ROOMS" ("ROOM_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."SEATS"
    OWNER to postgres;
