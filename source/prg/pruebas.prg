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

      TestLinearGB()
      SHOW RESULT

   ENDDEFINE

return nil

*****************************************************************************************
  function TestLinearGB() //LinearGradientBrush
*****************************************************************************************

   local oPoint1, oPoint2, oColor1, oColor2
   local oPoint3, oPoint4
   local oLGB, oLGBF, oLGBL, oLGBLF, oLGBL2, oLGBLF2
   local oRect, oRectF, aFactor, aPositions
   local aColor := {}
   local ablendPositions := {}
   local aColor2, ablendPositions2, aColor3
   local oRect2
   local oMatrix, oMatrix2, oMatrix3
   local aElements

   Point oPoint1(50, 50)
   Point oPoint2(200, 100)

   PointF oPoint3(50, 50)
   PointF oPoint4(200, 100)

   Color oColor1(255, 255, 0, 0)
   Color oColor2(255, 0, 0, 255)
   Rect oRect(20, 10, 200, 100)
   Rect oRectF(20, 10, 200, 100)

   AAdd( aColor, Color(255, 255, 0, 0) )
   AAdd( aColor, Color(255, 0, 0, 255) )
   AAdd( aColor, Color(255, 0, 255, 0) )

   AAdd( ablendPositions, 0.0 )
   AAdd( ablendPositions, 0.3 )
   AAdd( ablendPositions, 1.0 )

   Matrix oMatrix2(2.0, 0, 0, 1, 0, 0)
   Matrix oMatrix3(1, 0, 0, 1, 50, 0)

   LinearGradientBrush oLGB( oPoint1, oPoint2, oColor1, oColor2 )
   LinearGradientBrush oLGBF( oPoint3, oPoint4, oColor1, oColor2 )
   LinearGradientBrush oLGBL( oRect, oColor1, oColor2, LinearGradientModeVertical )
   LinearGradientBrush oLGBLF( oRect, oColor1, oColor2, LinearGradientModeVertical )
   LinearGradientBrush oLGBL2( oRectF, oColor1, oColor2, 30, .T. )
   LinearGradientBrush oLGBLF2( oRect, oColor1, oColor2, 30, .T. )

   SEPARADOR( "LINEARGRADIENTBRUSH" )

   TEST ! Empty( oLGB:handle )          DESCRIPTION "Constructor Point, Point, Color, Color"  SAMPLE TestLinearGB1( )
   TEST ! Empty( oLGBF:handle )         DESCRIPTION "Constructor PointF, PointF, Color, Color"
   TEST ! Empty( oLGBL:handle )         DESCRIPTION "Constructor Rect, Color, Color, LinearGradientMode"
   TEST ! Empty( oLGBLF:handle )        DESCRIPTION "Constructor RectF, Color, Color, LinearGradientMode"
   TEST ! Empty( oLGBL2:handle )        DESCRIPTION "Constructor Rect, Color, Color, angle, isAngleScalable"
   TEST ! Empty( oLGBLF2:handle )       DESCRIPTION "Constructor RectF, Color, Color, angle, isAngleScalable"
   TEST oLGB:GetBlendCount() > 0        DESCRIPTION "GetBlendCount = " + Str( oLGB:GetBlendCount() )
   TEST oLGB:SetBlend({ 0.0, 0.4, 0.6, 1.0}, {0.0, 0.2, 0.8, 1.0 } ) == 0 DESCRIPTION "SetBlend" SAMPLE Example_SetBlend()
   TEST oLGB:SetInterpolationColors ( aColor, ablendPositions ) == 0      DESCRIPTION "SetInterpolationColors "
   TEST oLGB:GetInterpolationColorCount() > 0                             DESCRIPTION "GetInterpolationColorCount = " + str( oLGB:GetInterpolationColorCount() )
   TEST oLGB:GetInterpolationColors ( @aColor2, @ablendPositions2 ) == 0  DESCRIPTION "GetInterpolationColors "
   TEST oLGB:GetRectangle( @oRect2 ) == 0                             DESCRIPTION "GetRectangle"
   TEST oLGB:SetTransform( @oMatrix2 ) == 0                            DESCRIPTION "SetTransform"
   TEST oLGB:GetTransform( @oMatrix ) == 0                             DESCRIPTION "GetTransform"
   TEST oLGB:SetWrapMode( WrapModeTileFlipX ) == 0                     DESCRIPTION "SetWrapMode = WrapModeTileFlipX"
   TEST oLGB:GetWrapMode( WrapModeTileFlipX ) == WrapModeTileFlipX     DESCRIPTION "GetWrapMode = " + Str( WrapModeTileFlipX )
   TEST oLGB:SetGammaCorrection() == 0                                 DESCRIPTION "SetGammaCorrection"
   TEST oLGB:GetGammaCorrection()                                      DESCRIPTION "GetGammaCorrection"
   TEST oLGB:MultiplyTransform( oMatrix3, MatrixOrderAppend ) == 0     DESCRIPTION "MultiplyTransform" SAMPLE Example_MultTrans()
   TEST oLGB:ResetTransform() == 0                                     DESCRIPTION "ResetTransform"
   TEST oLGB:RotateTransform( 20, MatrixOrderAppend ) == 0             DESCRIPTION "RotateTransform" SAMPLE Example_RotateTrans()
   TEST oLGB:ScaleTransform( 2, 5, MatrixOrderAppend ) == 0            DESCRIPTION "ScaleTransform"
   TEST oLGB:SetBlendBellShape( 0.5, 1 ) == 0                          DESCRIPTION "SetBlendBellShape" SAMPLE Example_SetBlendBell()
   TEST oLGB:SetBlendTriangularShape( 0.5, 1 ) == 0                    DESCRIPTION "SetBlendTriangularShape" SAMPLE Example_SetBlendTri()
   TEST oLGB:SetLinearColors( oColor1, oColor2 ) == 0                  DESCRIPTION "SetLinearColors "  SAMPLE Example_SetLinColors()
   TEST oLGB:GetLinearColors( @aColor3 ) == 0                          DESCRIPTION "GetLinearColors "
   TEST oLGB:TranslateTransform( 2, 5, MatrixOrderAppend ) == 0        DESCRIPTION "TranslateTransform"

