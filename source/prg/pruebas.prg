#include "fivewin.ch"
#include "testunit.ch"


function main()
Local oTest
local oColor
local oPen
local oBrush
local oFont
local rgbColor := RGB( 100, 120, 130 )
local g



   DEFINE SUITTEST oTest

      oColor := Color( 255, 10, 20, 30 )
      oBrush := SolidBrush( oColor )
      oPen   := Pen( oBrush, 5 )
      oFont  := Font( "Ms Sans Serif", 12 )


      TEST !Empty( oColor:handle )  DESCRIPTION "Creación objeto GPColor"

      TEST TestConstructorDestructorGraphics()               DESCRIPTION "Probando el constructor/destructor de Graphics"
      TEST oColor:GetA() == 255                              DESCRIPTION "Obtener componente Alpha"
      TEST oColor:GetAlpha() == 255                          DESCRIPTION "Obtener componente Alpha"
      TEST oColor:GetR() == 10                               DESCRIPTION "Obtener componente Red"
      TEST oColor:GetRed() == 10                             DESCRIPTION "Obtener componente Red"
      TEST oColor:GetG() == 20                               DESCRIPTION "Obtener componente Green"
      TEST oColor:GetGreen() == 20                           DESCRIPTION "Obtener componente Green"
      TEST oColor:GetB() == 30                               DESCRIPTION "Obtener componente Blue"
      TEST oColor:GetBlue() == 30                            DESCRIPTION "Obtener componente Blue"
      TEST oColor:GetValue() == MakeARGB( 255, 10, 20, 30 )  DESCRIPTION "Metodo GetValue obtenemos el color ARGB"
      TEST TestSetFromCOLORREF()                             DESCRIPTION "Test SetFromCOLORREF"
      TEST TestSetValue()                                    DESCRIPTION "Test SetValue"
      TEST TestToCOLORREF()                                  DESCRIPTION "Test ToCOLORREF"


      TEST !Empty( oPen:handle   )  DESCRIPTION "Creación objeto GPPen con Color y ancho"
      TEST !Empty( oBrush:handle )  DESCRIPTION "Creación objeto GPSolidBrush"
      TEST !Empty( oFont:handle  )  DESCRIPTION "Creación objeto GPFont"


      TEST Pen( Color( 255, 0, 0, 0 ), 5 ):GetWidth() == 5


      SHOW RESULT

   ENDDEFINE

return nil


*********************************************************************************************************************
  function TestConstructorDestructorGraphics()
*********************************************************************************************************************
local hDC := CreateDC("DISPLAY",0,0,0)
local g := Graphics(hDC)
DeleteDC( hDC )

return g:handle != 0

*********************************************************************************************************************
  function TestSetFromCOLORREF()
*********************************************************************************************************************

  local oColor  := Color( 255, 255, 255, 255 )
  local oColor2 := Color()

  oColor2:SetFromCOLORREF( RGB( 255, 255, 255 ) )

return oColor:GetValue() == oColor2:GetValue()

*********************************************************************************************************************
  function TestSetValue()
*********************************************************************************************************************
  local oColor := Color( 255, 255, 255, 255 )
  local oColor2 := Color()

  oColor2:SetValue( MAKEARGB( 255, 255, 255, 255 ) )

return oColor:GetValue() == oColor2:GetValue()


*********************************************************************************************************************
  function TestToCOLORREF()
*********************************************************************************************************************
  local oColor := Color( 255, 255, 255, 255 )

return oColor:ToCOLORREF() == RGB( 255, 255, 255 )









init procedure entrada

  gdiplusstartup()

return


exit procedure salida

  GdiplusShutdown()

return

