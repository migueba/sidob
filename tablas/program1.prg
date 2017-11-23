SELECT doblado_dev
GO top
SCAN
   cb = doblado_dev.clave_t
   pos = RECNO()
   SELECT clave_t, IIF(crudos = .t., peso3, peso) as peso FROM telas WHERE telas.clave_t = cb INTO TABLE 'c:\sidob\tablas\.dbf'
endscan