#include "fivewin.ch"
#include "testunit.ch"


function main()
Local oTest
local oColor
local oPen
local oBrush
local oFont
local rgbColor := RGB( 100, 120, 130 )

gdiplusstartup()

   DEFINE SUITTEST oTest

      oColor := Color( 255, 10, 20, 30 )
      oPen   := Pen( oColor, 5 )
      oBrush := SolidBrush( oColor )
      oFont  := Font( "Ms Sans Serif", 12 )


      TEST !Empty( oColor:handle )  DESCRIPTION "Creación objeto GPColor"

      TEST oColor:GetA() == 255                              DESCRIPTION "Obtener componente Alpha"
      TEST oColor:GetAlpha() == 255                          DESCRIPTION "Obtener componente Alpha"
      TEST oColor:GetR() == 10                               DESCRIPTION "Obtener componente Red"
      TEST oColor:GetRed() == 10                             DESCRIPTION "Obtener componente Red"
      TEST oColor:GetG() == 20                               DESCRIPTION "Obtener componente Green"
      TEST oColor:GetGreen() == 20                           DESCRIPTION "Obtener componente Green"
      TEST oColor:GetB() == 30                               DESCRIPTION "Obtener componente Blue"
      TEST oColor:GetBlue() == 30                            DESCRIPTION "Obtener componente Blue"

      //TEST oColor:GetValue() == MakeARGB( 255, 10, 20, 30 )  DESCRIPTION "Metodo GetValue obtenemos el color ARGB"
      //TEST oColor:SetFromCOLORREF( rgbColor )
      //TEST oColor:SetValue()
      //TEST oColor:ToCOLORREF()


      TEST !Empty( oPen:handle   )  DESCRIPTION "Creación objeto GPPen con Color y ancho"
      TEST !Empty( oBrush:handle )  DESCRIPTION "Creación objeto GPSolidBrush"
      TEST !Empty( oFont:handle  )  DESCRIPTION "Creación objeto GPFont"




      TEST Pen( Color( 255, 0, 0, 0 ), 5 ):GetWidth() == 5


      SHOW RESULT

   ENDDEFINE

GdiplusShutdown()

return nil

