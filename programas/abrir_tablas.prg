PUBLIC n_acceso,continuar_guardar , CLAVE_R , posicion_remisionar
SET SAFETY OFF
CLOSE DATABASES ALL

SET DEFA TO C:\SIDOB         
SET STATUS BAR ON
SET SYSMENU on
SET DATE DMY
SET CENTURY ON
SET DELETED ON
SET ESCAPE off

SET ENGINEBEHAVIOR 70
SET REPORTBEHAVIOR 90
N_ACCESO = 1
posicion_remisionar = 0

CLAVE_R = 2000

DO C:\SIDOB\FOXYPREVIEWER.APP
OPEN DATABASE c:\sistemas\almacenes\almacen.dbc shared
OPEN DATABASE c:\sistemas\siven\ventasdb.dbc SHARED
OPEN DATABASE c:\sistemas\bdcompartep\compartidadb.dbc SHARED 
OPEN DATABASE c:\sistemas\siscop\ORDENES.DBC SHARED
OPEN DATABASE c:\sistemas\asistencia\sicoa.dbc SHARED
OPEN DATABASE c:\sistemas\sitej\tejido.dbc SHARED 
OPEN DATABASE c:\sistemas\DOBLADO\doblado.dbc SHARED 

SELECT 1
USE c:\sistemas\almacenes\almacenc SHARED
SELECT 2
USE c:\sistemas\almacenes\semanas_alm SHARED
SELECT 3
USE c:\sistemas\almacenes\ALMACENT.DBF SHARED

SELECT 4
USE c:\sistemas\siven\telas shared
SELECT 5
USE c:\sistemas\siven\telas_apre.dbf SHARED
SELECT 6
USE c:\sistemas\siven\TELAS_SANF.DBF SHARED
SELECT 7
USE c:\sistemas\siven\TELASGRAL SHARED

SELECT 8
use c:\sistemas\BDCOMPARTEP\usuarios SHARED
SELECT 9
use c:\sistemas\BDCOMPARTEP\accesos SHARED

*SELECT 9
*USE c:\sistemas\doblado\ACCESO.DBF SHARED
SELECT 10
USE c:\sistemas\BDCOMPARTEP\hilos.dbf SHARED

*SELECT 11
*USE C:\DOBLADO\TABLAS\DATO_USUARIO.DBF SHARED

SELECT 12
USE c:\sistemas\DOBLADO\controlrem_prefe.DBF SHARED
SELECT 13
USE c:\sistemas\DOBLADO\causas.DBF SHARED
SELECT 14
USE c:\sistemas\DOBLADO\control_rem.dbf SHARED
*SELECT 15
*USE c:\sistemas\DOBLADO\cambios.dbf SHARED 
*SELECT 16
*USE c:\sistemas\DOBLADO\LIMITE.dbf SHARED
SELECT 17
USE c:\sistemas\DOBLADO\doblado_dev.DBF SHARED

SELECT 18
USE c:\sistemas\asistencia\empleados.dbf SHARED

DO C:\SIDOB\CONSULTAS\LTELAS.QPR

SELECT 20
USE c:\sistemas\SISCOP\EDOBLADO.DBF SHARED 

SELECT 21
USE c:\sistemas\DOBLADO\RETACERIA.DBF SHARED

SELECT 22
USE c:\sistemas\DOBLADO\CCDOB.DBF SHARED 

SELECT 23
USE c:\sistemas\DOBLADO\SEGUNDA.DBF SHARED

SELECT 24
USE c:\sistemas\DOBLADO\REPROCESOS.DBF SHARED

SELECT 25
USE c:\sistemas\DOBLADO\ENTRADADOB.DBF SHARED

SELECT 26
USE c:\sistemas\DOBLADO\telas_gr.DBF SHARED

SELECT 27
USE c:\sistemas\DOBLADO\primera.dbf SHARED

SELECT 28
USE C:\SIDOB\TABLAS\_PARAROLLOS.DBF SHARED

SELECT 29
USE C:\SIDOB\TABLAS\_PARAFRANELAS.DBF SHARED

SELECT 31
USE c:\sistemas\SISCOP\cambios ALIAS cambio_clave SHARED 

SELECT 32
USE c:\sistemas\almacenes\maquilas.dbf SHARED

SELECT 33
USE c:\sistemas\DOBLADO\DETALLE_DD.DBF SHARED

SELECT 34 
USE c:\sistemas\SISCOP\clave_color.DBF SHARED

SELECT 35 
USE c:\sistemas\SISCOP\COLORES.DBF SHARED

SELECT 36 
USE c:\sistemas\SISCOP\GRUPOS.DBF ALIAS GRUPO_COLOR SHARED 

SELECT 37
USE c:\sistemas\DOBLADO\conceptos_ori.DBF SHARED

SELECT 38
USE c:\sistemas\DOBLADO\origen_numero.dbf SHARED

SELECT NUM_TRAB, (ALLTRIM(APATERNO)+" "+ALLTRIM(AMATERNO)+" "+ALLTRIM(NOMBRE)) AS Nom_t FROM EMPLEADOS;
WHERE ESTATUS = 1 AND( CLAVE_D =9  AND CLAVE_P <> 40) OR (NUM_TRAB = 628) OR (CLAVE_D =7 AND CLAVE_P=7) ORDER BY NUM_TRAB ;
INTO TABLE 'C:\SIDOB\TABLAS\TRABSJ.DBF'

SELECT 50
USE c:\sistemas\siven\clientes.dbf shared
SELECT 51
SELECT clave_c, nombre FROM clientes WHERE !EMPTY(nombre) ORDER BY nombre INTO TABLE 'c:\sidob\tablas\cli.dbf'
SELECT clientes
USE 