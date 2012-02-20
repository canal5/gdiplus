#include "fivewin.ch"
#include "testunit.ch"
#include "gdip.ch"

function main()
Local oTest

   DEFINE SUITTEST oTest

//      TestsGraphics()
//      TestsPen()
//      TestsColor()
//      TestsBrush()
//      TestsFont()
//      TestsSizeF()
      TestMatrix()
//      TestLinearGB()
      
//      TestImage()
//      TestSolidBrush()
//      TestPoint()
//      TestPointF()
//      TestsRectF()
//      TestsRect()
      
      SHOW RESULT

   ENDDEFINE

return nil

*****************************************************************************************
  function TestPointF()
*****************************************************************************************

   local oPlus
   local oMinus
   
   oPlus := PointF( 40.5, 10 ) + PointF( -20, -30.2 )
   
   oMinus:= PointF( 40.5, 10 ) - PointF( -20, -30.2 )
   
   SEPARADOR( "POINTF" )

   TEST !empty( PointF():handle )                       DESCRIPTION "PointF()"
   TEST !empty( PointF( 20.1, 20.1 ):handle )           DESCRIPTION "PointF( 20.1, 20.1 )"
   TEST !empty( PointF( PointF( 10.2, 10.2 ) ):handle ) DESCRIPTION "PointF( Point )"
   TEST !empty( PointF( Size( 40.1, 100.1 ) ):handle )  DESCRIPTION "PointF( Size )"
   TEST PointF( 20.4, 20.4 ) == PointF( 20.4, 20.4 )    DESCRIPTION "Equals"
   TEST oPlus:isKindOf( "GPPOINTF" )                    DESCRIPTION "PointF( 40.5, 10 ) + PointF( -20, -30.2 )" SAMPLE ( MsgInfo( oPlus:X, "X Value" ), MsgInfo( oPlus:Y, "Y Value" ) )
   TEST oMinus:isKindOf( "GPPOINTF" )                   DESCRIPTION "PointF( 40.5, 10 ) - PointF( -20, -30.2 )" SAMPLE ( MsgInfo( oMinus:X, "X Value" ), MsgInfo( oMinus:Y, "Y Value" ) )
   
return 0

*****************************************************************************************
  function TestPoint()
*****************************************************************************************

   local oPlus
   local oMinus
   
   oPlus := Point( 40, 10 ) + Point( -20, -30 )
   oMinus:= Point( 40, 10 ) - Point( -20, -30 )
   
   SEPARADOR( "POINT" )

   TEST !empty( Point():handle )                      DESCRIPTION "Point()"
   TEST !empty( Point( 20, 20 ):handle )              DESCRIPTION "Point( 20, 20 )"
   TEST !empty( Point( Point( 10, 10 ) ):handle )     DESCRIPTION "Point( Point )"
   TEST !empty( Point( Size( 40, 100 ) ):handle )     DESCRIPTION "Point( Size )"
   TEST Point( 20, 20 ) == Point( 20, 20 )            DESCRIPTION "Equals"
   TEST oPlus:isKindOf( "GPPOINT" )                   DESCRIPTION "Point( 40, 10 ) + Point( -20, -30 )" SAMPLE ( MsgInfo( oPlus:X, "X Value" ), MsgInfo( oPlus:Y, "Y Value" ) )
   TEST oMinus:isKindOf( "GPPOINT" )                  DESCRIPTION "Point( 40, 10 ) + Point( -20, -30 )" SAMPLE ( MsgInfo( oMinus:X, "X Value" ), MsgInfo( oMinus:Y, "Y Value" ) )
   
return 0


*****************************************************************************************
  function TestImage()
*****************************************************************************************

local oImage

Image oImage("images\mosaic.png")

   SEPARADOR( "IMAGE" )

   TEST ! Empty( oImage:handle )          DESCRIPTION "Constructor Image. No guarda bien los cambios del ejemplo"  SAMPLE Example_SaveFile()

return 0

*****************************************************************************************
  function TestSolidBrush()
*****************************************************************************************

local oSB, oColor

   SolidBrush oSB( Color(255, 0, 0, 255) )

   SEPARADOR( "SOLID BRUSH" )

   TEST ! Empty( oSB:handle )          DESCRIPTION "Constructor Solid Brush"  
   TEST oSB:GetColor( @oColor ) == 0   DESCRIPTION "GetColor" SAMPLE Example_GetColor()   
   TEST oSB:SetColor( oColor ) == 0    DESCRIPTION "SetColor" SAMPLE Example_SetColor()
   
   
