-- Table: public."HOSTELS"

-- DROP TABLE public."HOSTELS";

CREATE TABLE public."HOSTELS"
(
    "HOSTEL_ID" integer NOT NULL,
    "HOSTEL_NAME" character varying NOT NULL,
    "DESCRIPTION" character varying,
    "ADDRESS" character varying,
    "CITY" character varying NOT NULL,
    "STATE" character varying,
    "TYPE" "char",
    "CREATED_TIME" abstime NOT NULL,
    "CREATE_USER" character varying NOT NULL,
    "UPDATED_TIME" abstime NOT NULL,
    "UPDATE_USER" character varying NOT NULL,
    CONSTRAINT "HOSTELS_pkey" PRIMARY KEY ("HOSTEL_ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."HOSTELS"
    OWNER to postgres;