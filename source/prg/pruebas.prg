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
local oRect3



   DEFINE SUITTEST oTest

      oColor := Color( 255, 10, 20, 30 )
      oBrush := SolidBrush( oColor )
      oPen   := Pen( oBrush, 5 )
      oPen2  := Pen( oColor, 5 )
      oFont  := Font( "Ms Sans Serif", 12 )

      RectF  oRect ( 10, 10, 200, 200 )
      RectF  oRect3( 10, 10, 200, 200 )
      PointF oPoint( 13, 22 )
      SizeF  oSize ( 50, 50 )
      RectF oRect2( oPoint, oSize )

      SEPARADOR( "GRAPHICS" )
      TEST TestConstructorDestructorGraphics()               DESCRIPTION "Probando el constructor/destructor de Graphics"

      SEPARADOR( "PEN" )

      TEST !empty( Pen( oPen ):handle )                      DESCRIPTION "Constructor Pen. Pen( oPen )"
      TEST !empty( Pen( oBrush, 5 ):handle )                 DESCRIPTION "Constructor Pen. Pen( oBrush, 5 )"
      TEST !empty( Pen( oColor, 5 ):handle )                 DESCRIPTION "Constructor Pen. Pen( oColor, 5 )"
      TEST oPen:SetAlignment( PenAlignment.Center ) == oPen:GetAlignment() ;
                                                             DESCRIPTION "SetAlignment, GetAlignMent"
      TestsColor()
      TestsBrush()
      TestsFont()
      TestsRectF()
      TestsSizeF()
      TestMatrix()
      SHOW RESULT

   ENDDEFINE

return nil

*****************************************************************************************
  function TestMatrix
*****************************************************************************************

  local oMatrix, oMatrix2, oMatrix3, oClone
  local aElements
  local nStatus 
  local oRect, oPoint 
  
  RectF oRect( 10,10,100,100 )
  PointF oPoint( 50, 70 )
  Matrix oMatrix()
  Matrix oMatrix2( oRect, oPoint )
  Matrix oMatrix3( 10, 10, 60, 70, 20, 30 ) 
  SEPARADOR( "MATRIX" )

  TEST ! empty( oMatrix:handle )                       DESCRIPTION "Constructor "  
  TEST ! empty( oMatrix2:handle )                      DESCRIPTION "Constructor Matrix( RectF, PointF )"  
  TEST ! empty( oMatrix3:handle )                      DESCRIPTION "Constructor Matrix( REAL, REAL, REAL, REAL, REAL, REAL )"    
  TEST !Empty( ( oClone := oMatrix3:Clone() ):handle )  DESCRIPTION "Clone"
  TEST oMatrix:Equals( oClone )                        DESCRIPTION "Equals"
  TEST oMatrix3:GetElements( @aElements ) == 0          DESCRIPTION "GetElements"
  xbrowse( aElements )
  nStatus = oMatrix:GetLastStatus()
  TEST hb_IsNumeric( oMatrix:GetLastStatus() )         DESCRIPTION "GetLastStatus is =" + str( nStatus )
  TEST oMatrix3:Invert() == 0                          ESCRIPTION "Invert"


return 0



*****************************************************************************************
  function TestsSizeF()
*****************************************************************************************

  local oSize1, oSize2, oSize3

  SizeF  oSize1( 50, 50 )
  SizeF  oSize2( 10, 90 )

  SEPARADOR( "SIZEF" )

  oSize3 = oSize1 + oSize2

//  ? "Width", GPSIZEFWIDTH( oSize3:handle )

  TEST !Empty( oSize3:handle )  DESCRIPTION "Operador +"

return 0

*****************************************************************************************
  function TestsRectF()
