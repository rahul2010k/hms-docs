	CREATE TABLE public."RESERVATIONS"
(
    "STUDENT_ID" integer NOT NULL,
    "NAME" character varying NOT NULL,
    "MIDDLENAME" character varying NOT NULL,
	"SURNAME" character varying NOT NULL,
	"ADDRESS" character varying NOT NULL,
	"CITY" character varying NOT NULL,
	"STATE" character varying NOT NULL,
    "ZIPCODE" character varying NOT NULL,
	"COUNTRY" character varying NOT NULL,
	"ROLL_NUMBER" character varying NOT NULL,
	"START_DATE" abstime NOT NULL,
	"END_DATE" abstime NOT NULL,
	"SEAT_ID" integer NOT NULL,
    "CREATED_TIME" abstime,
    "CREATE_USER" character varying,
    "UPDATED_TIME" abstime,
    "UPDATE_USER" character varying,
    PRIMARY KEY ("STUDENT_ID"),
    CONSTRAINT "FK_SEAT_ID" FOREIGN KEY ("SEAT_ID")
        REFERENCES public."SEATS" ("SEAT_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."RESERVATIONS"
    OWNER to postgres;