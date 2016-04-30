CREATE TABLE EMPLOYE  
(
IDENT NUMBER(6,0),
NOM VARCHAR2(25 BYTE) CONSTRAINT "EMP_NOM_NN" NOT NULL ENABLE,
PRENOM VARCHAR2(25 BYTE) CONSTRAINT "EMP_PRENOM_NN" NOT NULL ENABLE,
ADRESS VARCHAR2(25 BYTE),
SALAIRE NUMBER(8,2) CONSTRAINT "EMP_SALAIRE_MIN" CHECK (SALAIRE > 0) ENABLE,
DATE_EMBAUCHE DATE  CONSTRAINT "EMP_DATE_EMBAUCHE_NN" NOT NULL ENABLE,
MAIL VARCHAR2(25 BYTE),
TEL NUMBER(10,0),
GRADE VARCHAR2(25 BYTE) CONSTRAINT "EMP_GRADE_NN" NOT NULL ENABLE,
SITUATION VARCHAR2(25 BYTE) CONSTRAINT "EMP_SITUATION_ENUM" CHECK( SITUATION IN ('permanent','contractuel','temporaire') ) ,
CODE_SER NUMBER(6,0) 
);