*****************************************************************************************

  local oRect, oRect2, oRect3, oPoint

  SizeF  oSize ( 50, 50 )
  PointF oPoint( 13, 22 )
  RectF oRect ( 10, 10, 200, 200 )
  RectF oRect2 ( oPoint, oSize    )
  RectF oRect3( 10, 10, 200, 200 )

  SEPARADOR( "RECTF" )

  TEST !empty(oRect:handle )          DESCRIPTION "Método New"
  TEST !empty(oRect2:handle )         DESCRIPTION "Metodo New( oPoint, oSize )"
  TEST oRect:Contains( 20, 20 )       DESCRIPTION "Método Contains( X, Y )"
  TEST oRect:Contains2( oPoint )      DESCRIPTION "Método Contains2( pt )"
  TEST oRect:Contains3( oRect )       DESCRIPTION "Método Contains3( rc )"
  TEST oRect:Equals( oRect3 )         DESCRIPTION "Método Equals"
  TEST TestGetBounds( )               DESCRIPTION "Método TestGetBounds"
  TEST TestGetLocation()              DESCRIPTION "Método TestGetLocation"
  TEST oRect:GetBottom() == 10 + 200  DESCRIPTION "Método GetBottom"
  TEST oRect:GetLeft() == 10          DESCRIPTION "Método GetLeft"
  TEST oRect:GetRight() == 10 + 200   DESCRIPTION "Método GetRight"
  TEST oRect:GetTop() == 10           DESCRIPTION "Método GetTop"
  TEST TestRectFInflate()             DESCRIPTION "Método Inflate( X, Y )"
  TEST TestRectFInflate2()            DESCRIPTION "Método Inflate2( pt )"
  TEST TestRectFIntersect()           DESCRIPTION "Método Intersect( rc )"
  TEST TestRectFIntersect2()          DESCRIPTION "Método Intersect( rc1,rc2,rc3 )"
  TEST TestRectFIntersectsWith()      DESCRIPTION "Método IntersectsWith( rc )"
  TEST TestRectFIsEmptyArea()         DESCRIPTION "Método IsEmptyArea()"
  TEST TestRectFOffset()              DESCRIPTION "Método Offset( X, Y )"
  TEST TestRectFOffset2()             DESCRIPTION "Método Offset(pt)"
  TEST TestRectFUnion()               DESCRIPTION "Método Union(rc1,rc2,rc3)"

return 0

*********************************************************************************************************************
  function TestsColor()
*********************************************************************************************************************

  local oColor


  Color oColor( 255, 10, 20, 30 )

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

return 0

*********************************************************************************************************************
  function TestsBrush()
*********************************************************************************************************************

  local oColor, oBrush

  oColor := Color( 255, 10, 20, 30 )
  oBrush := SolidBrush( oColor )

  SEPARADOR( "BRUSH" )
  TEST !Empty( oBrush:handle )  DESCRIPTION "Creación objeto GPSolidBrush"

return 0

*********************************************************************************************************************
  function TestsFont()
*********************************************************************************************************************

  local oFont

      oFont  := Font( "Ms Sans Serif", 12 )

      SEPARADOR( "FONT" )
      TEST !Empty( oFont:handle  )  DESCRIPTION "Creación objeto GPFont"

return 0

*********************************************************************************************************************
  function TestRectFUnion()
*********************************************************************************************************************
local r1, r2, r3

RectF r1( 0, 0, 0, 0 )
RectF r2( 100, 100, 100, 100 )
RectF r3( 150, 150, 100, 100 )

// r1:x = 100
// r1:y = 100
// r1:Width = 150
// r1:Height = 150

r1:Union( r1, r2, r3 )

return r1:X      == 100 .and.;
       r1:y      == 100 .and.;
       r1:Width  == 150 .and.;
       r1:Height == 150

*********************************************************************************************************************
  function TestRectFOffset2()
*********************************************************************************************************************
local r1, pt
local nTop  := 20
local nLeft := 10
local nWidth := 100
local nHeight := 200
local x := 5
local y := 10


RectF  r1( nLeft, nTop, nWidth, nHeight )
PointF pt( x, y )

r1:Offset2( pt )

return r1:GetLeft() == nLeft + x .and.;
       r1:GetTop() == nTop + y   .and.;
       r1:GetRight() == nLeft + nWidth + x .and.;
       r1:GetBottom() == nTop + nHeight + y

*********************************************************************************************************************
  function TestRectFOffset()
*********************************************************************************************************************

local r1, pt
local nTop  := 20
local nLeft := 10
local nWidth := 100
local nHeight := 200
local x := 5
local y := 10


RectF  r1( nLeft, nTop, nWidth, nHeight )

r1:Offset( x, y )