return 0


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
//  TEST oMatrix:Equals( oClone )                        DESCRIPTION "Equals"
//  TEST oMatrix3:GetElements( @aElements ) == 0          DESCRIPTION "GetElements"
//  nStatus = oMatrix:GetLastStatus()
//  TEST hb_IsNumeric( oMatrix:GetLastStatus() )         DESCRIPTION "GetLastStatus is =" + str( nStatus )
//  TEST oMatrix3:Invert() == 0                          DESCRIPTION "Invert"
//  TEST oMatrix3:IsIdentity()                           DESCRIPTION "IsIdentity"
//  TEST oMatrix3:IsInvertible()                         DESCRIPTION "IsInvertible"
//  TEST oMatrix3:Multiply( oMatrix4, MatrixOrderAppend ) == 0           DESCRIPTION "Multiply"
//  TEST oMatrix4:OffsetX() == 20                        DESCRIPTION "OffsetX"
//  TEST oMatrix4:OffsetY() == 40                        DESCRIPTION "OffsetY"
//  TEST oMatrix4:Reset() == 0                           DESCRIPTION "Reset"
//  TEST oMatrix2:Rotate( 30, MatrixOrderAppend ) == 0 DESCRIPTION "Rotate"
//  TEST oMatrix2:Rotate( 30, PointF(150, 100), MatrixOrderAppend ) == 0 DESCRIPTION "RotateAt"
//  TEST oMatrix4:Scale( 3, 2, MatrixOrderAppend ) == 0  DESCRIPTION "Scale"
//  TEST oMatrix4:SetElements( 1, 0, 0, 1, 30, 50 ) == 0  DESCRIPTION "SetElements"
//  TEST oMatrix4:Shear( 3, 0, MatrixOrderAppend ) == 0  DESCRIPTION "Shear"
//  TEST oMatrix4:TransformPoints( aPoint ) == 0         DESCRIPTION "TransformPoints with Point Atrray"
//  TEST oMatrix4:TransformPointsF( aPointF ) == 0        DESCRIPTION "TransformPoints with PointF Atrray"
//  TEST oMatrix4:TransformVectors( aPoint ) == 0         DESCRIPTION "TransformVentors with Point Atrray"
//  TEST oMatrix4:TransformVectorsF( aPointF ) == 0       DESCRIPTION "TransformVectorsF with PointF Atrray"
//  TEST oMatrix4:Translate( 150, 100, MatrixOrderAppend ) == 0 DESCRIPTION "Translate"


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
  RectF oRect2 ( oPoint, oSize )
  RectF oRect3( 10, 10, 200, 200 )

  SEPARADOR( "RECTF" )
  TEST !empty(oRect:handle )          DESCRIPTION "Método New"
  TEST !empty(oRect2:handle )         DESCRIPTION "Metodo New( oPoint, oSize )"
  TEST oRect:Contains( 20, 20 )       DESCRIPTION "Método Contains( X, Y )"
  TEST oRect:Contains( oPoint )      DESCRIPTION "Método Contains2( pt )"
  TEST oRect:Contains( oRect )       DESCRIPTION "Método Contains3( rc )"
  TEST oRect:Equals( oRect3 )         DESCRIPTION "Método Equals"

  TEST TestGetBoundsF( )               DESCRIPTION "Método TestGetBounds" SAMPLE Example_GetBoundsF()
  TEST TestGetLocationF()              DESCRIPTION "Método TestGetLocation" SAMPLE Example_GetLocationF()
  TEST oRect:GetBottom() == 10 + 200  DESCRIPTION "Método GetBottom"
  TEST oRect:GetLeft() == 10          DESCRIPTION "Método GetLeft"
  TEST oRect:GetRight() == 10 + 200   DESCRIPTION "Método GetRight"
  TEST oRect:GetTop() == 10           DESCRIPTION "Método GetTop"
  TEST TestRectFInflate()             DESCRIPTION "Método Inflate( X, Y )" SAMPLE Example_InflatePointF()
  TEST TestRectFInflate2()            DESCRIPTION "Método Inflate( pt )" SAMPLE Example_InflatePointF2()
  TEST TestRectFIntersect()           DESCRIPTION "Método Intersect( rc )" SAMPLE Example_IntersectRectF()
  TEST TestRectFIntersect2()          DESCRIPTION "Método Intersect( rc1,rc2,rc3 )" SAMPLE Example_IntersectABCF()
  TEST TestRectFIntersectsWith()      DESCRIPTION "Método IntersectsWith( rc )"  SAMPLE Example_IntersectsWithF()
  TEST TestRectFIsEmptyArea()         DESCRIPTION "Método IsEmptyArea()"
  TEST TestRectFOffset()              DESCRIPTION "Método Offset( X, Y )" SAMPLE Example_OffsetPointABF()
  TEST TestRectFOffset2()             DESCRIPTION "Método Offset(pt)" SAMPLE Example_OffsetPointF()
  TEST TestRectFUnion()               DESCRIPTION "Método Union(rc1,rc2,rc3)" SAMPLE Example_UnionABCF()