//   xbrowse( aFactor )
//   xbrowse( aPositions )

//   xbrowse( aColor2 )
//   xbrowse( ablendPositions2 )

//   xbrowse( aColor3 )
//   ? aColor3[ 1 ]:GetRed()

//     ? oRect2:X(), oRect2:Y(), oRect2:Width(), oRect2:Height()
//   oMatrix:GetElements( @aElements )
//   xbrowse( aElements )


return 0

*****************************************************************************************
  function TestMatrix
*****************************************************************************************

  local oMatrix, oMatrix2, oMatrix3, oMatrix4, oClone
  local aElements
  local nStatus
  local oRect, oPointF
  local aPoint := {}
  local aPointF := {}

  RectF oRect( 10,10,100,100 )
  PointF oPointF( 50, 70 )
  Matrix oMatrix()
  Matrix oMatrix2( oRect, oPointF )
  Matrix oMatrix3( 3, 0, 0, 1, 0, 0 )
  Matrix oMatrix4( 1, 0, 0, 1, 20, 40 )

  AAdd( aPoint, Point( 50, 100 ) )
  AAdd( aPoint, Point( 100, 50 ) )
  AAdd( aPoint, Point( 150, 125 ) )
  AAdd( aPoint, Point( 200, 100 ) )
  AAdd( aPoint, Point( 250, 150 ) )

  AAdd( aPointF, PointF( 50, 100 ) )
  AAdd( aPointF, PointF( 100, 50 ) )
  AAdd( aPointF, PointF( 150, 125 ) )
  AAdd( aPointF, PointF( 200, 100 ) )
  AAdd( aPointF, PointF( 250, 150 ) )


  SEPARADOR( "MATRIX" )

  TEST ! empty( oMatrix:handle )                       DESCRIPTION "Constructor "
  TEST ! empty( oMatrix2:handle )                      DESCRIPTION "Constructor Matrix( RectF, PointF )"
  TEST ! empty( oMatrix3:handle )                      DESCRIPTION "Constructor Matrix( REAL, REAL, REAL, REAL, REAL, REAL )"
  TEST !Empty( ( oClone := oMatrix3:Clone() ):handle )  DESCRIPTION "Clone"
  TEST oMatrix:Equals( oClone )                        DESCRIPTION "Equals"
  TEST oMatrix3:GetElements( @aElements ) == 0          DESCRIPTION "GetElements"
  nStatus = oMatrix:GetLastStatus()
  TEST hb_IsNumeric( oMatrix:GetLastStatus() )         DESCRIPTION "GetLastStatus is =" + str( nStatus )
  TEST oMatrix3:Invert() == 0                          DESCRIPTION "Invert"
  TEST oMatrix3:IsIdentity()                           DESCRIPTION "IsIdentity"
  TEST oMatrix3:IsInvertible()                         DESCRIPTION "IsInvertible"
  TEST oMatrix3:Multiply( oMatrix4, MatrixOrderAppend ) == 0           DESCRIPTION "Multiply"
  TEST oMatrix4:OffsetX() == 20                        DESCRIPTION "OffsetX"
  TEST oMatrix4:OffsetY() == 40                        DESCRIPTION "OffsetY"
  TEST oMatrix4:Reset() == 0                           DESCRIPTION "Reset"
  TEST oMatrix2:Rotate( 30, MatrixOrderAppend ) == 0 DESCRIPTION "Rotate"
  TEST oMatrix2:Rotate( 30, PointF(150, 100), MatrixOrderAppend ) == 0 DESCRIPTION "RotateAt"
  TEST oMatrix4:Scale( 3, 2, MatrixOrderAppend ) == 0  DESCRIPTION "Scale"
  TEST oMatrix4:SetElements( 1, 0, 0, 1, 30, 50 ) == 0  DESCRIPTION "SetElements"
  TEST oMatrix4:Shear( 3, 0, MatrixOrderAppend ) == 0  DESCRIPTION "Shear"
  TEST oMatrix4:TransformPoints( aPoint ) == 0         DESCRIPTION "TransformPoints with Point Atrray"
  TEST oMatrix4:TransformPointsF( aPointF ) == 0        DESCRIPTION "TransformPoints with PointF Atrray"
  TEST oMatrix4:TransformVectors( aPoint ) == 0         DESCRIPTION "TransformVentors with Point Atrray"
  TEST oMatrix4:TransformVectorsF( aPointF ) == 0       DESCRIPTION "TransformVectorsF with PointF Atrray"
  TEST oMatrix4:Translate( 150, 100, MatrixOrderAppend ) == 0 DESCRIPTION "Translate"


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