return r1:GetLeft() == nLeft + x .and.;
       r1:GetTop() == nTop + y   .and.;
       r1:GetRight() == nLeft + nWidth + x .and.;
       r1:GetBottom() == nTop + nHeight + y


*********************************************************************************************************************
  function TestRectFIsEmptyArea()
*********************************************************************************************************************
local r1, r2

RectF r1( 0,0,0,0 )
RectF r2( 10,10,10,10)

return r1:IsEmptyArea() .and. !r2:IsEmptyArea()

*********************************************************************************************************************
  function TestRectFIntersectsWith()
*********************************************************************************************************************
local r1, r2, r3

RectF r1( 10, 10, 100, 100 )
RectF r2( 300, 300, 100, 100 )
RectF r3( 310, 310, 100, 100 )

return !r1:IntersectsWith( r2 ) .and. r2:IntersectsWith( r3 )

*********************************************************************************************************************
  function TestRectFIntersect2()
*********************************************************************************************************************
local r1, r2, r3, r4
local lCross

RectF r4( 0, 0, 0, 0 )
RectF r1( 0, 0, 0, 0 )
RectF r2( 300, 300, 100, 100 )
RectF r3( 310, 320, 100, 100 )

lCross := r4:Intersect2( r1, r2, r3 )

return lCross .and. ;
       r1:GetLeft()   == 310      .and. ;
       r1:GetTop()    == 320      .and. ;
       r1:GetRight()  == 400      .and. ;
       r1:GetBottom() == 400

*********************************************************************************************************************
  function TestRectFIntersect()
*********************************************************************************************************************
local r1, r2

RectF r1( 300, 300, 100, 100 )
RectF r2( 310, 320, 100, 100 )

return r1:Intersect( r2 )    .and. ;
       r1:GetLeft()   == 310 .and. ;
       r1:GetTop()    == 320 .and. ;
       r1:GetRight()  == 400 .and. ;
       r1:GetBottom() == 400

********************************************************************************************************************
  function TestRectFInflate2()
*********************************************************************************************************************
local oRect, oPoint
local nTop  := 20
local nLeft := 10
local nWidth := 500
local nHeight := 300
local X := 10
local Y := 20

RectF oRect( nLeft, nTop, nWidth, nHeight )
PointF oPoint( X, Y )

oRect:Inflate2( oPoint )

return oRect:GetLeft()   == nLeft          - X .and. ;
       oRect:GetTop()    == nTop           - Y .and. ;
       oRect:GetBottom() == nTop  + nHeight+ Y .and. ;
       oRect:GetRight()  == nLeft + nWidth + X


*********************************************************************************************************************
  function TestRectFInflate()
*********************************************************************************************************************
local oRect
local nTop  := 20
local nLeft := 10
local nWidth := 500
local nHeight := 300
local X := 10
local Y := 20

RectF oRect( nLeft, nTop, nWidth, nHeight )

oRect:Inflate( X, Y )

return oRect:GetLeft()   == nLeft          - X .and. ;
       oRect:GetTop()    == nTop           - Y .and. ;
       oRect:GetBottom() == nTop  + nHeight+ Y .and. ;
       oRect:GetRight()  == nLeft + nWidth + X



*********************************************************************************************************************
  function TestGetLocation()
*********************************************************************************************************************
local rc1, pt2

local nTop     := 10
local nLeft    := 20
local nWidth   := 100
local nHeight  := 200

local nTop2    := 110
local nLeft2   := 120

RectF  rc1( nLeft, nTop, nWidth, nHeight )
PointF pt2( nLeft2, nTop2 )

rc1:GetLocation( pt2 )

return pt2:X == nLeft .and. pt2:Y == nTop


*********************************************************************************************************************
  function TestGetBounds()
*********************************************************************************************************************
local rc1, rc2

local nTop     := 10
local nLeft    := 20
local nWidth   := 300
local nHeight  := 400

local nTop2    := 110
local nLeft2   := 120
local nWidth2  := 1300
local nHeight2 := 1400

RectF rc1( nLeft, nTop, nWidth, nHeight )
RectF rc2( nLeft2, nTop2, nWidth2, nHeight2 )

rc1:GetBounds( rc2 )

return rc2:GetLeft() == nLeft .and. rc2:GetTop() == nTop .and. rc2:Width() == nWidth .and. rc2:Height() == nHeight

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