return 0

*****************************************************************************************
  function TestsRect()
*****************************************************************************************

  local oRect, oRect2, oRect3, oPoint

  Size  oSize ( 50, 50 )
  Point oPoint( 13, 22 )
  Rect oRect ( 10, 10, 200, 200 )
  Rect oRect2 ( oPoint, oSize )
  Rect oRect3( 10, 10, 200, 200 )

  SEPARADOR( "RECT" )
  TEST !empty(oRect:handle )          DESCRIPTION "Método New"
  TEST !empty(oRect2:handle )         DESCRIPTION "Metodo New( oPoint, oSize )"
  TEST oRect:Contains( 20, 20 )       DESCRIPTION "Método Contains( X, Y )"
  TEST oRect:Contains( oPoint )      DESCRIPTION "Método Contains2( pt )"
  TEST oRect:Contains( oRect )       DESCRIPTION "Método Contains3( rc )"
  TEST oRect:Equals( oRect3 )         DESCRIPTION "Método Equals"
  TEST TestGetBounds( )               DESCRIPTION "Método TestGetBounds" SAMPLE Example_GetBounds()
  TEST TestGetLocation()              DESCRIPTION "Método TestGetLocation" SAMPLE Example_GetLocation()
  TEST oRect:GetBottom() == 10 + 200  DESCRIPTION "Método GetBottom"
  TEST oRect:GetLeft() == 10          DESCRIPTION "Método GetLeft"
  TEST oRect:GetRight() == 10 + 200   DESCRIPTION "Método GetRight"
  TEST oRect:GetTop() == 10           DESCRIPTION "Método GetTop"
  TEST TestRectInflate()             DESCRIPTION "Método Inflate( X, Y )" SAMPLE Example_InflatePointF()
  TEST TestRectInflate2()            DESCRIPTION "Método Inflate( pt )" SAMPLE Example_InflatePointF2()
  TEST TestRectIntersect()           DESCRIPTION "Método Intersect( rc )" SAMPLE Example_IntersectRectF()
  TEST TestRectIntersect2()          DESCRIPTION "Método Intersect( rc1,rc2,rc3 )" SAMPLE Example_IntersectABC()
  TEST TestRectIntersectsWith()      DESCRIPTION "Método IntersectsWith( rc )"  SAMPLE Example_IntersectsWith()
  TEST TestRectIsEmptyArea()         DESCRIPTION "Método IsEmptyArea()"
  TEST TestRectOffset()              DESCRIPTION "Método Offset( X, Y )" SAMPLE Example_OffsetPointAB()
  TEST TestRectOffset2()             DESCRIPTION "Método Offset(pt)" SAMPLE Example_OffsetPointF()
  TEST TestRectUnion()               DESCRIPTION "Método Union(rc1,rc2,rc3)" SAMPLE Example_UnionABC()

return 0

*********************************************************************************************************************
  function TestsFont()
*********************************************************************************************************************

  local oFont

      oFont  := Font( "Ms Sans Serif", 12 )

      SEPARADOR( "FONT" )
      TEST !Empty( oFont:handle  )  DESCRIPTION "Creación objeto GPFont"

return 0

********************************************************************************************************************
  function TestsBrush()
