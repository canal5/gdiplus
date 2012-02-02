#include "fivewin.ch"
#include "testunit.ch"


function main()
Local oTest

gdiplusstartup()

   DEFINE SUITTEST oTest

      TEST !Empty( Color( 255, 0, 0, 0 ):handle )
      TEST !Empty( Pen( Color( 255, 0, 0, 0 ), 5 ))
      TEST Pen( Color( 255, 0, 0, 0 ), 5 ):GetWidth() == 5


      SHOW RESULT

   ENDDEFINE

GdiplusShutdown()

return nil

