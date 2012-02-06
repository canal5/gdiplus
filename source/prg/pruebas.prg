#include "fivewin.ch"
#include "testunit.ch"
#include "gdip.ch"

function main()
Local oTest
local oColor
local oPen
local oPen2
local oBrush
local oFont
local rgbColor := RGB( 100, 120, 130 )
local g
local oRect
local oRect2
local oSize
local oPoint



   DEFINE SUITTEST oTest

      oColor := Color( 255, 10, 20, 30 )
      oBrush := SolidBrush( oColor )
      oPen   := Pen( oBrush, 5 )
      oPen2  := Pen( oColor, 5 )
      oFont  := Font( "Ms Sans Serif", 12 )
      
      RectF  oRect( 10, 10, 200, 200 )
      PointF oPoint( 13, 22 )
      SizeF  oSize ( 50, 50 )
      oRect2 = RectF( oPoint, oSize )

      SEPARADOR( "GRAPHICS" )
      TEST TestConstructorDestructorGraphics()               DESCRIPTION "Probando el constructor/destructor de Graphics"

      SEPARADOR( "PEN" )

      TEST !empty( Pen( oPen ):handle )                      DESCRIPTION "Constructor Pen. Pen( oPen )"
      TEST !empty( Pen( oBrush, 5 ):handle )                 DESCRIPTION "Constructor Pen. Pen( oBrush, 5 )"
      TEST !empty( Pen( oColor, 5 ):handle )                 DESCRIPTION "Constructor Pen. Pen( oColor, 5 )"
      TEST oPen:SetAlignment( PenAlignment.Center ) == oPen:GetAlignment() ;
                                                             DESCRIPTION "SetAlignment, GetAlignMent"

      SEPARADOR( "COLOR" )
      // Color
      TEST !Empty( oColor:handle )                           DESCRIPTION "Creación objeto GPColor"
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


      SEPARADOR( "BRUSH" )
      TEST !Empty( oBrush:handle )  DESCRIPTION "Creación objeto GPSolidBrush"

      SEPARADOR( "FONT" )
      TEST !Empty( oFont:handle  )  DESCRIPTION "Creación objeto GPFont"

      SEPARADOR( "RECTF" )
      TEST !empty(oRect:handle )          DESCRIPTION "Método New"
      TEST !empty(oRect2:handle )         DESCRIPTION "Metodo New( oPoint, oSize )"
      TEST oRect:Contains( 20, 20 )       DESCRIPTION "Método Contains( x, y )"
      TEST oRect:Contains2( oPoint )      DESCRIPTION "Método Contains( pt )"
      TEST oRect:Contains3( oRect2 )       DESCRIPTION "Método Contains( rc )"
      TEST oRect:GetBottom() == 10 + 200  DESCRIPTION "Método GetBottom"
      TEST oRect:GetLeft() == 10          DESCRIPTION "Método GetLeft"
      TEST oRect:GetRight() == 10 + 200   DESCRIPTION "Método GetRight"
      TEST oRect:GetTop() == 10           DESCRIPTION "Método GetTop"
      TEST TestRectFInflate()             DESCRIPTION "Método Inflate2( X, Y )"

      SHOW RESULT

   ENDDEFINE

return nil


*********************************************************************************************************************
  function TestRectFInflate()
*********************************************************************************************************************
local oRect
local nTop  := 20
local nLeft := 10
local nWidth := 500
local nHeight := 300

RectF oRect( nLeft, nTop, nWidth, nHeight )

oRect:Inflate2( 10, 10 )

return oRect:GetLeft() == nLeft-10 .and. oRect:GetTop() == nTop-10 .and. ;
       oRect:GetBottom() == nTop+nHeight+10 .and. oRect:GetRight() == nLeft + nWidth + 10




*********************************************************************************************************************
  function TestConstructorDestructorGraphics()
*********************************************************************************************************************
local hDC := CreateDC("DISPLAY",0,0,0)
local g := Graphics(hDC)
DeleteDC( hDC )

return !empty(g:handle)

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

