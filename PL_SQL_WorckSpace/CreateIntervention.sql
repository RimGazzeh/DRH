CREATE TABLE INTERVENTION
(
CODE_PROJ NUMBER(6,0),
CODE_EMP NUMBER(6,0),
DATE_DEB DATE CONSTRAINT "INT_DATE_DEB_NN" NOT NULL ENABLE,
DATE_FIN DATE CONSTRAINT "INT_DATE_FIN_NN" NOT NULL ENABLE
);