*********************************************************************************************************************

  local oColor, oBrush

  oColor := Color( 255, 10, 20, 30 )
  oBrush := SolidBrush( oColor )

  SEPARADOR( "BRUSH" )
  TEST !Empty( oBrush:handle )  DESCRIPTION "Creación objeto GPSolidBrush"

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
  function TestsPen()
*********************************************************************************************************************

local oColor := Color( 255, 10, 20, 30 )
local oBrush := SolidBrush( oColor )
local oPen   

   Pen oPen( oBrush, 5 )

   SEPARADOR( "PEN" )

   TEST !empty( Pen( oPen ):handle )                   DESCRIPTION "Constructor Pen. Pen( oPen )"
   TEST !empty( Pen( oBrush, 5 ):handle )              DESCRIPTION "Constructor Pen. Pen( oBrush, 5 )"
   TEST !empty( Pen( oColor, 5 ):handle )              DESCRIPTION "Constructor Pen. Pen( oColor, 5 )"
   TEST oPen:SetColor( oColor ) == 0                   DESCRIPTION "SetColor( oColor )" SAMPLE Example_PenSetColor()
   TEST oPen:SetBrush( oBrush ) == 0                   DESCRIPTION "SetBrush( oBrush )" SAMPLE Example_PenSetBrush()
   TEST oPen:ScaleTransform( 8, 4 ) == 0               DESCRIPTION "ScaleTransform( 8, 4 )" SAMPLE Example_PenScaleTransform()
   TEST oPen:SetAlignment( PenAlignmentInset ) == 0    DESCRIPTION "oPen:SetAlignment( PenAlignmentInset )" SAMPLE Example_PenSetAlignment()
   
   
//   TEST oPen:SetAlignment( PenAlignment.Center ) == oPen:GetAlignment() DESCRIPTION "SetAlignment, GetAlignMent"

return 0


*********************************************************************************************************************
  function TestsGraphics()
*********************************************************************************************************************

      SEPARADOR( "GRAPHICS" )
      TEST TestConstructorDestructorGraphics()               DESCRIPTION "Probando el constructor/destructor de Graphics"

return 0



*********************************************************************************************************************
  function TestRectFUnion()
*********************************************************************************************************************
local r1, r2, r3, rRes

RectF r1( 0, 0, 0, 0 )
RectF r2( 100, 100, 100, 100 )
RectF r3( 150, 150, 100, 100 )

// r1:x = 100
// r1:y = 100
// r1:Width = 150
// r1:Height = 150

r1:Union( @r1, r2, r3 )

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

r1:Offset( pt )

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
RectF r2( 300, 300, 100, 100 )
RectF r3( 310, 320, 100, 100 )

lCross := r4:Intersect( @r1, r2, r3 )

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
       
oRect:Inflate( oPoint )

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
  function TestGetLocationF()
*********************************************************************************************************************
local rc1, pt2

local nTop     := 10
local nLeft    := 20
local nWidth   := 100
local nHeight  := 200

local nTop2    := 110
local nLeft2   := 120

RectF  rc1( nLeft, nTop, nWidth, nHeight )

rc1:GetLocation( @pt2 )

return pt2:X == nLeft .and. pt2:Y == nTop


*********************************************************************************************************************
  function TestGetBoundsF()
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


rc1:GetBounds( @rc2 )

return rc2:GetLeft() == nLeft .and. rc2:GetTop() == nTop .and. rc2:Width() == nWidth .and. rc2:Height() == nHeight



////

*********************************************************************************************************************
  function TestRectUnion()
*********************************************************************************************************************
local r1, r2, r3, rRes

Rect r1( 0, 0, 0, 0 )
Rect r2( 100, 100, 100, 100 )
Rect r3( 150, 150, 100, 100 )

// r1:x = 100
// r1:y = 100
// r1:Width = 150
// r1:Height = 150

r1:Union( @r1, r2, r3 )

return r1:X      == 100 .and.;
       r1:y      == 100 .and.;
       r1:Width  == 150 .and.;
       r1:Height == 150

*********************************************************************************************************************
  function TestRectOffset2()
*********************************************************************************************************************
local r1, pt
local nTop  := 20
local nLeft := 10
local nWidth := 100
local nHeight := 200
local x := 5
local y := 10


Rect  r1( nLeft, nTop, nWidth, nHeight )
Point pt( x, y )

r1:Offset( pt )

