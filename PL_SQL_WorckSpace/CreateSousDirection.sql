CREATE TABLE SOUS_DIRECTION
(
CODE_S_D NUMBER(6,0),
INT_S_D VARCHAR2(50 BYTE) CONSTRAINT "SD_INT_S_D_NN" NOT NULL ENABLE,
CODE_D NUMBER(6,0),
SOUS_DIRECTEUR NUMBER(6,0)
);