function exampleWindow( bCode )

   DEFINE WINDOW oWnd TITLE result->descrip

   oWnd:bPainted = bCode

   ACTIVATE WINDOW oWnd

return nil

function TestLinearGB1( )


   local bPainted := { | hDC |
   	                  local myGraphics
   	                  local linGrBrush
                      Graphics myGraphics( hDC )
                      LinearGradientBrush linGrBrush(  Point(50, 50),  Point(200, 100),  Color(255, 255, 0, 0),  Color(255, 0, 0, 255) )  // blue
                      myGraphics:FillRectangle( linGrBrush, 0, 0, 300, 200)
                      return nil
                     }

   exampleWindow( bPainted )

return nil


function  Example_RotateTrans()


    local bPainted := { | hDC |
   	  local myGraphics, linGrBrush
      Graphics myGraphics( hDC )

      LinearGradientBrush linGrBrush( ;
         Rect(0, 0, 80, 40),;
         Color(255, 255, 0, 0),;  // red
         Color(255, 0, 0, 255),;  // blue
         LinearGradientModeHorizontal )

      // Fill a large area with the linear gradient brush (no transformation).
      myGraphics:FillRectangle( linGrBrush, 0, 0, 800, 150)

      // Apply a composite transformation: first scale, then rotate.
      linGrBrush:ScaleTransform(2, 1)                    // horizontal doubling
      linGrBrush:RotateTransform(20, MatrixOrderAppend)  // 20-degree rotation

      // Fill a large area with the transformed linear gradient brush.
      myGraphics:FillRectangle( linGrBrush, 0, 200, 800, 150)
   }

   exampleWindow( bPainted )

return nil