return r1:GetLeft() == nLeft + x .and.;
       r1:GetTop() == nTop + y   .and.;
       r1:GetRight() == nLeft + nWidth + x .and.;
       r1:GetBottom() == nTop + nHeight + y

*********************************************************************************************************************
  function TestRectOffset()
*********************************************************************************************************************

local r1, pt
local nTop  := 20
local nLeft := 10
local nWidth := 100
local nHeight := 200
local x := 5
local y := 10


Rect  r1( nLeft, nTop, nWidth, nHeight )

r1:Offset( x, y )

return r1:GetLeft() == nLeft + x .and.;
       r1:GetTop() == nTop + y   .and.;
       r1:GetRight() == nLeft + nWidth + x .and.;
       r1:GetBottom() == nTop + nHeight + y


*********************************************************************************************************************
  function TestRectIsEmptyArea()
*********************************************************************************************************************
local r1, r2

Rect r1( 0,0,0,0 )
Rect r2( 10,10,10,10)

return r1:IsEmptyArea() .and. !r2:IsEmptyArea()

*********************************************************************************************************************
  function TestRectIntersectsWith()
*********************************************************************************************************************
local r1, r2, r3

Rect r1( 10, 10, 100, 100 )
Rect r2( 300, 300, 100, 100 )
Rect r3( 310, 310, 100, 100 )

return !r1:IntersectsWith( r2 ) .and. r2:IntersectsWith( r3 )

*********************************************************************************************************************
  function TestRectIntersect2()
*********************************************************************************************************************
local r1, r2, r3, r4
local lCross

Rect r4( 0, 0, 0, 0 )
Rect r2( 300, 300, 100, 100 )
Rect r3( 310, 320, 100, 100 )

lCross := r4:Intersect( @r1, r2, r3 )

return lCross .and. ;
       r1:GetLeft()   == 310      .and. ;
       r1:GetTop()    == 320      .and. ;
       r1:GetRight()  == 400      .and. ;
       r1:GetBottom() == 400
*********************************************************************************************************************
  function TestRectIntersect()
*********************************************************************************************************************
local r1, r2

Rect r1( 300, 300, 100, 100 )
Rect r2( 310, 320, 100, 100 )

return r1:Intersect( r2 )    .and. ;
       r1:GetLeft()   == 310 .and. ;
       r1:GetTop()    == 320 .and. ;
       r1:GetRight()  == 400 .and. ;
       r1:GetBottom() == 400

********************************************************************************************************************
  function TestRectInflate2()
*********************************************************************************************************************
local oRect, oPoint
local nTop  := 20
local nLeft := 10
local nWidth := 500
local nHeight := 300
local X := 10
local Y := 20

Rect oRect( nLeft, nTop, nWidth, nHeight )
Point oPoint( X, Y )
       
oRect:Inflate( oPoint )

return oRect:GetLeft()   == nLeft          - X .and. ;
       oRect:GetTop()    == nTop           - Y .and. ;
       oRect:GetBottom() == nTop  + nHeight+ Y .and. ;
       oRect:GetRight()  == nLeft + nWidth + X


*********************************************************************************************************************
  function TestRectInflate()
*********************************************************************************************************************
local oRect
local nTop  := 20
local nLeft := 10
local nWidth := 500
local nHeight := 300
local X := 10
local Y := 20

Rect oRect( nLeft, nTop, nWidth, nHeight )

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

Rect  rc1( nLeft, nTop, nWidth, nHeight )

rc1:GetLocation( @pt2 )

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

Rect rc1( nLeft, nTop, nWidth, nHeight )


rc1:GetBounds( @rc2 )

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

   DEFINE WINDOW oWnd TITLE alltrim(result->descrip)

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


function Example_SaveFile()

   local bPainted := { | hDC |

         local graphics, image, imageGraphics, brush
         Graphics graphics(hdc)

         // Create an Image object based on a PNG file.
         Image  image("images\Mosaic.png")

         // Draw the image.
         graphics:DrawImage(image, 10, 10)

         // Construct a Graphics object based on the image.
         Graphics imageGraphics(image)

         // Alter the image.
         SolidBrush brush(Color(255, 255, 0, 0))
         imageGraphics:FillEllipse( brush, 10, 10, 100, 100)

         // Draw the altered image.
         graphics:DrawImage(image, 10, 10)

         // Save the altered image.
         //CLSID pngClsid;
         //GetEncoderClsid(L"image/png", &pngClsid);
         if file("images\Mosaic2.png")
            DeleteFile( "images\Mosaic2.png" )
         endif

//         image:Save("images\Mosaic2.png")

         // El método save si funciona, lo que no funciona es modificar la imagen con un nuevo Graphics basado en esa imagen

}

 exampleWindow( bPainted )

