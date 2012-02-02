#include "fivewin.ch"
#include "testunit.ch"


function main()
Local oTest

gdiplusstartup()

   DEFINE SUITTEST oTest

      TEST Color(255,0,0,0):handle != 0

      SHOW RESULT

   ENDDEFINE

GdiplusShutdown()

return nil