function  Example_MultTrans()

    local bPainted := { | hDC |
      local myGraphics, S,T, linGrBrush
      Graphics myGraphics(hdc)

      Matrix S(2, 0, 0, 1, 0, 0)   // horizontal doubling
      Matrix T(1, 0, 0, 1, 50, 0)  // horizontal translation of 50 units

      LinearGradientBrush linGrBrush(;
         Rect(0, 0, 200, 100),;
         Color(255, 255, 0, 0),;     // red
         Color(255, 0, 0, 255), ;    // blue
         LinearGradientModeHorizontal)

      // Fill a large area with the gradient brush (no transformation).
      myGraphics:FillRectangle(linGrBrush, 0, 0, 800, 100)

      // Apply the scaling transformation.
      linGrBrush:SetTransform(S)

      // Fill a large area with the scaled gradient brush.
      myGraphics:FillRectangle(linGrBrush, 0, 150, 800, 100)

      // Form a composite transformation: first scale, then translate.
      linGrBrush:MultiplyTransform(T, MatrixOrderAppend)

      // Fill a large area with the scaled and translated gradient brush.
      myGraphics:FillRectangle(linGrBrush, 0, 300, 800, 100)
      return nil
   }

    exampleWindow( bPainted )

return nil

function Example_SetBlendBell()

   local bPainted := { | hDC |
   	 local myGraphics, linGrBrush
     Graphics myGraphics(hdc)

     LinearGradientBrush linGrBrush(;
        Point(0, 0),;
        Point(500, 0),;
        Color(255, 255, 0, 0),;   // red
        Color(255, 0, 0, 255))  // blue

     linGrBrush:SetBlendBellShape(0.5, 0.6)
     myGraphics:FillRectangle(linGrBrush, 0, 0, 500, 50)

     linGrBrush:SetBlendBellShape(0.5, 0.8)
     myGraphics:FillRectangle(linGrBrush, 0, 75, 500, 50)

     linGrBrush:SetBlendBellShape(0.5, 1.0)
     myGraphics:FillRectangle(linGrBrush, 0, 150, 500, 50)
   }

   exampleWindow( bPainted )

return nil

function Example_SetBlendTri()
   local bPainted := {| hDC |
   	local myGraphics, linGrBrush

      Graphics myGraphics(hdc)

      LinearGradientBrush linGrBrush(;
         Point(0, 0),;
         Point(500, 0),;
         Color(255, 255, 0, 0),;   // red
         Color(255, 0, 0, 255))  // blue

      linGrBrush:SetBlendTriangularShape(0.5, 0.6)
      myGraphics:FillRectangle(linGrBrush, 0, 0, 500, 50)

      linGrBrush:SetBlendTriangularShape(0.5, 0.8)
      myGraphics:FillRectangle(linGrBrush, 0, 75, 500, 50)

      linGrBrush:SetBlendTriangularShape(0.5, 1.0)
   }

   exampleWindow( bPainted )

return nil


function  Example_SetBlend()

   local bPainted := { | hDC |
   	  local myGraphics, linGrBrush, rect
      Graphics myGraphics(hdc)

      Rect rect(0, 0, 300, 100)

      LinearGradientBrush linGrBrush(;
         rect,;
         Color(255, 255, 0, 0), ; // red
         Color(255, 0, 0, 255),;  // blue
         LinearGradientModeHorizontal)

      linGrBrush:SetBlend({0.0, 0.4, 0.6, 1.0}, {0.0, 0.2, 0.8, 1.0})
      myGraphics:FillRectangle(linGrBrush, rect)
      return nil
   }

   exampleWindow( bPainted )

return nil






function Example_SetLinColors()

   local bPainted := { | hDC |
   	  local myGraphics, linGrBrush, rect
   Graphics myGraphics(hdc)

   LinearGradientBrush linGrBrush( ;
      Rect(0, 0, 100, 50),;
      Color(255, 255, 0, 0),;  // red
      Color(255, 0, 0, 255),;  // blue
      LinearGradientModeHorizontal )

   myGraphics:FillRectangle(linGrBrush, 0, 0, 100, 50)

   linGrBrush:SetLinearColors( ;
      Color(255, 0, 0, 255),;   // blue
      Color(255, 0, 255, 0))  // green

   myGraphics:FillRectangle(linGrBrush, 0, 75, 100, 50)
}

   exampleWindow( bPainted )

return nil






init procedure entrada

  gdiplusstartup()

return


exit procedure salida

  GdiplusShutdown()

return