return nil

function Example_GetColor()
   local bPainted :=  {| hDC |
   
   local oColor     
   Graphics graphics(hdc)

   // Create a solid brush, and use it to fill a rectangle.
   SolidBrush solidBrush(Color(255, 0, 0, 255))  // blue
   graphics:FillRectangle(solidBrush, 10, 10, 200, 100)

   // Get the color of the solid brush.
   solidBrush:GetColor( @oColor )

   // Create a second solid brush with that same color.
   SolidBrush solidBrush2(oColor)

   // Paint a second rectangle with the second solid brush.
   graphics:FillRectangle(solidBrush2, 220, 10, 200, 100)
   }
   
   exampleWindow( bPainted )
   
return nil



function Example_SetColor()
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      
      // Create a solid brush, and use it to fill a rectangle.
      SolidBrush solidBrush(Color(255, 0, 0, 255))  // blue
      
      graphics:FillRectangle(solidBrush, 10, 10, 200, 100)
      
      // Change the color of the brush, and fill another rectangle.
      solidBrush:SetColor(Color(255, 255, 0, 0))    // red
      
      graphics:FillRectangle(solidBrush, 220, 10, 200, 100)
   
   }

   exampleWindow( bPainted )
   
return nil   


function Example_PenSetBrush( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      
      // Create a HatchBrush object.
      SolidBrush solidBrush(Color(255, 0, 0, 255))  // blue
      
      // Create a pen, and set the brush for the pen.
      Pen pen(Color(255, 255, 0, 0), 10)
      pen:SetBrush(solidBrush)
      
      // Draw a line with the pen.
      graphics:DrawLine( pen, 0, 0, 200, 100)

   }
   
   exampleWindow( bPainted )
   
return nil 


