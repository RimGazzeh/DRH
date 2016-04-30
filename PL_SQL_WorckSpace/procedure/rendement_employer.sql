create or replace PROCEDURE RENDEMENT_EMPLOYER 
(
  ID_EMP IN NUMBER 
, V_DATE_DEB IN DATE 
, V_DATE_FIN IN DATE 
) AS 

CURSOR C_INT IS
  SELECT DATE_DEB, DATE_FIN
  FROM INTERVENTION 
  WHERE (V_DATE_FIN - DATE_DEB > 0 );
  

V_DEB DATE;
V_FIN DATE;
NB_HEURES NUMBER;

BEGIN

NB_HEURES :=0 ;
 for V_INT in C_INT loop
 
   IF((V_DATE_DEB - V_INT.DATE_DEB)>= 0) THEN
    V_DEB := V_DATE_DEB ;
   ELSE
      V_DEB := V_INT.DATE_DEB;
    END IF;
 
    IF((V_DATE_FIN - V_INT.DATE_FIN)<= 0) THEN
      V_FIN := V_DATE_FIN;
    ELSE
      V_FIN := V_INT.DATE_FIN; 
    END IF;
    
   NB_HEURES := NB_HEURES + DATE_TO_HEURES(V_DEB, V_FIN);
  
 end loop;
 
DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------');  
DBMS_OUTPUT.PUT_LINE('Rendement de cet employe du '||V_DATE_DEB||' au '||V_DATE_FIN ||' :: '||NB_HEURES);
DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------');  
  
END RENDEMENT_EMPLOYER;