create or replace PROCEDURE AFFICHE_PROJET 
(
  PROJ PROJET%ROWTYPE
) AS 
BEGIN
  DBMS_OUTPUT.PUT_LINE(PROJ.CODE_PROJET||'   '||PROJ.NOM_PROJET||'   '||'DEB::'||PROJ.DATE_DEB||'   '||'FIN_PREV::'||PROJ.DATE_FIN_PREV||'   '||
  'AV::'||PROJ.AVANCEMENT||'   '||'FIN::'||PROJ.DATE_FIN_REEL||'   '||'CHEF::'||PROJ.CHEF_PROJET);
END AFFICHE_PROJET;