function Example_PenSetColor( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      
      // Create a red pen, and use it to draw a line.
      Pen pen(Color(255, 255, 0, 0), 5)
      graphics:DrawLine(pen, 0, 0, 200, 100)
      
      // Change the pen's color to blue, and draw a second line.
      pen:SetColor(Color(255, 0, 0, 255))
      graphics:DrawLine(pen, 0, 40, 200, 140)

   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_PenScaleTransform( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Create a pen, and use it to draw a rectangle.
      Pen pen(Color(255, 0, 0, 255), 2)
      graphics:DrawRectangle(pen, 50, 50, 150, 100)
      
      // Apply a scaling transformation to the pen.
      pen:ScaleTransform(8, 4)
      
      // Draw a rectangle with the transformed pen.
      graphics:DrawRectangle(pen, 250, 50, 150, 100)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_PenSetAlignment( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a black and a green pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      Pen greenPen(Color(255, 0, 255, 0), 15)
      
      // Set the alignment of the green pen.
      greenPen:SetAlignment(PenAlignmentInset)
      
      // Draw two lines using each pen.
      graphics:DrawEllipse(greenPen, 0, 0, 100, 200)
      graphics:DrawEllipse(blackPen, 0, 0, 100, 200)
   
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_GetBoundsF( )
   local bPainted := { | hdc |
      local rect2
      Graphics graphics(hdc)
      RectF rect1(50, 40, 200, 100)
      rect1:Offset(30, 20)
      
      
      rect1:GetBounds(@rect2)

      
      Pen pen(Color(255, 0, 0, 255))
      graphics:DrawRectangle(pen, rect2)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_GetLocationF( )
   local bPainted := { | hdc |
      
      local pen, location, rect
      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))
      RectF rect(50, 40, 200, 50)
      
      // Get the location of the upper-left corner of the rectangle.
      rect:GetLocation(@location)

      // Draw the rectangle.
      graphics:DrawRectangle(pen, rect)
      
      // Draw a line from the upper-left corner of the rectangle to (0, 0).
      graphics:DrawLine(pen, location, PointF(0, 0))
   }
   
   exampleWindow( bPainted )
   
return nil 



function Example_InflatePointF( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      PointF point(20, 10)
      
      RectF rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)

      rect:Inflate(point)
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_InflatePointF2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      
      RectF rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)

      rect:Inflate( 40, 40 )
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_IntersectABCF( )
   local bPainted := { | hdc |
      local graphics, pGreenPen, rectA, rectB, rectC, blackPen
      Graphics graphics(hdc)
      
      // Create three RectF objects.
      RectF rectA(50, 50, 200, 100)
      RectF rectB(70, 20, 100, 200)
      
      // Draw rectA and rectB with a thin black pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      graphics:DrawRectangle(blackPen, rectA)
      graphics:DrawRectangle(blackPen, rectB)
      
      // Draw the rectangle that indicates the intersection of the two rectangles.
      if(rectA:Intersect(@rectC, rectA, rectB))
//         // rectC is not empty.
//         // Draw the intersection with a thick green pen.
         Pen pGreenPen(Color(255, 0, 255, 0), 7)
         graphics:DrawRectangle(pGreenPen, rectC)
      endif

      return nil
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_IntersectRectF( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Create two RectF objects.
      RectF rect1(50, 50, 200, 100)
      RectF rect2(70, 20, 100, 200)
      
      // Draw rect1 and rect2 with a thin black pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      graphics:DrawRectangle(blackPen, rect1)
      graphics:DrawRectangle(blackPen, rect2)
      
      // Form the intersection of rect1 and rect2, and store
      // the result in rect1.
      rect1:Intersect(rect2)
      
      // Draw the new rect1 with a thick green pen.
      Pen greenPen(Color(255, 0, 255, 0), 7)
      graphics:DrawRectangle(greenPen, rect1)
   }
   
   exampleWindow( bPainted )
   
return nil


function Example_IntersectsWithF( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0), 1)
   
      // Create two RectF objects.
      RectF rect1(50, 50, 200, 100)
      RectF rect2(70, 20, 100, 200)
    
      // Draw rect1.   graphics.DrawRectangle(&pen, rect1);
      // If rect1 intersects with rect2 then draw rect2.
      if(rect2:IntersectsWith(rect1))
         graphics:DrawRectangle(pen, rect2)
      endif
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_OffsetPointABF( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      
      // Create a RectF object, and draw the rectangle.
      RectF rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)
      
      // Offset the rectangle by the PointF object.
      rect:Offset( 30, 20 )
      
      // Redraw the rectangle.
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_OffsetPointF( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      
      // Create a PointF object.
      PointF point(30, 20)
      
      // Create a RectF object, and draw the rectangle.
      RectF rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)
      
      // Offset the rectangle by the PointF object.
      rect:Offset(point)
      
      // Redraw the rectangle.
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 


function Example_UnionABCF( )
   local bPainted := { | hdc |
      local rectRes
      
      Graphics graphics(hdc)
            
      // Create three RectF objects.
      RectF rectA(50, 50, 400, 100)
      RectF rectB(70, 20, 100, 200)
      RectF rectC()
      
      // Determine the union of rectA and rectB, and store the result in rectC.
      if(rectC:Union(@rectRes, rectA, rectB))
         // rectC is not empty.
         // Draw the union with a thick green pen.
         Pen pGreenPen(Color(255, 0, 255, 0), 7)
         graphics:DrawRectangle(pGreenPen, rectRes)         
      endif
      // Draw rectA and rectB with a thin black pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      graphics:DrawRectangle(blackPen, rectA)
      graphics:DrawRectangle(blackPen, rectB)
   
   }
   
   exampleWindow( bPainted )
   
return nil 

///

function Example_GetBounds( )
   local bPainted := { | hdc |
      local rect2
      Graphics graphics(hdc)
      Rect rect1(50, 40, 200, 100)
      rect1:Offset(30, 20)
      
      
      rect1:GetBounds(@rect2)

      
      Pen pen(Color(255, 0, 0, 255))
      graphics:DrawRectangle(pen, rect2)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_GetLocation( )
   local bPainted := { | hdc |
      
      local pen, location, rect
      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))
      Rect rect(50, 40, 200, 50)
      
      // Get the location of the upper-left corner of the rectangle.
      rect:GetLocation(@location)

      // Draw the rectangle.
      graphics:DrawRectangle(pen, rect)
      
      // Draw a line from the upper-left corner of the rectangle to (0, 0).
      graphics:DrawLine(pen, location, PointF(0, 0))
   }
   
   exampleWindow( bPainted )
   
return nil 



function Example_InflatePoint( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      Point point(20, 10)
      
      Rect rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)

      rect:Inflate(point)
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_InflatePoint2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      
      Rect rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)

      rect:Inflate( 40, 40 )
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_IntersectABC( )
   local bPainted := { | hdc |
      local graphics, pGreenPen, rectA, rectB, rectC, blackPen
      Graphics graphics(hdc)
      
      // Create three RectF objects.
      Rect rectA(50, 50, 200, 100)
      Rect rectB(70, 20, 100, 200)
      
      // Draw rectA and rectB with a thin black pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      graphics:DrawRectangle(blackPen, rectA)
      graphics:DrawRectangle(blackPen, rectB)
      
      // Draw the rectangle that indicates the intersection of the two rectangles.
      if(rectA:Intersect(@rectC, rectA, rectB))
//         // rectC is not empty.
//         // Draw the intersection with a thick green pen.
         Pen pGreenPen(Color(255, 0, 255, 0), 7)
         graphics:DrawRectangle(pGreenPen, rectC)
      endif

      return nil
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_IntersectRect( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Create two RectF objects.
      Rect rect1(50, 50, 200, 100)
      Rect rect2(70, 20, 100, 200)
      
      // Draw rect1 and rect2 with a thin black pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      graphics:DrawRectangle(blackPen, rect1)
      graphics:DrawRectangle(blackPen, rect2)
      
      // Form the intersection of rect1 and rect2, and store
      // the result in rect1.
      rect1:Intersect(rect2)
      
      // Draw the new rect1 with a thick green pen.
      Pen greenPen(Color(255, 0, 255, 0), 7)
      graphics:DrawRectangle(greenPen, rect1)
   }
   
   exampleWindow( bPainted )
   
return nil


function Example_IntersectsWith( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0), 1)
   
      // Create two RectF objects.
      Rect rect1(50, 50, 200, 100)
      Rect rect2(70, 20, 100, 200)
    
      // Draw rect1.   graphics.DrawRectangle(&pen, rect1);
      // If rect1 intersects with rect2 then draw rect2.
      if(rect2:IntersectsWith(rect1))
         graphics:DrawRectangle(pen, rect2)
      endif
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_OffsetPointAB( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      
      // Create a RectF object, and draw the rectangle.
      Rect rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)
      
      // Offset the rectangle by the PointF object.
      rect:Offset( 30, 20 )
      
      // Redraw the rectangle.
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 

function Example_OffsetPoint( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 0))
      
      // Create a PointF object.
      Point point(30, 20)
      
      // Create a RectF object, and draw the rectangle.
      Rect rect(100, 100, 80, 40)
      graphics:DrawRectangle(pen, rect)
      
      // Offset the rectangle by the PointF object.
      rect:Offset(point)
      
      // Redraw the rectangle.
      graphics:DrawRectangle(pen, rect)
   }
   
   exampleWindow( bPainted )
   
return nil 


function Example_UnionABC( )
   local bPainted := { | hdc |
      local rectRes
      
      Graphics graphics(hdc)
            
      // Create three RectF objects.
      Rect rectA(50, 50, 400, 100)
      Rect rectB(70, 20, 100, 200)
      Rect rectC()
      
      // Determine the union of rectA and rectB, and store the result in rectC.
      if(rectC:Union(@rectRes, rectA, rectB))
         // rectC is not empty.
         // Draw the union with a thick green pen.
         Pen pGreenPen(Color(255, 0, 255, 0), 7)
         graphics:DrawRectangle(pGreenPen, rectRes)         
      endif
      // Draw rectA and rectB with a thin black pen.
      Pen blackPen(Color(255, 0, 0, 0), 1)
      graphics:DrawRectangle(blackPen, rectA)
      graphics:DrawRectangle(blackPen, rectB)
   
   }
   
   exampleWindow( bPainted )
   
return nil 


/*prototype
function Example_( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

   }
   
   exampleWindow( bPainted )
   
return nil 
*/
init procedure entrada

  gdiplusstartup()

return


exit procedure salida

  GdiplusShutdown()

return

