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
//      TestMatrix()
//      TestLinearGB()
//
//      TestImage()
//      TestSolidBrush()
//      TestPoint()
//      TestPointF()
//      TestsRectF()
//      TestsRect()
//
//      TestGraphicsPath()
//      TestFontFamily()
//      TestFont()
//      TestStringFormat()
//      TestRegion()
//      TestBitmap( oTest )
      TestImageAtt( oTest )

      SHOW RESULT

   ENDDEFINE

return nil

function TestImageAtt( oTest )
  
  SEPARADOR( "IMAGEATTRIBUTES" )
  
  TEST !Empty( ImageAttributes():handle )                                      DESCRIPTION "Constructor ImageAttributes()"
  TEST .T. DESCRIPTION "SetColorMatrix" SAMPLE Example_SetColormatrix( otest )

return nil


function TestRegion()

   local oRegion, path
   local aPoint

   aPoints = {;
      Point(20, 20), ;
      Point(120, 20),;
      Point(120, 70),;
      Point(20, 70) }

   Region oRegion()

   GraphicsPath path()

   path:AddPolygon(aPoints, 4)

   SEPARADOR( "REGION" )

   TEST !Empty( Region():handle )                                      DESCRIPTION "Constructor Region()"
   TEST !Empty( Region( RectF( 10.0, 10.0, 100.0, 100.0 ) ):handle )   DESCRIPTION "Constructor Region()"
   TEST !Empty( Region( Rect( 10, 10, 100, 100 ) ):handle )            DESCRIPTION "Constructor Region()"
   TEST !Empty( oRegion:Clone():handle )                               DESCRIPTION "Clone()"                    SAMPLE Example_RGClone()

   TEST .T.                                                            DESCRIPTION "Complement( GraphicsPath )" SAMPLE Example_ComplementPath1()
   TEST .T.                                                            DESCRIPTION "Complement( Rect )"         SAMPLE Example_ComplementPath2()
   TEST .T.                                                            DESCRIPTION "Complement( RectF )"        SAMPLE Example_ComplementPath3()
   TEST .T.                                                            DESCRIPTION "Complement( Region )"       SAMPLE Example_ComplementPath4()
   TEST .T.                                                            DESCRIPTION "Exclude( GraphicsPath )"    SAMPLE Example_Exclude1()
   TEST .T.                                                            DESCRIPTION "Exclude( Rect )"            SAMPLE Example_Exclude2()
   TEST .T.                                                            DESCRIPTION "Exclude( RectF )"           SAMPLE Example_Exclude3()
   TEST .T.                                                            DESCRIPTION "Exclude( Region )"          SAMPLE Example_Exclude4()
   TEST .T.                                                            DESCRIPTION "GetBounds( Rect )"          SAMPLE Example_GetBounds1()
   TEST .T.                                                            DESCRIPTION "GetBounds( RectF )"         SAMPLE Example_GetBounds2()
   TEST .T.                                                            DESCRIPTION "GetData(  )"                SAMPLE Example_RGGetData()
   TEST .T.                                                            DESCRIPTION "GetDataSize(  )"            SAMPLE Example_RGGetData()
   TEST .T.                                                            DESCRIPTION "GetHRGN(  )"                SAMPLE Example_RGGetHRGN()
   TEST .T.                                                            DESCRIPTION "GetTransform(  )"           SAMPLE Example_RGGetTransform()
   TEST .T.                                                            DESCRIPTION "Intersept( GraphicsPath )"  SAMPLE Example_IntersectPath()
   TEST .T.                                                            DESCRIPTION "Intersept( Rect )"          SAMPLE Example_IntersectPath2()
   TEST .T.                                                            DESCRIPTION "Intersept( RectF )"         SAMPLE Example_IntersectPath3()
   TEST .T.                                                            DESCRIPTION "Intersept( Region )"        SAMPLE Example_IntersectPath4()
   TEST .T.                                                            DESCRIPTION "MakeEmpty()"                SAMPLE Example_MakeEmpty()
   TEST .T.                                                            DESCRIPTION "MakeInfinite()"             SAMPLE Example_MakeInfinite()
   TEST .T.                                                            DESCRIPTION "Transform()"                SAMPLE Example_RGTransform()
   TEST .T.                                                            DESCRIPTION "Translate()"                SAMPLE Example_RGTranslate()
   TEST .T.                                                            DESCRIPTION "Xor( GraphicsPath )"        SAMPLE Example_RGXor1()
   TEST .T.                                                            DESCRIPTION "Xor( Rect )"                SAMPLE Example_RGXor2()
   TEST .T.                                                            DESCRIPTION "Xor( RectF )"               SAMPLE Example_RGXor3()
   TEST .T.                                                            DESCRIPTION "Xor( Region )"              SAMPLE Example_RGXor4()


return nil


function TestStringFormat()

   local oSF

   SEPARADOR( "STRINGFORMAT" )

   StringFormat oSF()


   TEST !Empty( oSF:handle )                                      DESCRIPTION "StringFormat( )"
   TEST !Empty( StringFormat( oSF ):handle )                      DESCRIPTION "StringFormat( )"
   TEST !Empty( StringFormat( StringFormatFlagsNoWrap ):handle )  DESCRIPTION "StringFormat( )"
   TEST !Empty( oSF:Clone():handle )                              DESCRIPTION "Clone( )"              SAMPLE Example_SFClone()
   TEST !Empty( oSF:GenericDefault():handle )                     DESCRIPTION "GenericDefault( )"     SAMPLE Example_SFGenericDefault()
   TEST !Empty( oSF:GenericTypographic():handle )                 DESCRIPTION "GenericTypographic( )" SAMPLE Example_SFGenericTypographic()
   TEST oSF:SetAlignment( StringAlignmentFar ) == 0               DESCRIPTION "SetAlignment( )"       SAMPLE Example_SFSetAlignment()
   TEST oSF:GetAlignment( ) >  0                                  DESCRIPTION "GetAlignment( )"       //SAMPLE Example_SFSetAlignment()

   TEST oSF:SetDigitSubstitution(0, StringDigitSubstituteNone ) == 0  DESCRIPTION "GenericTypographic( )"

   TEST oSF:SetFormatFlags( StringFormatFlagsNoClip ) == 0        DESCRIPTION "SetFormatFlags( )"     SAMPLE Example_SFSetFormatFlags()
   TEST oSF:GetFormatFlags( ) > 0                                 DESCRIPTION "GetFormatFlags( )"    // SAMPLE Example_SFSetFormatFlags()

   TEST oSF:SetHotkeyPrefix(HotkeyPrefixShow)         == 0        DESCRIPTION "SetHotkeyPrefix( )"    SAMPLE Example_SFSetHotkeyPrefix()
   TEST oSF:GetHotkeyPrefix( ) > 0                                DESCRIPTION "GetHotkeyPrefix( )"    //SAMPLE Example_SFSetHotkeyPrefix()

   TEST oSF:SetLineAlignment( StringAlignmentFar ) == 0           DESCRIPTION "SetLineAlignment( )"   SAMPLE Example_SFSetLineAlignment()
   TEST oSF:GetLineAlignment() > 0                                DESCRIPTION "GetLineAlignment( )"   //SAMPLE Example_SFSetLineAlignment()

   TEST .T.                                                       DESCRIPTION "SetMeasurableCharacterRanges( )"   SAMPLE Example_SetMeasCharRanges()
   TEST oSF:SetTabStops( 1, {10,20,30 } ) == 0                    DESCRIPTION "SetTabStops( )"         SAMPLE Example_SFSetTabStops()

   TEST oSF:SetTrimming(StringTrimmingEllipsisWord) == 0          DESCRIPTION "SetTrimming( )"         SAMPLE Example_SFSetTrimming()
   TEST oSF:GetTrimming() > 0                                     DESCRIPTION "GetTrimming( )"         //SAMPLE Example_SFSetTrimming()

return 0


function TestFont()

   local oFont
   local oFontFamily
   local oLog

   SEPARADOR( "FONT" )

   Font oFont( "Arial", 16, FontStyleItalic )

   oFont:GetFamily( @oFontFamily )


   TEST !Empty( oFont:handle )         DESCRIPTION "Font( )"
   TEST !Empty( oFont:Clone():handle ) DESCRIPTION "Clone( )"
   TEST !Empty( oFontFamily:handle )   DESCRIPTION "GetFamily( )"
   TEST oFont:GetHeight( 96 ) > 0      DESCRIPTION "GetHeight( )"   SAMPLE Example_GetHeight()
   TEST oFont:GetLastStatus() == 0     DESCRIPTION "GetLastStatus( )"
   TEST .T.                            DESCRIPTION "GetLogFontA( )" SAMPLE Example_GetLogFontA()
   TEST .T.                            DESCRIPTION "GetLogFontW( )" SAMPLE Example_GetLogFontW()
   TEST oFont:GetSize() > 0            DESCRIPTION "GetSize( )"     SAMPLE Example_GetSize()
   TEST oFont:GetStyle() > 0           DESCRIPTION "GetStyle( )"    SAMPLE Example_GetStyle()
   TEST oFont:GetUnit() > 0            DESCRIPTION "GetUnit( )"     SAMPLE Example_GetUnit()
   TEST oFont:IsAvailable()            DESCRIPTION "IsAvailable( )" SAMPLE Example_IsAvailable()


return 0


function TestFontFamily()

   SEPARADOR( "FONTFAMILY" )

   TEST !Empty( FontFamily():handle )                           DESCRIPTION "FontFamily()"
   TEST !Empty( FontFamily("arial"):handle )                    DESCRIPTION "FontFamily()"
   TEST !Empty( FontFamily("arial"):Clone():handle )            DESCRIPTION "Clone()"            SAMPLE Example_FontFamilyClone()
   TEST !Empty( FontFamily("arial"):GenericMonospace():handle ) DESCRIPTION "GenericMonospace()" SAMPLE Example_GenericMonospace()
   TEST !Empty( FontFamily("arial"):GenericSansSerif():handle ) DESCRIPTION "GenericSansSerif()" SAMPLE Example_GenericSansSerif()
   TEST !Empty( FontFamily("arial"):GenericSerif():handle )     DESCRIPTION "GenericSerif()"     SAMPLE Example_GenericSerif()
   TEST FontFamily("arial"):GetCellAscent( FontStyleRegular ) > 0  DESCRIPTION "GetCellAscent()"     SAMPLE Example_GetCellAscent()
   TEST FontFamily("arial"):GetCellDescent( FontStyleRegular ) > 0  DESCRIPTION "GetCellDescent()"   SAMPLE Example_GetCellDescent()
   TEST FontFamily("arial"):GetEmHeight( FontStyleRegular ) > 0     DESCRIPTION "GetEmHeight()"      SAMPLE Example_GetEmHeight()
   TEST .T.                                                         DESCRIPTION "GetFamilyName()"      SAMPLE Example_GetFamilyName()
   TEST FontFamily("arial"):GetLastStatus() == 0                    DESCRIPTION "GetLastStatus()"
   TEST FontFamily("arial"):GetLineSpacing( FontStyleRegular ) > 0  DESCRIPTION "GetLineSpacing()"  SAMPLE Example_GetLineSpacing()
   TEST FontFamily("arial"):IsAvailable()                             DESCRIPTION "IsAvailable()"
   TEST FontFamily("arial"):IsStyleAvailable( FontStyleRegular )      DESCRIPTION "IsStyleAvailable()"
return 0


function TestBitmap( oTest )

   local hBmp
   local oBmp

   SEPARADOR( "BITMAP" )
   Bitmap oBmp(100,100)

   TEST !Empty( oBmp:handle ) DESCRIPTION "Bitmap( INT, INT, [PixelFormat] )"
   TEST .T. DESCRIPTION "Clone()"      SAMPLE Example_BMPClone3()
   TEST !Empty( oBmp:fromFile( "images\seleccion_espana_b_2010.jpg" ):handle ) DESCRIPTION "FromFile()" SAMPLE Example_BMPFromFile()
   TEST .T. DESCRIPTION "FromHBitmap()" SAMPLE Example_BMPFromHBITMAP( oTest )


return 0


//*************


*****************************************************************************************
  function TestGraphicsPath()
*****************************************************************************************

   local gp, gp2, oPoint, aTypes
   local aPoint := { Point(50, 50)   ,;
      Point(60, 20)   ,            ;
      Point(70, 100)  ,            ;
      Point(80, 50),               ;
      Point(120, 40),              ;
      Point(150,80),               ;
      Point(170, 30)               ;
      }

   local aPointF := { PointF(150.0, 150.0)   ,;
      PointF(160.0, 120.0)   ,            ;
      PointF(170.0, 200.0)  ,            ;
      PointF(180.0, 150.0),               ;
      PointF(220.0, 140.0),              ;
      PointF(250.0,180.0),               ;
      PointF(270.0, 130.0)               ;
      }

   local oRect
   SEPARADOR( "GRAPHICS PATH" )

   GraphicsPath gp()
   GraphicsPath gp2()
   Rect oRect()

   TEST !empty( GraphicsPath():handle )                       DESCRIPTION "GraphicsPath()"
   TEST !empty( GraphicsPath( FillModeWinding ):handle )      DESCRIPTION "GraphicsPath( FillMode )"
   TEST !empty( GraphicsPath( { Point( 10, 10 ) }, { PathPointTypeBezier }, 0, FillModeWinding ):handle )      DESCRIPTION "GraphicsPath( ... )"
   TEST !empty( GraphicsPath( { PointF( 10.0, 20.0 ) }, { PathPointTypeBezier }, 0, FillModeWinding ):handle ) DESCRIPTION "GraphicsPath( ... )"

   TEST gp:AddArc( Rect(20, 20, 50, 100), 0.0, 180.0 ) == 0                         DESCRIPTION "AddArc()" SAMPLE AddArcExample2()
   TEST gp:AddArc( RectF(20.0, 20.0, 50.0, 100.0), 0, 180 ) == 0                         DESCRIPTION "AddArc()" SAMPLE AddArcExample2()
   TEST gp:AddArc( 20, 20, 50, 100, 0, 180 ) == 0                         DESCRIPTION "AddArc()" SAMPLE AddArcExample2()
   TEST gp:AddArc( 20, 20, 50, 100, 0, 180 ) == 0                         DESCRIPTION "AddArc()" SAMPLE AddArcExample2()
   TEST gp:AddBezier( Point(50, 50), Point(60, 20), Point(70, 100), Point(80, 50) ) == 0      DESCRIPTION "AddBezier()"    SAMPLE Example_AddBezier()
   TEST gp:AddBezier( PointF(50, 50), PointF(60, 20), PointF(70, 100), PointF(80, 50) ) == 0  DESCRIPTION "AddBezier()"    SAMPLE Example_AddBezier()
   TEST gp:AddBezier( Point(50, 50), Point(60, 20), Point(70, 100), Point(80, 50) ) == 0      DESCRIPTION "AddBezier()"    SAMPLE Example_AddBezier()
   TEST gp:AddBezier( 50.0, 50.0, 60.0, 20.0, 70.0, 100.0, 80.0, 50.0 ) == 0  DESCRIPTION "AddBezier()"    SAMPLE Example_AddBezier()
   TEST gp:AddBezier( 50, 50, 60, 20, 70, 100, 80, 50 ) == 0                  DESCRIPTION "AddBezier()"    SAMPLE Example_AddBezier()
   TEST gp:AddBeziers( aPointF ) == 0  DESCRIPTION "AddBeziers()"    SAMPLE Example_AddBeziers()
   TEST gp:AddBeziers( aPoint)   == 0  DESCRIPTION "AddBeziers()"    SAMPLE Example_AddBeziers()
   TEST gp:AddClosedCurve( aPoint,  1 )   == 0  DESCRIPTION "AddClosedCurve()"    SAMPLE Example_AddClosedCurve()
   TEST gp:AddClosedCurve( aPointF,  1 )  == 0  DESCRIPTION "AddClosedCurve()"    SAMPLE Example_AddClosedCurve()
   TEST gp:AddClosedCurve( aPoint )       == 0  DESCRIPTION "AddClosedCurve()"    SAMPLE Example_AddClosedCurve()
   TEST gp:AddClosedCurve( aPointF )      == 0  DESCRIPTION "AddClosedCurve()"    SAMPLE Example_AddClosedCurve()
   TEST gp:AddCurve( aPointF )              == 0  DESCRIPTION "AdddCurve()"    SAMPLE AddCurveExample2()
   TEST gp:AddCurve( aPointF, 1 )           == 0  DESCRIPTION "AdddCurve()"
   TEST gp:AddCurve( aPointF, 2, 4, 1 )     == 0  DESCRIPTION "AdddCurve()"
   TEST gp:AddCurve( aPoint )               == 0  DESCRIPTION "AdddCurve()"
   TEST gp:AddCurve( aPoint, 1 )            == 0  DESCRIPTION "AdddCurve()"
   TEST gp:AddCurve( aPoint, 2, 4, 1 )      == 0  DESCRIPTION "AdddCurve()"
   TEST gp:AddEllipse(20, 20, 200, 100)     == 0  DESCRIPTION "AddEllipse()"   SAMPLE Example_AddEllipse()
   TEST gp:AddEllipse(20.0, 20.0, 200.0, 100.0)            == 0  DESCRIPTION "AddEllipse()"  SAMPLE Example_AddEllipse()
   TEST gp:AddEllipse( Rect( 20, 20, 200, 100 ) )          == 0  DESCRIPTION "AddEllipse()"  SAMPLE Example_AddEllipse()
   TEST gp:AddEllipse( RectF( 20.0, 20.0, 200.0, 100.0 ) ) == 0  DESCRIPTION "AddEllipse()"  SAMPLE Example_AddEllipse()
   TEST gp:AddLine(20, 20, 200, 100)         == 0  DESCRIPTION "AddLine()"   SAMPLE Example_AddLine()
   TEST gp:AddLine(20.0, 20.0, 200.0, 100.0) == 0  DESCRIPTION "AddLine()"   SAMPLE Example_AddLine()
   TEST gp:AddLine(Point( 60, 60 ), Point( 100, 100 ))         == 0  DESCRIPTION "AddLine()"   SAMPLE Example_AddLine()
   TEST gp:AddLine(PointF( 100.0, 120.0 ), PointF( 120.0, 120.0 )) == 0  DESCRIPTION "AddLine()"   SAMPLE Example_AddLine()
   TEST gp:AddLines( { Point( 60, 60 ), Point( 100, 100 ) } )         == 0  DESCRIPTION "AddLines()"   SAMPLE Example_AddLines()
   TEST gp:AddLines( { PointF( 100.0, 120.0 ), PointF( 120.0, 120.0 ) } ) == 0  DESCRIPTION "AddLines()"   SAMPLE Example_AddLines()
   TEST gp2:Addpath( GraphicsPath(), .T. ) == 0  DESCRIPTION "AddPath()"   SAMPLE Example_AddPath( )
   TEST gp2:AddPie( 50, 50, 100, 100, 20.0, 45.0 ) == 0  DESCRIPTION "AddPie()"   SAMPLE Example_AddPie()
   TEST gp2:AddPie( 50.0, 50.0, 100.0, 100.0, 20.0, 45.0 ) == 0  DESCRIPTION "AddPie()"   SAMPLE Example_AddPie()
   TEST gp2:AddPie( Rect( 50, 50, 100, 100 ), 20.0, 45.0 ) == 0  DESCRIPTION "AddPie()"   SAMPLE Example_AddPie()
   TEST gp2:AddPie( RectF( 50.0, 50.0, 100.0, 100.0 ), 20.0, 45.0 ) == 0  DESCRIPTION "AddPie()"   SAMPLE Example_AddPie()
   TEST gp2:AddPolygon( { Point( 20, 20 ), Point( 120, 20 ), Point( 120, 70 ) } ) == 0  DESCRIPTION "AddPolygon()"   SAMPLE Example_AddPolygon()
   TEST gp2:AddPolygon( { PointF( 20.0, 20.0 ), PointF( 120.0, 20.0 ), PointF( 120.0, 70.0 ) } ) == 0  DESCRIPTION "AddPolygon()"   SAMPLE Example_AddPolygon()
   TEST gp2:AddRectangle( RectF( 20.0, 20.0, 100.0, 50.0 ) ) == 0  DESCRIPTION "AddRectangle()"   SAMPLE Example_AddRectangle()
   TEST gp2:AddRectangles( { RectF( 20.0, 20.0, 100.0, 50.0 ),;
                             RectF( 30.0, 30.0, 50.0, 100.0 ) } ) == 0  DESCRIPTION "AddRectangles()"   SAMPLE Example_AddRectangles()
   TEST gp2:AddRectangles( { RectF( 20, 20, 100, 50 ),;
                             RectF( 30, 30, 50, 100 ) } ) == 0  DESCRIPTION "AddRectangles()"   SAMPLE Example_AddRectangles()
   TEST .T.                                                     DESCRIPTION "AddString( ... Rect ... )"     SAMPLE Example_GPAddString1()
   TEST .T.                                                     DESCRIPTION "AddString( ... RectF ... )"    SAMPLE Example_GPAddString2()
   TEST .T.                                                     DESCRIPTION "AddString( ... Point ... )"    SAMPLE Example_GPAddString3()
   TEST .T.                                                     DESCRIPTION "AddString( ... PointF ... )"   SAMPLE Example_GPAddString4()
   TEST gp2:ClearMarkers() == 0                                 DESCRIPTION "ClearMarkers() "
   TEST !empty( gp2:Clone():handle )                            DESCRIPTION "Clone() "
   TEST gp2:CloseAllFigures() == 0                              DESCRIPTION "CloseAllFigures()"             SAMPLE Example_CloseAllFigures()
   TEST gp2:Flatten() == 0                                      DESCRIPTION "Flatten()"                     SAMPLE FlattenExample()
   TEST gp2:Flatten() == 0                                      DESCRIPTION "Flatten() SAMPLE 2"            SAMPLE FlattenExample(2)
   TEST gp2:getBounds(@oRect) == 0                              DESCRIPTION "GetBounds()"                   SAMPLE GetBoundsExample()
   TEST gp2:GetFillMode() == 0                                  DESCRIPTION "GetFillMode()"
   TEST gp:GetLastPoint( @oPoint ) == 0                         DESCRIPTION "GetLastPoint()"
   TEST gp:GetLastStatus( ) == 0                                DESCRIPTION "GetLastStatus()"
   TEST .T.                                                     DESCRIPTION "GetPathPoints()"               SAMPLE GetPathPointsExample()
   TEST gp:GetPathTypes( @aTypes ) == 0                         DESCRIPTION "GetPathTypes()"
   TEST .T.                                                     DESCRIPTION "IsOutlineVisible()"            SAMPLE Example_IsOutlineVisibleExample()
   TEST .T.                                                     DESCRIPTION "IsVisible()"                   SAMPLE IsVisibleExample()
   TEST .T.                                                     DESCRIPTION "OutLine()"                     SAMPLE OutlineExample()
   TEST gp:Reset() == 0                                         DESCRIPTION "Reset()"                     
   TEST gp2:Reverse() == 0                                      DESCRIPTION "Reverse()"                     SAMPLE ReverseExample()
   TEST gp2:SetFillMode( FillModeAlternate ) == 0               DESCRIPTION "SetFillMode()"
   TEST gp2:SetMarker() == 0                                    DESCRIPTION "SetMarket()"
   TEST gp2:StartFigure() == 0                                  DESCRIPTION "StartFigure()"                 SAMPLE StartFigureExample()
   TEST gp2:Transform( Matrix() ) == 0                          DESCRIPTION "Transform()"                   SAMPLE GPTransformExample()
   TEST .T.                                                     DESCRIPTION "Warp()"                        SAMPLE WarpExample()
   
return 0

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

   RectF oRect2()

   SEPARADOR( "LINEARGRADIENTBRUSH" )

   TEST ! Empty( oLGB:handle )          DESCRIPTION "Constructor Point, Point, Color, Color"  SAMPLE TestLinearGB1( )
   TEST ! Empty( oLGBF:handle )         DESCRIPTION "Constructor PointF, PointF, Color, Color"
   TEST ! Empty( oLGBL:handle )         DESCRIPTION "Constructor Rect, Color, Color, LinearGradientMode" SAMPLE TestLinearGB2( )
   TEST ! Empty( oLGBLF:handle )        DESCRIPTION "Constructor RectF, Color, Color, LinearGradientMode"
   TEST ! Empty( oLGBL2:handle )        DESCRIPTION "Constructor Rect, Color, Color, angle, isAngleScalable"
   TEST ! Empty( oLGBLF2:handle )       DESCRIPTION "Constructor RectF, Color, Color, angle, isAngleScalable"

   TEST oLGB:GetBlendCount() > 0        DESCRIPTION "GetBlendCount = " + Str( oLGB:GetBlendCount() )
   TEST oLGB:SetBlend({ 0.0, 0.4, 0.6, 1.0}, {0.0, 0.2, 0.8, 1.0 } ) == 0 DESCRIPTION "SetBlend" SAMPLE Example_SetBlend()
   TEST oLGB:SetInterpolationColors ( aColor, ablendPositions ) == 0      DESCRIPTION "SetInterpolationColors "
   TEST oLGB:GetInterpolationColorCount() > 0                             DESCRIPTION "GetInterpolationColorCount = " + str( oLGB:GetInterpolationColorCount() )
   TEST oLGB:GetInterpolationColors ( @aColor2, @ablendPositions2 ) == 0  DESCRIPTION "GetInterpolationColors "
   TEST oLGB:GetRectangle( @oRect2 ) == 0                             DESCRIPTION "GetRectangle" SAMPLE Example_GetRect()
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
  Matrix oMatrix3( 1, 0, 0, 1, 0, 2 )
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
//
  SEPARADOR( "MATRIX" )

  TEST ! empty( oMatrix:handle )                       DESCRIPTION "Constructor "
  TEST ! empty( oMatrix2:handle )                      DESCRIPTION "Constructor Matrix( RectF, PointF )"
  TEST ! empty( oMatrix3:handle )                      DESCRIPTION "Constructor Matrix( REAL, REAL, REAL, REAL, REAL, REAL )"

  TEST !Empty( ( oClone := oMatrix3:Clone() ):handle )  DESCRIPTION "Clone"
  TEST oMatrix3:Equals( oClone )                        DESCRIPTION "Equals"
  TEST oMatrix3:GetElements( @aElements ) == 0          DESCRIPTION "GetElements"
  nStatus = oMatrix:GetLastStatus()
  TEST hb_IsNumeric( oMatrix:GetLastStatus() )         DESCRIPTION "GetLastStatus is =" + str( nStatus )
  TEST oMatrix3:Invert() == 0                          DESCRIPTION "Invert" SAMPLE Example_Invert()
  TEST oMatrix3:IsIdentity()                           DESCRIPTION "IsIdentity"
  TEST oMatrix3:IsInvertible()                         DESCRIPTION "IsInvertible"
  TEST oMatrix3:Multiply( oMatrix4, MatrixOrderAppend ) == 0           DESCRIPTION "Multiply" SAMPLE Example_MultiplyM()
  TEST oMatrix4:OffsetX() == 20                        DESCRIPTION "OffsetX" SAMPLE Example_OffsetMatrix()
  TEST oMatrix4:OffsetY() == 40                        DESCRIPTION "OffsetY" SAMPLE Example_OffsetMatrix()
  TEST oMatrix4:Reset() == 0                           DESCRIPTION "Reset"  SAMPLE Example_Reset()
  TEST oMatrix2:Rotate( 30, MatrixOrderAppend ) == 0   DESCRIPTION "Rotate" SAMPLE Example_RotateMatrix()
  TEST oMatrix2:Rotate( 30, PointF(150, 100), MatrixOrderAppend ) == 0 DESCRIPTION "RotateAt" SAMPLE Example_RotateAtMatrix()
  TEST oMatrix4:Scale( 3, 2, MatrixOrderAppend ) == 0  DESCRIPTION "Scale" SAMPLE Example_ScaleMatrix()
  TEST oMatrix4:SetElements( 1, 0, 0, 1, 30, 50 ) == 0  DESCRIPTION "SetElements" SAMPLE Example_SetElements()
  TEST oMatrix4:Shear( 3, 0, MatrixOrderAppend ) == 0  DESCRIPTION "Shear" SAMPLE Example_Shear()
  TEST oMatrix4:TransformPoints( @aPoint ) == 0         DESCRIPTION "TransformPoints with Point Array" SAMPLE Example_TransPoints()
  TEST oMatrix4:TransformPoints( @aPointF ) == 0        DESCRIPTION "TransformPoints with PointF Array" SAMPLE Example_TransPointsF()
  TEST oMatrix4:TransformVectors( aPoint ) == 0         DESCRIPTION "TransformVentors with Point Array" SAMPLE Example_TransVectors()
  TEST oMatrix4:TransformVectors( aPointF ) == 0       DESCRIPTION "TransformVectors  with PointF Array" SAMPLE Example_TransVectors()
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
local oPen, oColor2, oBrush2, matrix

   Pen oPen( oBrush, 5 )
   Pen oPen2(Color(255, 0, 0, 255), 30)
   Pen oPen3(Color(255, 0, 0, 255), 30)
   Pen oPen4(Color(255, 0, 0, 255), 30)

   SEPARADOR( "PEN" )

   TEST !empty( Pen( oPen ):handle )                       DESCRIPTION "Constructor Pen. Pen( oPen )"
   TEST !empty( Pen( oBrush, 5 ):handle )                  DESCRIPTION "Constructor Pen. Pen( oBrush, 5 )"
   TEST !empty( Pen( oColor, 5 ):handle )                  DESCRIPTION "Constructor Pen. Pen( oColor, 5 )"
   TEST oPen:SetColor( oColor ) == 0                       DESCRIPTION "SetColor()" SAMPLE Example_PenSetColor()
   TEST oPen2:GetColor( @oColor2 ) == 0                    DESCRIPTION "GetColor()" SAMPLE Example_PenSetColor()
   TEST oPen:SetBrush( oBrush ) == 0                       DESCRIPTION "SetBrush()" SAMPLE Example_PenSetBrush()
   TEST !empty( oPen:GetBrush():handle )                   DESCRIPTION "GetBrush()" SAMPLE Example_PenSetBrush()
   TEST oPen2:SetCompoundArray( {0.0, 0.2, 0.5, 0.7, 0.9, 1.0} )==0 DESCRIPTION "SetCompoundArray()" SAMPLE Example_SetCompoundArray()
   TEST oPen2:GetCompoundArray( )==0                       DESCRIPTION "GetCompoundArray()" SAMPLE Example_SetCompoundArray()
//
   TEST oPen3:SetDashCap( DashCapTriangle )==0             DESCRIPTION "SetDashCap( )" SAMPLE Example_SetCustomStartCap()
   TEST oPen3:GetDashCap() == DashCapTriangle              DESCRIPTION "GetDashCap( )"

   TEST oPen3:SetDashOffset( 10 )==0                       DESCRIPTION "SetDashOffset( )" SAMPLE Example_SetDashOffset()
   TEST oPen3:GetDashOffset( )==10                         DESCRIPTION "GetDashOffset( )"

   TEST oPen2:SetCompoundArray( {0.0, 0.2, 0.5, 0.7, 0.9, 1.0} )==0 DESCRIPTION "SetCompoundArray()" SAMPLE Example_SetCompoundArray()
   TEST oPen2:GetCompoundArrayCount()==6                   DESCRIPTION "GetCompoundArrayCount()"
   TEST oPen3:SetDashPattern( { 5, 2, 15, 4 }, 4 )==0      DESCRIPTION "SetDashPattern( {} )" SAMPLE Example_SetDashPattern()
   TEST oPen3:GetDashPattern() ==0                         DESCRIPTION "GetDashPattern( )"    SAMPLE Example_SetDashPattern()

   TEST oPen3:SetDashStyle( DashStyleDash )==0           DESCRIPTION "SetDashStyle( )" SAMPLE Example_SetDashStyle()
   TEST oPen3:GetDashStyle()==DashStyleDash              DESCRIPTION "GetDashStyle( )"

   TEST oPen3:SetEndCap( LineCapArrowAnchor )==0           DESCRIPTION "SetEndCap( )"   SAMPLE Example_SetStartEndCap()
   TEST oPen3:GetEndCap( )==LineCapArrowAnchor             DESCRIPTION "GetEndCap( )"

   TEST oPen3:SetStartCap( LineCapArrowAnchor )==0         DESCRIPTION "SetStartCap( )" SAMPLE Example_SetStartEndCap()
   TEST oPen3:GetStartCap( )==LineCapArrowAnchor           DESCRIPTION "GetStartCap( )"

   TEST oPen3:SetLineCap(LineCapArrowAnchor, LineCapTriangle, DashCapRound)==0 DESCRIPTION "SetLineCap()" SAMPLE Example_SetLineCap()

   TEST oPen3:SetLineJoin(LineJoinBevel)==0                DESCRIPTION "SetLineJoin()" SAMPLE Example_SetLineJoin()
   TEST oPen3:GetLineJoin()==LineJoinBevel                 DESCRIPTION "GetLineJoin()"
//
   TEST oPen3:SetMiterLimit(10.0)==0                       DESCRIPTION "SetMiterLimit()"
   TEST oPen3:GetMiterLimit()==10.0                        DESCRIPTION "GetMiterLimit()"

   TEST oPen3:SetTransform(matrix(20, 0, 0, 10, 0, 0))==0  DESCRIPTION "SetTransform()" SAMPLE Example_SetTransformPen()
   TEST oPen3:GetTransform( @matrix )==0                   DESCRIPTION "GetTransform()" //SAMPLE Example_SetTransformPen()

   TEST oPen3:SetWidth(15)==0                              DESCRIPTION "SetWidth()"    SAMPLE Example_SetWidth()
   TEST oPen3:GetWidth()==15                             DESCRIPTION "GetWidth()"    SAMPLE Example_SetWidth()


   TEST oPen:ScaleTransform( 8, 4 ) == 0                   DESCRIPTION "ScaleTransform()" SAMPLE Example_PenScaleTransform()
   TEST oPen:SetAlignment( PenAlignmentInset ) == 0        DESCRIPTION "oPen:SetAlignment()" SAMPLE Example_PenSetAlignment()
   TEST oPen:MultiplyTransform( Matrix( 1, 0, 0, 4, 0, 0 ), MatrixOrderPrepend ) == 0 DESCRIPTION "MultiplyTransform()" SAMPLE Example_MultiplyTrans()
   TEST oPen:ResetTransform() == 0                         DESCRIPTION "ResetTransform()" SAMPLE Example_ResetTransPen()
   TEST oPen:RotateTransform(30, MatrixOrderAppend)==0     DESCRIPTION "RotateTransform()" SAMPLE Example_RotateTransPen()

return 0


*********************************************************************************************************************
  function TestsGraphics()
*********************************************************************************************************************

   local hDC := CreateDC("DISPLAY",0,0,0)
   local g := Graphics(hDC)

   SEPARADOR( "GRAPHICS" )

   TEST TestConstructorDestructorGraphics()               DESCRIPTION "Probando el constructor/destructor de Graphics"
   TEST g:BeginContainer() != 0 DESCRIPTION "BeginContainer()" SAMPLE Example_BeginContainer()
   TEST .T.      DESCRIPTION "DrawCurve( pen, point ) "  SAMPLE Example_DrawCurve1()
   TEST .T.      DESCRIPTION "SetClip( GraphicsPath )"   SAMPLE Example_SetClip3()
   TEST .T.      DESCRIPTION "SetClip( Region )"         SAMPLE Example_SetClip6()
   TEST .T.      DESCRIPTION "SetClip( Rect )"           SAMPLE Example_SetClip4()
   TEST .T.      DESCRIPTION "SetClip( RectF )"          SAMPLE Example_SetClip5()
   TEST .T.      DESCRIPTION "SetClip( HRGN )"           SAMPLE Example_SetClip2()
   TEST g:ResetClip() == 0  DESCRIPTION "ResetClip()"    SAMPLE Example_ResetClip()
   TEST .T.      DESCRIPTION "SetTransform( matrix ) "   SAMPLE Example_SetTransformG()
   TEST g:Clear( Color( 255, 0, 0, 255 ) ) == 0          DESCRIPTION "Clear()"
   TEST .T.      DESCRIPTION "DrawArc( Pen, Rect, REAL, REAL )"                   SAMPLE Example_DrawArc()
   TEST .T.      DESCRIPTION "DrawArc( Pen, RectF, REAL, REAL )"                  SAMPLE Example_DrawArc2()
   TEST .T.      DESCRIPTION "DrawArc( Pen, REAL, REAL, REAL, REAL, REAL, REAL )" SAMPLE Example_DrawArc3()
   TEST .T.      DESCRIPTION "DrawArc( Pen, INT, INT, INT, INT, REAL, REAL )"     SAMPLE Example_DrawArc4()
   TEST .T.      DESCRIPTION "DrawBezier( PEN, POINT, POINT, POINT, POINT )"      SAMPLE Example_DrawBezier()
   TEST .T.      DESCRIPTION "DrawBezier( PEN, POINTF, POINTF, POINTF, POINTF )"      SAMPLE Example_DrawBezier2()
   TEST .T.      DESCRIPTION "DrawBezier( PEN, REAL, REAL, REAL, REAL, REAL, REAL, REAL, REAL )"      SAMPLE Example_DrawBezier3()
   TEST .T.      DESCRIPTION "DrawBezier( PEN, INT, INT, INT, INT, INT,INT,INT,INT )"      SAMPLE Example_DrawBezier4()
   TEST .T.      DESCRIPTION "DrawBeziers( PEN, APOINT )"      SAMPLE Example_DrawBeziers()
   TEST .T.      DESCRIPTION "DrawBeziers( PEN, APOINTF )"      SAMPLE Example_DrawBeziers2()



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

function TestLinearGB2( )


   local bPainted := { | hDC |
      local myGraphics
      local linGrBrush
      Graphics myGraphics( hDC )
      RectF oRect( 0, 0, 100, 100 )

      LinearGradientBrush linGrBrush( oRect, Color(255, 255, 0, 0),  Color(255, 0, 0, 255), LinearGradientModeVertical )

      myGraphics:FillRectangle( linGrBrush, oRect )

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
   }

   exampleWindow( bPainted )

return nil


function Example_GetRect()
   local bPainted := { | hDC |
   	 local rect
     Graphics myGraphics(hdc)

     // Create a linear gradient brush.
     LinearGradientBrush linGrBrush( ;
        Point(20, 10),;
        Point(60, 110),;
        Color(255, 0, 0, 0), ;    // black
        Color(255, 0, 0, 255))  // blue

     Rect rect()
     linGrBrush:GetRectangle(@rect)

     // Draw the retrieved rectangle.
     Pen myPen(Color(255, 0, 0, 0))
     myGraphics:DrawRectangle(myPen, rect)
   }

   exampleWindow( bPainted )

return nil


function Example_SetLinColors()

   local bPainted := { | hDC |
   local myGraphics, linGrBrush, rect
   local aColors
   Graphics myGraphics(hdc)

   LinearGradientBrush linGrBrush( ;
      Rect(0, 0, 100, 50),;
      Color(255, 255, 0, 0),;  // red
      Color(255, 0, 0, 255),;  // blue
      LinearGradientModeHorizontal )

   linGrBrush:GetLinearColors( @aColors )

   myGraphics:FillRectangle(linGrBrush, 0, 0, 100, 50)

   linGrBrush:SetLinearColors( ;
      Color(255, 0, 0, 255),;   // blue
      Color(255, 0, 255, 0))  // green

   myGraphics:FillRectangle(linGrBrush, 0, 75, 100, 50)

   linGrBrush:SetLinearColors( aColors[ 2 ], aColors[ 1 ] )

   myGraphics:FillRectangle(linGrBrush, 0, 150, 100, 50)

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

      local oBrush
      Graphics graphics(hdc)

      // Create a HatchBrush object.
      SolidBrush solidBrush(Color(255, 0, 0, 255))  // blue

      // Create a pen, and set the brush for the pen.
      Pen pen(Color(255, 255, 0, 0), 10)
      pen:SetBrush(solidBrush)
      oBrush = pen:GetBrush()

      // Draw a line with the pen.
      graphics:DrawLine( pen, 0, 0, 200, 100)
      graphics:FillRectangle(oBrush, 220, 10, 200, 100)
   }

   exampleWindow( bPainted )

return nil


function Example_PenSetColor( )
   local bPainted := { | hdc |
      local oColor

      Graphics graphics(hdc)

      // Create a red pen, and use it to draw a line.
      Pen pen(Color(255, 255, 0, 0), 5)
      graphics:DrawLine(pen, 0, 0, 200, 100)

      // Change the pen's color to blue, and draw a second line.
      pen:SetColor(Color(255, 0, 0, 255))
      graphics:DrawLine(pen, 0, 40, 200, 140)

      pen:GetColor( @oColor )
      pen:SetColor( oColor )
      graphics:DrawLine(pen, 0, 80, 200, 140)

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

function Example_MultiplyTrans( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      Matrix matrix(1, 0, 0, 4, 0, 0)  // vertical stretch

      Pen pen(Color(255, 0, 0, 255))
      pen:SetWidth(5)
      pen:RotateTransform(30)                             // first rotate
      pen:MultiplyTransform(matrix, MatrixOrderPrepend)  // then stretch

      graphics:DrawEllipse(pen, 50, 50, 200, 200)

   }

   exampleWindow( bPainted )

return nil

function Example_ResetTransPen( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)


      // Create a pen, and set its transformation:
      Pen pen(Color(255, 0, 0, 255), 2)
      pen:ScaleTransform(8, 4)

      // Draw a rectangle with the transformed pen:
      graphics:DrawRectangle(pen, 50, 50, 150, 100)

      pen:ResetTransform()

      // Draw a rectangle with no pen transformation:
      graphics:DrawRectangle(pen, 250, 50, 150, 100)

   }

   exampleWindow( bPainted )

return nil


function Example_RotateTransPen( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)


      Pen pen(Color( 0,0,255), 5)
      pen:ScaleTransform(1, 4)                     // first stretch
      pen:RotateTransform(60, MatrixOrderAppend)   // then rotate
      graphics:DrawEllipse(pen, 50, 50, 200, 200)

   }

   exampleWindow( bPainted )

return nil

function Example_SetCompoundArray( )
   local bPainted := { | hdc |
      local compVals := {0.0, 0.5, 0.6, 0.8, 0.9, 1.0}
      local aRes

      Graphics graphics(hdc)


       // Create an array of real numbers and a Pen object.

       Pen pen(Color(255, 0, 0, 255), 30)
       Pen pen2(Color(255, 255, 0, 255), 40)

       // Set the compound array of the pen.
       pen:SetCompoundArray(compVals, 6)

       pen:GetCompoundArray( @aRes )

       pen:SetCompoundArray( aRes, Len( aRes ) )

       // Draw a line with the pen.
       graphics:DrawLine(pen, 5, 20, 405, 200)
       graphics:DrawLine(pen, 5, 100, 405, 280)

   }

   exampleWindow( bPainted )

return nil

function Example_SetDashStyle( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a Pen object.
      Pen pen(Color(255, 0, 0, 255), 15)

      // Set the dash style for the pen, and draw a dashed line.
      pen:SetDashStyle(DashStyleDash)
      graphics:DrawLine(pen, 0, 50, 400, 150)

      // Reset the dash style for the pen, and draw a second line.
      pen:SetDashStyle(DashStyleDot)
      graphics:DrawLine(pen, 0, 80, 400, 180)

      // Reset the dash style for the pen, and draw a third line.
      pen:SetDashStyle(DashStyleDashDot)
      graphics:DrawLine(pen, 0, 110, 400, 210)

   }

   exampleWindow( bPainted )

return nil

function Example_SetCustomStartCap( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a pen.
      Pen pen(Color(255, 0, 0, 255), 20)
       // Set the dash style for the pen.
      pen:SetDashStyle(DashStyleDash)

      // Set a triangular dash cap for the pen.
      pen:SetDashCap(DashCapTriangle)

      // Draw a line using the pen.
      graphics:DrawLine(pen, 20, 20, 200, 100)

   }

   exampleWindow( bPainted )

return nil


function Example_SetDashOffset( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a Pen object, set the dash style, and draw a line.
      Pen pen(Color(255, 0, 0, 255), 15)
      pen:SetDashStyle(DashStyleDash)
      graphics:DrawLine(pen, 0, 50, 400, 50)

      // Set the dash offset value for the pen, and draw a second line.
      pen:SetDashOffset(10)
      graphics:DrawLine(pen, 0, 80, 400, 80)

   }

   exampleWindow( bPainted )

return nil


function Example_SetDashPattern( )
   local bPainted := { | hdc |
      local dashVals := {;
         5.0,;   // dash length 5
         2.0,;   // space length 2
         15.0,;  // dash length 15
         4.0}
      local aRes
      Graphics graphics(hdc)

      // Create a Pen object.
      Pen pen(Color(255, 0, 0, 0), 5)
      Pen pen2(Color(255, 255, 0, 0), 5)

      // Set the dash pattern for the custom dashed line.
      pen:SetDashPattern(dashVals, 4)
      pen:GetDashPattern( @aRes )
      pen2:SetDashPattern(aRes, Len( aRes ) )

      // Draw the custom dashed line.
      graphics:DrawLine(pen, 5, 20, 405, 200)
      graphics:DrawLine(pen2, 5, 100, 405, 280)
   }

   exampleWindow( bPainted )

return nil

function Example_SetStartEndCap( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a Pen object.
      Pen pen(Color(255, 0, 0, 255), 15)

      // Set the end cap of the pen, and draw a line.
      pen:SetEndCap(LineCapArrowAnchor)
      pen:SetStartCap(LineCapRound)
      graphics:DrawLine(pen, 10, 50, 400, 150)

      // Reset the end cap, and draw a second line.
      pen:SetEndCap(LineCapTriangle)
      pen:SetStartCap(LineCapArrowAnchor)
      graphics:DrawLine(pen, 10, 80, 400, 180)

      // Reset the end cap, and draw a third line.
      pen:SetEndCap(LineCapRound)
      pen:SetStartCap(LineCapTriangle)
      graphics:DrawLine(pen, 10, 110, 400, 210)
   }

   exampleWindow( bPainted )

return nil

function Example_SetLineCap( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Create a pen.
      Pen pen(Color(255, 0, 0, 255), 15)

      // Set line caps for the pen.
      pen:SetLineCap(LineCapArrowAnchor, LineCapTriangle, DashCapRound)

      // Set the dash style for the pen.
      pen:SetDashStyle(DashStyleDash)

      // Draw a line.
      graphics:DrawLine(pen, 50, 50, 420, 200)
   }

   exampleWindow( bPainted )

return nil


function Example_SetLineJoin( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

   // Create a pen.
   Pen pen(Color(255, 0, 0, 255), 15)

   // Set the join style, and draw a rectangle.
   pen:SetLineJoin(LineJoinRound)
   graphics:DrawRectangle(pen, 20, 20, 150, 100)

   // Reset the join style, and draw a second rectangle.
   pen:SetLineJoin(LineJoinBevel)
   graphics:DrawRectangle(pen, 200, 20, 150, 100)
   }

   exampleWindow( bPainted )

return nil


function Example_SetTransformPen( )
   local bPainted := { | hdc |
      local matrix2, matrix3
      Graphics graphics(hdc)

      Matrix matrix(20, 0, 0, 10, 0, 0)  // scale

      // Create a pen, and use it to draw a rectangle.
      Pen pen(Color(255, 0, 0, 255), 2)
      Pen pen2(Color(255, 255, 0, 255), 2)

      graphics:DrawRectangle(pen, 10, 50, 150, 100)

      // Scale the pen width by a factor of 20 in the horizontal
      // direction and a factor of 10 in the vertical direction.
      pen:SetTransform(matrix)

      // Draw a rectangle with the transformed pen.
      graphics:DrawRectangle(pen, 200, 50, 150, 100)

      pen:GetTransform(@matrix2)

      pen2:SetTransform(matrix2)

      graphics:DrawRectangle(pen2, 200, 180, 150, 100)
   }

   exampleWindow( bPainted )

return nil

function Example_SetWidth( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a pen of width 2, and use it to draw a rectangle.
      Pen pen(Color(255, 0, 0, 255), 2)
      graphics:DrawRectangle(pen, 10, 50, 150, 100)

      // Reset the pen's width to 15, and draw another rectangle.
      pen:SetWidth(15)
      graphics:DrawRectangle(pen, 200, 50, 150, 100)
   }

   exampleWindow( bPainted )

return nil


//--------------------
//RECTF
//--------------------
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

//--------------------
//RECT
//--------------------

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

//--------------------
//MATRIX
//--------------------

function Example_Invert( )
   local bPainted := { | hdc |
      local a

      Graphics graphics(hdc)

      Pen myPen(Color(255, 0, 0, 255))

      Matrix matrix(1.0, 0.0, 0.0, 1.0, 30.0, 20.0)

      graphics:SetTransform(matrix)
      graphics:DrawRectangle(myPen, 0, 0, 200, 100)
      matrix:Invert()
      graphics:SetTransform(matrix)
      graphics:DrawRectangle(myPen, 0, 0, 200, 100)
   }

   exampleWindow( bPainted )

return nil

function Example_MultiplyM( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix1(3.0, 0.0, 0.0, 1.0, 0.0, 0.0)    // horizontal scale
      Matrix matrix2(1.0, 0.0, 0.0, 1.0, 20.0, 40.0)  // translation

      matrix1:Multiply(matrix2, MatrixOrderAppend)

      graphics:SetTransform(matrix1)
      graphics:DrawRectangle(pen, 0, 0, 100, 100)

   }

   exampleWindow( bPainted )

return nil

function Example_OffsetMatrix( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix(1.0, 0.0, 0.0, 1.0, 50.0, 30.0)
      xTranslation = matrix:OffsetX()
      yTranslation = matrix:OffsetY()

      graphics:DrawLine(pen, 0.0, 0.0, xTranslation, yTranslation)
      graphics:SetTransform(matrix)
      graphics:DrawRectangle(pen, 0, 0, 20, 20)
   }

   exampleWindow( bPainted )

return nil

function Example_Reset( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix(5.0, 0.0, 0.0, 3.0, 0.0, 0.0)
      matrix:Reset()
      matrix:Translate(50.0, 40.0)

      graphics:SetTransform(matrix)
      graphics:DrawRectangle(pen, 0, 0, 100, 100)
   }

   exampleWindow( bPainted )

return nil

function Example_RotateMatrix( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix()
      matrix:Translate(40.0, 0.0)            // first a translation
      matrix:Rotate(30.0, MatrixOrderAppend)  // then a rotation

      graphics:SetTransform(matrix)
      graphics:DrawEllipse(pen, 0, 0, 100, 50)
   }

   exampleWindow( bPainted )

return nil

function Example_RotateAtMatrix( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix()
      matrix:Translate(150.0, 100.0)
      matrix:RotateAt(30.0, PointF(150.0, 100.0), MatrixOrderAppend)

      graphics:SetTransform(matrix)
      // Draw a tramsormed ellipse. The composite transormation
      // is translate right 150, translate down 100, and then
      // rotate 30 degrees about the point (150, 100).
      graphics:DrawEllipse(pen, -40, -20, 80, 40)

      // Draw rotated axes with the origin at the center o the ellipse.
      graphics:DrawLine(pen, -50, 0, 50, 0)
      graphics:DrawLine(pen, 0, -50, 0, 50)

   }

   exampleWindow( bPainted )

return nil

function Example_ScaleMatrix( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix()
      matrix:Rotate(30.0)
      matrix:Scale(3.0, 2.0, MatrixOrderAppend)

      graphics:SetTransform(matrix)

      // Draw a tramsformed ellipse. The composite transformation
      // is rotate 30 degrees and then scale by a factor of 3
      // in the horizontal direction and 2 in the vertical direction.
      graphics:DrawEllipse(pen, 0, 0, 80, 40)

   }

   exampleWindow( bPainted )

return nil

function Example_SetElements( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix()
      matrix:SetElements(1.0, 0.0, 0.0, 1.0, 30.0, 50.0)

      graphics:SetTransform(matrix)
      graphics:DrawRectangle(pen, 0, 0, 80, 40)

   }

   exampleWindow( bPainted )

return nil

function Example_Shear( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Pen pen(Color(255, 0, 0, 255))

      Matrix matrix()
      matrix:Scale(2.0, 2.0)                     // first a scaling
      matrix:Shear(3.0, 0.0, MatrixOrderAppend)  // then a shear

      graphics:SetTransform(matrix)
      graphics:DrawRectangle(pen, 0, 0, 100, 50)

   }

   exampleWindow( bPainted )

return nil

function Example_TransPoints( )
   local bPainted := { | hdc |

      local aPoint := {}
      Graphics graphics(hdc)

      Pen pen(Color(255, 0, 0, 255))

      AAdd( aPoint, Point( 50, 100 ) )
      AAdd( aPoint, Point( 100, 50 ) )
      AAdd( aPoint, Point( 150, 125 ) )
      AAdd( aPoint, Point( 200, 100 ) )
      AAdd( aPoint, Point( 250, 150 ) )

      Matrix matrix(1.0, 0.0, 0.0, 2.0, 5.0, 10.0)

      graphics:DrawCurve(pen, aPoint, 5)

      matrix:TransformPoints( @aPoint, 5)

      graphics:DrawCurve(pen, aPoint, 5)

   }

   exampleWindow( bPainted )

return nil

function Example_TransPointsF( )
   local bPainted := { | hdc |

      local aPoint := {}
      Graphics graphics(hdc)

      Pen pen(Color(255, 0, 0, 255))

      AAdd( aPoint, PointF( 50, 100 ) )
      AAdd( aPoint, PointF( 100, 50 ) )
      AAdd( aPoint, PointF( 150, 125 ) )
      AAdd( aPoint, PointF( 200, 100 ) )
      AAdd( aPoint, PointF( 250, 150 ) )

      Matrix matrix(1.0, 0.0, 0.0, 2.0, 5.0, 10.0)

      graphics:DrawCurve(pen, aPoint, 5)

      matrix:TransformPoints( @aPoint, 5)

      graphics:DrawCurve(pen, aPoint, 5)

   }

   exampleWindow( bPainted )

return nil


function Example_TransVectors( )
   local bPainted := { | hdc |

      local aPoint := {}
      Graphics graphics(hdc)

      Pen pen(Color(255, 0, 0, 255), 7)
      pen:SetEndCap(LineCapArrowAnchor)
      SolidBrush brush(Color(255, 0, 0, 255))

      // A point and a vector, same representation but different behavior
      Point point(100, 50)
      Point vector(100, 50)

      // Draw the original point and vector in blue.
      graphics:FillEllipse(brush, point:X - 5, point:Y - 5, 10, 10)

      graphics:DrawLine(pen, Point(0, 0), vector)

      // Transform.
      Matrix matrix(0.8, 0.6, -0.6, 0.8, 100.0, 0.0)
      matrix:TransformPoints( { point } )
      matrix:TransformVectors( { vector } )

      // Draw the transformed point and vector in red.
      pen:SetColor(Color(255, 255, 0, 0))
      brush:SetColor(Color(255, 255, 0, 0))
      graphics:FillEllipse(brush, point:X - 5, point:Y - 5, 10, 10)
      graphics:DrawLine(pen, Point(0, 0), vector)

   }

   exampleWindow( bPainted )

return nil

//--------------------
//GRAPHICS
//--------------------

function Example_BeginContainer( )
   local bPainted := { | hdc |
  
   Graphics graphics(hdc)
   // Set the clipping region for the Graphics object.
   graphics:SetClip(Rect(10, 10, 150, 150))

   // Begin a graphics container.
   container = graphics:BeginContainer()

   // Set an additional clipping region for the container.
   graphics:SetClip(Rect(100, 50, 100, 75))

   // Fill a red rectangle in the container.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   graphics:FillRectangle(redBrush, 0, 0, 400, 400)

   // End the container, and fill the same rectangle with blue. 
   graphics:EndContainer(container)
   SolidBrush blueBrush(Color(128, 0, 0, 255))
   graphics:FillRectangle(blueBrush, 0, 0, 400, 400)

   // Set the clipping region to infinite, and draw the outlines 
   // of the two previous clipping regions.
   graphics:ResetClip()
   Pen blackPen(Color(255, 0, 0, 0), 2.0)
   graphics:DrawRectangle(blackPen, 10, 10, 150, 150)
   graphics:DrawRectangle(blackPen, 100, 50, 100, 75)
   }

   exampleWindow( bPainted )

return nil


function Example_DrawArc( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
      // Set up the arc.
   Pen redPen(Color(255, 255, 0, 0), 3)
   Rect ellipseRect(0, 0, 200, 100)
   startAngle = 0.0
   sweepAngle = 90.0

   // Draw the arc.
   graphics:DrawArc(redPen, ellipseRect, startAngle, sweepAngle)
   }

   exampleWindow( bPainted )

return nil

function Example_DrawArc2( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
      // Set up the arc.
   Pen redPen(Color(255, 255, 0, 0), 3)
   RectF ellipseRect(0, 0, 200, 100)
   startAngle = 0.0
   sweepAngle = 90.0

   // Draw the arc.
   graphics:DrawArc(redPen, ellipseRect, startAngle, sweepAngle)
   }

   exampleWindow( bPainted )

return nil

function Example_DrawArc3( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
      // Set up the arc.
   Pen redPen(Color(255, 255, 0, 0), 3)
   RectF ellipseRect(0, 0, 200, 100)
   startAngle = 0.0
   sweepAngle = 90.0

   // Draw the arc.
   graphics:DrawArc(redPen, 0.0, 0.0, 200.0, 100.0, startAngle, sweepAngle)
   }

   exampleWindow( bPainted )

return nil

function Example_DrawArc4( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
      // Set up the arc.
   Pen redPen(Color(255, 255, 0, 0), 3)
   RectF ellipseRect(0, 0, 200, 100)
   startAngle = 0.0
   sweepAngle = 90.0

   // Draw the arc.
   graphics:DrawArc(redPen, 0, 0, 200, 100, startAngle, sweepAngle)
   }

   exampleWindow( bPainted )

return nil


function Example_DrawCurve1( )
   local bPainted := { | hdc |
      local aPoint := {}

      Graphics graphics(hdc)
      // Define a Pen object and an array of Point objects.
      Pen greenPen(Color( 0, 255, 0 ), 3)

      AAdd( aPoint, Point( 100, 100 ) )
      AAdd( aPoint, Point( 200, 50 ) )
      AAdd( aPoint, Point( 400, 10 ) )
      AAdd( aPoint, Point( 500, 100 ) )


      // Draw the curve.
      graphics:DrawCurve(greenPen, aPoint, 4)

      //Draw the points in the curve.
      SolidBrush redBrush( Color( 255, 0, 0 ) )
      graphics:FillEllipse(redBrush, Rect(95, 95, 10, 10))
      graphics:FillEllipse(redBrush, Rect(195, 45, 10, 10))
      graphics:FillEllipse(redBrush, Rect(395, 5, 10, 10))
      graphics:FillEllipse(redBrush, Rect(495, 95, 10, 10))
   }

   exampleWindow( bPainted )

return nil

function Example_DrawBezier( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
   // Set up the pen and curve points.
   Pen greenPen(Color(255, 0, 255, 0))
   Point startPoint(100, 100)
   Point controlPoint1(200, 10)
   Point controlPoint2(350, 50)
   Point endPoint(500, 100)

   //Draw the curve.
   graphics:DrawBezier(greenPen, startPoint, controlPoint1, controlPoint2, endPoint)

   //Draw the end points and control points.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(redBrush, 100 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(redBrush, 500 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 200 - 5, 10 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 350 - 5, 50 - 5, 10, 10)
   }

   exampleWindow( bPainted )

return nil

function Example_DrawBezier2( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
   // Set up the pen and curve points.
   Pen greenPen(Color(255, 0, 255, 0))
   PointF startPoint(100, 100)
   PointF controlPoint1(200, 10)
   PointF controlPoint2(350, 50)
   PointF endPoint(500, 100)

   //Draw the curve.
   graphics:DrawBezier(greenPen, startPoint, controlPoint1, controlPoint2, endPoint)

   //Draw the end points and control points.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(redBrush, 100 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(redBrush, 500 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 200 - 5, 10 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 350 - 5, 50 - 5, 10, 10)
   }

   exampleWindow( bPainted )

return nil

function Example_DrawBezier3( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
   // Set up the pen and curve points.
   Pen greenPen(Color(255, 0, 255, 0))

   //Draw the curve.
   graphics:DrawBezier(greenPen, 100, 100, 200, 10, 350, 50, 500, 100 )

   //Draw the end points and control points.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(redBrush, 100 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(redBrush, 500 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 200 - 5, 10 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 350 - 5, 50 - 5, 10, 10)
   }

   exampleWindow( bPainted )

return nil

function Example_DrawBezier4( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
   // Set up the pen and curve points.
   Pen greenPen(Color(255, 0, 255, 0))

   //Draw the curve.
   graphics:DrawBezier(greenPen, 100.0, 100.0, 200.0, 10.0, 350.0, 50.0, 500.0, 100.0 )

   //Draw the end points and control points.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(redBrush, 100 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(redBrush, 500 - 5, 100 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 200 - 5, 10 - 5, 10, 10)
   graphics:FillEllipse(blueBrush, 350 - 5, 50 - 5, 10, 10)
   }

   exampleWindow( bPainted )

return nil


function Example_DrawBeziers( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
   // Define a Pen object and an array of Point objects.
   Pen greenPen(Color(255, 0, 255, 0), 3)

   Point startPoint(100, 100)
   Point ctrlPoint1(200, 50)
   Point ctrlPoint2(400, 10)
   Point endPoint1(500, 100)
   Point ctrlPoint3(600, 200)
   Point ctrlPoint4(700, 400)
   Point endPoint2(500, 500)

   curvePoints = { ;
      startPoint,  ;
      ctrlPoint1,  ;
      ctrlPoint2,  ;
      endPoint1,   ;
      ctrlPoint3,  ;
      ctrlPoint4,  ;
      endPoint2}

   // Draw the Bezier curves.
   graphics:DrawBeziers(greenPen, curvePoints, 7)

   // Draw the control and end points.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   graphics:FillEllipse(redBrush, Rect(100 - 5, 100 - 5, 10, 10))
   graphics:FillEllipse(redBrush, Rect(500 - 5, 100 - 5, 10, 10))
   graphics:FillEllipse(redBrush, Rect(500 - 5, 500 - 5, 10, 10))
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(blueBrush, Rect(200 - 5, 50 - 5, 10, 10))
   graphics:FillEllipse(blueBrush, Rect(400 - 5, 10 - 5, 10, 10))
   graphics:FillEllipse(blueBrush, Rect(600 - 5, 200 - 5, 10, 10))
   graphics:FillEllipse(blueBrush, Rect(700 - 5, 400 - 5, 10, 10))
   }

   exampleWindow( bPainted )

return nil


function Example_DrawBeziers2( )
   local bPainted := { | hdc |
      local aPoint := {}

   Graphics graphics(hdc)
   // Define a Pen object and an array of Point objects.
   Pen greenPen(Color(255, 0, 255, 0), 3)

   PointF startPoint(100, 100)
   PointF ctrlPoint1(200, 50)
   PointF ctrlPoint2(400, 10)
   PointF endPoint1(500, 100)
   PointF ctrlPoint3(600, 200)
   PointF ctrlPoint4(700, 400)
   PointF endPoint2(500, 500)

   curvePoints = { ;
      startPoint,  ;
      ctrlPoint1,  ;
      ctrlPoint2,  ;
      endPoint1,   ;
      ctrlPoint3,  ;
      ctrlPoint4,  ;
      endPoint2}

   // Draw the Bezier curves.

   graphics:DrawBeziers(greenPen, curvePoints, 7)

   // Draw the control and end points.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   graphics:FillEllipse(redBrush, Rect(100 - 5, 100 - 5, 10, 10))
   graphics:FillEllipse(redBrush, Rect(500 - 5, 100 - 5, 10, 10))
   graphics:FillEllipse(redBrush, Rect(500 - 5, 500 - 5, 10, 10))
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(blueBrush, Rect(200 - 5, 50 - 5, 10, 10))
   graphics:FillEllipse(blueBrush, Rect(400 - 5, 10 - 5, 10, 10))
   graphics:FillEllipse(blueBrush, Rect(600 - 5, 200 - 5, 10, 10))
   graphics:FillEllipse(blueBrush, Rect(700 - 5, 400 - 5, 10, 10))
   }

   exampleWindow( bPainted )

return nil

function Example_ResetClip( )
   local bPainted := { | hdc |

   Graphics graphics(hdc)
   // Set the clipping region, and draw its outline.
   graphics:SetClip(Rect(100, 50, 200, 120))
   Pen blackPen(Color(255, 0, 0, 0), 2.0)
   graphics:DrawRectangle(blackPen, 100, 50, 200, 120)

   // Fill a clipped ellipse in red.
   SolidBrush redBrush(Color(255, 255, 0, 0))
   graphics:FillEllipse(redBrush, 80, 40, 100, 70)

   // Reset the clipping region.
   graphics:ResetClip()

   // Fill an unclipped ellipse with blue.
   SolidBrush blueBrush(Color(255, 0, 0, 255))
   graphics:FillEllipse(blueBrush, 160, 150, 100, 60)
   }

   exampleWindow( bPainted )

return nil



function Example_SetClip3( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
   // Create a GraphicsPath object.
   GraphicsPath clipPath()
   clipPath:AddEllipse(0, 0, 200, 100)

   // Set the clipping region with hRegion.
   graphics:SetClip(clipPath)

   // Fill a rectangle to demonstrate the clipping region.
   graphics:FillRectangle(SolidBrush(Color(255, 0, 0, 0)), 0, 0, 500, 500)
   }

   exampleWindow( bPainted )

return nil


function Example_SetClip6( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

   // Create a Region object.
   Region clipRegion(Rect(0, 0, 200, 100))

   // Set the clipping region with hRegion.
   graphics:SetClip(clipRegion)

   // Fill a rectangle to demonstrate the clipping region.
   graphics:FillRectangle(SolidBrush(Color(255, 0, 0, 0)), 0, 0, 500, 500)
   }

   exampleWindow( bPainted )

return nil



function Example_SetClip4( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

   // Create a Rect object.
   Rect clipRect(0, 0, 200, 100)

   // Set the clipping region with hRegion.
   graphics:SetClip(clipRect)

   // Fill a rectangle to demonstrate the clipping region.
   graphics:FillRectangle(SolidBrush(Color(255, 0, 0, 0)), 0, 0, 500, 500)
   }

   exampleWindow( bPainted )

return nil


function Example_SetClip5( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

   // Create a Rect object.
   RectF clipRect(0, 0, 200, 100)

   // Set the clipping region with hRegion.
   graphics:SetClip(clipRect)

   // Fill a rectangle to demonstrate the clipping region.
   graphics:FillRectangle(SolidBrush(Color(255, 0, 0, 0)), 0, 0, 500, 500)
   }

   exampleWindow( bPainted )

return nil


function Example_SetClip2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

   // Create a Region object, and get its handle.
   Region region(Rect(0, 0, 100, 100))
   hRegion := region:GetHRGN(graphics)
   
   graphics:SetClip(hRegion)

   // Fill a rectangle to demonstrate the clipping region.
   graphics:FillRectangle(SolidBrush(Color(255, 0, 0, 0)), 0, 0, 500, 500)
   }

   exampleWindow( bPainted )

return nil


function Example_SetTransformG( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a rotation matrix.
      Matrix transformMatrix()
      transformMatrix:Rotate(45.0)

      // Set the transformation matrix of the Graphics object.
      graphics:SetTransform(transformMatrix)

      // Draw a rotated rectangle.
      Pen pen(Color(255, 0, 0, 0))
      graphics:DrawRectangle(pen, 120, 0, 100, 50)
   }

   exampleWindow( bPainted )

return nil





//--------------------
//GRAPHICSPATH
//--------------------

function AddArcExample2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      GraphicsPath path()

      path:AddArc(20, 20, 50, 100, 0.0, 180.0)
      path:CloseFigure()

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddBezier( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      GraphicsPath  path()

      Point pt1(50, 50)
      Point pt2(60, 20)
      Point pt3(70, 100)
      Point pt4(80, 50)

      Point pt1f(450, 550)
      Point pt2f(460, 520)
      Point pt3f(470, 500)
      Point pt4f(480, 450)

      path:AddBezier(150.0, 150.0, 160.0, 120.0, 170.0, 200.0, 180.0, 150.0)
      path:CloseFigure()

      path:AddBezier(250, 250, 260, 220, 270, 300, 280, 250)
      path:CloseFigure()

      path:AddBezier(pt1, pt2, pt3, pt4)
      path:CloseFigure()

      path:AddBezier(pt1f, pt2f, pt3f, pt4f)
      path:CloseFigure()

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddBeziers( )
   local bPainted := { | hdc |
      local aPoint, aPointF
      Graphics graphics(hdc)
      GraphicsPath  path()
      aPoint = { Point(50, 50)   ,;
      Point(60, 20)   ,            ;
      Point(70, 100)  ,            ;
      Point(80, 50),               ;
      Point(120, 40),              ;
      Point(150,80),               ;
      Point(170, 30)               ;
      }

      aPointF = { PointF(150.0, 150.0)   ,;
      PointF(160.0, 120.0)   ,            ;
      PointF(170.0, 200.0)  ,            ;
      PointF(180.0, 150.0),               ;
      PointF(220.0, 140.0),              ;
      PointF(250.0,180.0),               ;
      PointF(270.0, 130.0)               ;
      }


      path:AddBeziers( aPointF )
      path:CloseFigure()

      path:AddBeziers( aPoint )
      path:CloseFigure()

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddClosedCurve( )
   local bPainted := { | hdc |
      local aPoint, aPointF
      Graphics graphics(hdc)
      GraphicsPath  path()
      aPoint = { Point(50, 50)   ,;
      Point(60, 20)   ,            ;
      Point(70, 100)  ,            ;
      Point(80, 50),               ;
      Point(120, 40),              ;
      Point(150,80),               ;
      Point(170, 30)               ;
      }

      aPointF = { PointF(150.0, 150.0)   ,;
      PointF(160.0, 120.0)   ,            ;
      PointF(170.0, 200.0)  ,            ;
      PointF(180.0, 150.0),               ;
      PointF(220.0, 140.0),              ;
      PointF(250.0,180.0),               ;
      PointF(270.0, 130.0)               ;
      }


      path:AddClosedCurve( aPointF )
      path:CloseFigure()

      path:AddClosedCurve( aPoint, ,1 )
      path:CloseFigure()

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function AddCurveExample2( )
   local bPainted := { | hdc |
      local aPoint, j
      Graphics graphics(hdc)
      GraphicsPath   path()
      aPoint = {Point(50, 50),;
                     Point(70, 80),;
                     Point(100, 100),;
                     Point(130, 40),;
                     Point(150, 90),;
                     Point(180, 30),;
                     Point(210, 120),;
                     Point(240, 80)}

      path:AddCurve(;
         aPoint,;
         3,;     // Start at the point with index 2.
         4,;     // Four segments. End at the point with index 6.
         1.0)
      Pen pen(Color(255, 0, 0, 255))
      graphics:DrawPath(pen, path)
      // Draw all eight points in the array.
      SolidBrush brush(Color(255, 255, 0, 0))

      for j = 1 to 8
         graphics:FillEllipse(brush, aPoint[j]:X - 3, aPoint[j]:Y - 3, 6, 6)
      next

   }

   exampleWindow( bPainted )

return nil

function Example_AddEllipse( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      GraphicsPath path()
      path:AddEllipse(20, 20, 200, 100)
      path:AddEllipse(40.0, 40.0, 220.0, 120.0)
      path:AddEllipse( Rect( 60, 60, 100, 100 ) )
      path:AddEllipse( Rect( 100.0, 120.0, 120.0, 120.0 ) )

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddLine( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      GraphicsPath path()
      path:AddLine(20, 20, 200, 100)
      path:AddLine(40.0, 40.0, 220.0, 120.0)
      path:AddLine( Point( 60, 60 ), Point( 100, 100 ) )
      path:AddLine( PointF( 100.0, 120.0 ), PointF( 120.0, 120.0 ) )

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddLines( )
   local bPainted := { | hdc |

      local aPoint, aPointF

      aPoint = {Point(20, 20),  ;
                  Point(30, 30),;
                  Point(40, 25),;
                  Point(50, 30),;
                  Point(60, 20)}

      aPointF = { PointF(120.0, 120.0),  ;
                  PointF(130.0, 130.0),;
                  PointF(140.0, 125.0),;
                  PointF(150.0, 130.0),;
                  PointF(160.0, 120.0)}

      Graphics graphics(hdc)
      GraphicsPath path()
      path:AddLines( aPoint )
      path:AddLines( aPointF )

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil


function Example_AddPath( gp2 )
   local bPainted := { | hdc |
      Graphics graphics(hdc)
      GraphicsPath path1()
      path1:AddArc(10, 10, 50, 20, 0.0, 150.0)
      path1:AddBezier(10, 50, 60, 50, 10, 80, 60, 80)

      GraphicsPath path2()
      path2:AddArc(10, 110, 50, 20, 0.0, 150.0)
      path2:AddBezier(10, 150, 60, 150, 10, 180, 60, 180)

      path1:AddPath(path2, .T.)

      Pen pen(Color(255, 0, 0, 255))
      graphics:DrawPath(pen, path1)
   }

   exampleWindow( bPainted )

return nil

function Example_AddPie( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      GraphicsPath path()
      path:AddPie(50, 50, 100, 100, 70.0, 45.0)
      path:AddPie(50.0, 50.0, 100.0, 100.0, 20.0, 45.0)
      path:AddPie(Rect( 50, 50, 100, 100 ), 120.0, 45.0)
      path:AddPie(RectF( 50.0, 50.0, 100.0, 100.0), 170.0, 45.0)

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddPolygon( )
   local bPainted := { | hdc |

      local aPoint, aPointF

      Graphics graphics(hdc)
      GraphicsPath path()

      aPoint = {Point(20, 20),  ;
                  Point(30, 30),;
                  Point(40, 25),;
                  Point(50, 30),;
                  Point(60, 20)}

      aPointF = { PointF(120.0, 120.0),  ;
                  PointF(130.0, 130.0),;
                  PointF(140.0, 125.0),;
                  PointF(150.0, 130.0),;
                  PointF(160.0, 120.0)}

      path:AddPolygon( aPoint )
      path:AddPolygon( aPointF )

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddRectangle( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      GraphicsPath path()

      path:AddRectangle(Rect( 50, 50, 100, 100 ))
      path:AddRectangle(RectF( 150.0, 150.0, 100.0, 100.0))

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)
      graphics:DrawPath(pen, path)
   }

   exampleWindow( bPainted )

return nil

function Example_AddRectangles( )
   local bPainted := { | hdc |
      local aRect, aRectF
      Graphics graphics(hdc)
      GraphicsPath path()

      aRectF = { RectF( 50.0, 50.0, 100.0, 100.0 ), RectF( 150.0, 150.0, 100.0, 100.0) }
      aRect  = { Rect( 100, 50, 100, 100 ), Rect( 250, 50, 100, 100) }

      path:AddRectangles( aRectF )
      path:AddRectangles( aRect )

      // Draw the path.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawPath(pen, path)

   }

   exampleWindow( bPainted )

return nil

function Example_GPAddString1( )
   local bPainted := { | hdc |
   	local oRect
   Graphics graphics(hdc)
   FontFamily fontFamily("Times New Roman")
   GraphicsPath path()

   Rect oRect(50, 50, 150, 100)


   path:AddString(;
      "Hello World", ;
      fontFamily, ;
      FontStyleRegular,;
      48, ;
      oRect, NIL )

     Pen pen(Color(255, 255, 0, 0))
     path:AddRectangles( { oRect } )
     graphics:DrawPath(pen, path)

   }

   exampleWindow( bPainted )

return nil

function Example_GPAddString2( )
   local bPainted := { | hdc |
   	local oRect
   Graphics graphics(hdc)
   FontFamily fontFamily("Times New Roman")
   GraphicsPath path()

   RectF oRect(50, 50, 150, 100)


   path:AddString(;
      "Hello World", ;
      fontFamily, ;
      FontStyleRegular,;
      48, ;
      oRect, NIL )

     Pen pen(Color(255, 255, 0, 0))
     path:AddRectangles( { oRect } )
     graphics:DrawPath(pen, path)

   }

   exampleWindow( bPainted )

return nil


function Example_GPAddString3( )
   local bPainted := { | hdc |
   	local oRect
   Graphics graphics(hdc)
   FontFamily fontFamily("Times New Roman")
   GraphicsPath path()


   path:AddString(;
      "Hello World", ;
      fontFamily, ;
      FontStyleRegular,;
      48, ;
      Point( 50, 50 ), NIL )

     Pen pen(Color(255, 255, 0, 0))
     graphics:DrawPath(pen, path)

   }

   exampleWindow( bPainted )

return nil



function Example_GPAddString4( )
   local bPainted := { | hdc |
   	local oRect
   Graphics graphics(hdc)
   FontFamily fontFamily("Times New Roman")
   GraphicsPath path()


   path:AddString(;
      "Hello World", ;
      fontFamily, ;
      FontStyleRegular,;
      48, ;
      PointF( 50, 50 ), NIL )

     Pen pen(Color(255, 255, 0, 0))
     graphics:DrawPath(pen, path)

   }

   exampleWindow( bPainted )

return nil


function Example_CloseAllFigures( )
   local bPainted := { | hdc |
   Graphics graphics(hdc)

   Rect rect1(20, 20, 50, 100)
   Rect rect2(40, 40, 50, 100)

   GraphicsPath path()
   path:AddArc(rect1, 0.0, 180.0)  // first figure
   path:StartFigure()
   path:AddArc(rect2, 0.0, 180.0)  // second figure
   path:CloseAllFigures()

   // Draw the path.
   Pen pen(Color(255, 255, 0, 0))
   graphics:DrawPath(pen, path)

   }

   exampleWindow( bPainted )

return nil


function FlattenExample( nSample )
   local bPainted := { | hdc |
   	local pts
   	local matrix, pathData
   	DEFAULT nSample := 1
   Graphics graphics(hdc)
   // Begin example.
   pts = {Point(20,50),;
          Point(40,70),;
          Point(60,10),;
          Point(80,50)}

   GraphicsPath path()
   path:AddCurve(pts)
   path:AddEllipse(20, 100, 150, 80)
   path:AddBezier(20, 200, 20, 250, 50, 210, 100, 260)

   // Draw the path before flattening.
   Pen pen(Color(255, 0, 0, 255))
   graphics:DrawPath(pen, path)

   if nSample == 2
     Matrix matrix()
     matrix:Rotate(30.0)
     matrix:Translate(200.0, 0.0, MatrixOrderAppend)
   endif

   path:Flatten(matrix, 8.0)

   // Draw the flattened path.
   pen:SetColor(Color(255, 0, 255, 0))
   graphics:DrawPath(pen, path)

   // Get the path data from the flattened path.

   path:GetPathData(@pathData)

   // Draw the data points of the flattened path.
   SolidBrush brush(Color(255, 255, 0, 0))
   for j = 1 to pathData:Count()
      graphics:FillEllipse(;
         brush, ;
         pathData:Points[j]:X - 3.0, ;
         pathData:Points[j]:Y - 3.0,;
         6.0,;
         6.0)
   next
   }

   exampleWindow( bPainted )

return nil


function GetBoundsExample()
   local bPainted := { | hdc |
	 local pts
   Graphics graphics(hdc)
   Pen blackPen(Color(255, 0, 0, 0), 1)
   Pen yellowPen(Color(255, 255, 255, 0), 10)
   Pen redPen(Color(255, 255, 0, 0), 1)

   pts         = {Point(120,120),;
                  Point(200,130),;
                  Point(150,200),;
                  Point(130,180)}

   // Create a path that has one curve and one ellipse.
   GraphicsPath path()
   path:AddClosedCurve(pts)
   path:AddEllipse(120, 220, 100, 40)

   // Draw the path with a thick yellow pen and a thin black pen.
   graphics:DrawPath(yellowPen, path)
   graphics:DrawPath(blackPen, path)

   // Get the path's bounding rectangle.
   Rect rect()
   path:GetBounds(@rect, NIL, yellowPen)
   graphics:DrawRectangle(redPen, rect)
   }

   exampleWindow( bPainted )

return nil


function GetPathPointsExample()
   local bPainted := { | hdc |
	 local pts
   Graphics graphics(hdc)

   GraphicsPath path()

   points = {;
      Point(200, 200),;
      Point(250, 240),;
      Point(200, 300),;
      Point(300, 310),;
      Point(250, 350)}

   path:AddLine(20, 100, 150, 200)
   path:AddRectangle(Rect(40, 30, 80, 60))
   path:AddEllipse(Rect(200, 30, 200, 100))
   path:AddCurve(points, 5)

   // Draw the path.
   Pen pen(Color(255, 0, 0, 255))
   graphics:DrawPath(pen, path)

   // Get the path points.
   count := path:GetPointCount()

   dataPoints = BuildPointArray( count )

   path:GetPathPoints(dataPoints, count)

   // Draw the path's data points.
   SolidBrush brush(Color(255, 255, 0, 0))

   for j = 1 to count
      graphics:FillEllipse(      ;
         brush,                  ;
         dataPoints[j]:X - 3.0,  ;
         dataPoints[j]:Y - 3.0,  ;
         6.0,                    ;
         6.0)
   next
   }

   exampleWindow( bPainted )

return nil


function Example_IsOutlineVisibleExample()
   local bPainted := { | hdc |
	 local points
   Graphics graphics(hdc)

   GraphicsPath path()

   Pen yellowPen(Color(255, 255, 255, 0), 20)
   SolidBrush brush(Color(255, 255, 0, 0))

   // Create and draw a path.
   path:AddEllipse(50, 50, 200, 100)
   graphics:DrawPath(yellowPen, path)

   // Create an array of three points, and determine whether each
   // point in the array touches the outline of the path.
   // If a point touches the outline, paint it green.
   // If a point does not touch the outline, paint it red.
      points = {;
      Point(230, 138),;
      Point(100, 120),;
      Point(150, 170)}

   for j = 1 to 2
      if(path:IsOutlineVisible(points[j], yellowPen, graphics))
         brush:SetColor(Color(255, 0, 255, 0))
      else
         brush:SetColor(Color(255, 255, 0, 0))
      endif

      graphics:FillEllipse(brush, points[j]:X - 3, points[j]:Y - 3, 6, 6)
   next

   }

   exampleWindow( bPainted )

return nil


function IsVisibleExample()
   local bPainted := { | hdc |
	 local points, j
   Graphics graphics(hdc)

   GraphicsPath path()

   Pen blackPen(Color(255, 0, 0, 0), 1)
   SolidBrush brush(Color(255, 255, 0,  0))

   path:AddEllipse(50, 50, 200, 100)
   graphics:DrawPath(blackPen, path)

   // Create an array of four points, and determine whether each
   // point in the array touches the outline of the path.
   // If a point touches the outline, paint it green.
   // If a point does not touch the outline, paint it red.
   points = {;
      PointF(50, 100),  ;
      PointF(250, 100), ;
      PointF(150, 170), ;
      PointF(180, 60)}

   for j = 1 to 4
      if(path:IsVisible(points[j], graphics))
         brush:SetColor(Color(255, 0, 255, 0))
      else
         brush:SetColor(Color(255, 255, 0, 0))
      endif

      graphics:FillEllipse(brush, points[j]:X - 3, points[j]:Y - 3, 6, 6)
   next

   }

   exampleWindow( bPainted )

return nil


function OutlineExample()
   local bPainted := { | hdc |
   local points
   Graphics graphics(hdc)
   GraphicsPath path()

   Pen bluePen(Color(255, 0, 0, 255))
   Pen greenPen(Color(255, 0, 255,  0), 10)

   points = {;
      PointF(20.0, 20.0),  ;
      PointF(160.0, 100.0),;  
      PointF(140.0, 60.0), ;
      PointF(60.0, 100.0)}

   path:AddClosedCurve(points)

   path:Widen(greenPen)

   graphics:DrawPath(bluePen, path)

   path:Outline()

   graphics:TranslateTransform(180.0, 60.0)
   graphics:DrawPath(bluePen, path)

   }
   exampleWindow( bPainted )

return nil



function ReverseExample()
   local bPainted := { | hdc |
   local pts
   Graphics graphics(hdc)
   GraphicsPath path()

   // Set up and call Reverse.
   pts = {Point(10, 60),;
                  Point(50, 110),;
                  Point(90, 60)}
                  
   path:AddLines(pts)
   path:Reverse()

   // Draw the path.
   graphics:DrawPath(Pen(Color(128, 255, 0, 0), 2), path)

   }
   exampleWindow( bPainted )

return nil



function StartFigureExample()
   local bPainted := { | hdc |
   local pts
   Graphics graphics(hdc)
   Pen pen(Color(255, 0, 0, 255))
   Rect rect(0, 0, 100, 50)
   GraphicsPath path()

   path:AddArc(0, 0, 100, 50, 0.0, 180.0)
   path:AddArc(0, 60, 100, 50, 0.0, 180.0)
   path:AddArc(0, 120, 100, 50, 0.0, 180.0)

   // Start a new figure (subpath).
   // Do not close the current figure.
   path:StartFigure()
   path:AddArc(0, 180, 100, 50, 0.0, 180.0)
   path:AddArc(0, 240, 100, 50, 0.0, 180.0)

   graphics:DrawPath(pen, path)

   }
   exampleWindow( bPainted )

return nil


function GPTransformExample()
   local bPainted := { | hdc |
   local pts
   Graphics graphics(hdc)
   GraphicsPath path()
   path:AddRectangle(Rect(40, 10, 200, 50))

   // Draw the path in blue before applying a transformation.
   graphics:DrawPath(Pen(Color(255, 0, 0, 255)), path)

   // Transform the path.
   Matrix matrix()
   matrix:Rotate(30.0)
   path:Transform(matrix)

   // Draw the transformed path in red.
   graphics:DrawPath(Pen(Color(255, 255, 0,  0)), path)

   }
   exampleWindow( bPainted )

return nil


function WarpExample()
   local bPainted := { | hdc |
   local points, destPts
   Graphics graphics(hdc)
   // Create a path.
   points ={;
      PointF(20.0, 60.0), ;
      PointF(30.0, 90.0), ;
      PointF(15.0, 110.0),;
      PointF(15.0, 145.0),;
      PointF(55.0, 145.0),;
      PointF(55.0, 110.0),;
      PointF(40.0, 90.0), ;
      PointF(50.0, 60.0)}

   GraphicsPath path()
   path:AddLines(points)
   path:CloseFigure()

   // Draw the path before applying a warp transformation.
   Pen bluePen(Color(255, 0, 0, 255))
   graphics:DrawPath(bluePen, path)

   // Define a warp transformation, and warp the path.
   RectF srcRect(10.0, 50.0, 50.0, 100.0)

   destPts = {;
      PointF(220.0, 10.0), ;
      PointF(280.0, 10.0), ;
      PointF(100.0, 150.0),;
      PointF(400.0, 150.0)}
      
   path:Warp(destPts, srcRect)
   
   // Draw the warped path.
   graphics:DrawPath(bluePen, path)

   // Draw the source rectangle and the destination polygon.
   Pen blackPen(Color(255, 0, 0, 0))
   graphics:DrawRectangle(blackPen, srcRect)
   graphics:DrawLine(blackPen, destPts[1], destPts[2])
   graphics:DrawLine(blackPen, destPts[1], destPts[3])
   graphics:DrawLine(blackPen, destPts[2], destPts[4])
   graphics:DrawLine(blackPen, destPts[3], destPts[4])

   }
   exampleWindow( bPainted )

return nil


//---------------------------------
//FONT
//---------------------------------
function Example_GetLogFontA( )
   local bPainted := { | hdc |
      local logFont

      Graphics graphics(hdc)
      // Create a Font object.
      Font myFont("Arial", 16)

      // Get attributes of myFont.
      myFont:GetLogFontA( graphics, @logFont)
      // Create a second Font object from logFont.
      Font logfontFont(hdc, logFont)
      // Draw text using logfontFont.
      SolidBrush solidbrush(Color(100, 0, 0, 0))
      graphics:DrawString("Font from a LOGFONT",  logfontFont, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil

function Example_GetLogFontW( )
   local bPainted := { | hdc |
      local logFont

      Graphics graphics(hdc)
      // Create a Font object.
      Font myFont("Arial", 16)

      // Get attributes of myFont.
      myFont:GetLogFontW( graphics, @logFont)
      // Create a second Font object from logFont.
      Font logfontFont(hdc, logFont)
      // Draw text using logfontFont.
      SolidBrush solidbrush(Color(150, 0, 0, 0))
      graphics:DrawString("Font from a LOGFONT",  logfontFont, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil

function Example_GetHeight( )
   local bPainted := { | hdc |
      local string
      Graphics graphics(hdc)
      // Create a Font object.
      Font myFont("Arial", 16);

      // Draw text with myFont.
      SolidBrush solidbrush_1(Color(255, 0, 0, 0))
      string = "The first line of text"
      graphics:DrawString(string, myFont, PointF(0, 0), solidbrush_1)

      // Get the height of myFont.

       height := myFont:GetHeight(graphics)

      // Draw text immediately below the first line of text.
      SolidBrush solidbrush_2(Color(255, 255, 0, 0))
      string = "The second line of text"
      graphics:DrawString(string, myFont, PointF(0, height), solidbrush_2)


   }

   exampleWindow( bPainted )

return nil

function Example_GetSize( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a Font object.
      Font myFont("Arial", 16)

      // Get the size of myFont.
      size = myFont:GetSize()

      // Create a second Font object with the same emSize as myFont.
      Font sizeFont("Arial", size)

      // Draw text using sizeFont.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      string = "Font with an acquired size"
      graphics:DrawString(string, sizeFont, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


function Example_GetStyle( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Create a Font object.
      Font myFont("Arial", 16, FontStyleItalic)

      // Get the style of myFont.
      style = myFont:GetStyle()

      // Create a second Font object with the same emSize as myFont.
      Font styleFont("Arial", 20, style)

      // Draw text using sizeFont.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      string = "Font with an acquired style"
      graphics:DrawString(string, styleFont, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


function Example_GetUnit( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a Font object.
      Font myFont("Arial", 12)

      // Get the unit of measure for myFont.
      unit = myFont:GetUnit()

      // Set the Graphics units of graphics to the retrieved unit value.
      graphics:SetPageUnit(unit)

      // Draw text using sizeFont.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      string = "Here is some text"
      graphics:DrawString(string, myFont, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil

function Example_IsAvailable( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a Font object.
      Font myFont("Arial", 18)

      // Check whether myFont is available.
      available = myFont:IsAvailable()

      // Draw text using myFont, if it is availiable.
      if available
          SolidBrush solidbrush(Color(255, 0, 0, 0))
          string = "Here is some text"
          graphics:DrawString(string,  myFont, PointF(0, 0), solidbrush)
      endif

   }

   exampleWindow( bPainted )

return nil



//---------------------------------
//FONTFAMILY
//---------------------------------

function Example_FontFamilyClone( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Create a FontFamily object.
      FontFamily arialFontFamily("arial")

      // Clone the FontFamily object and use it to create a Font object.
      cloneFontFamily = arialFontFamily:Clone()
      Font arialFont(cloneFontFamily, 16)

      // Draw text using the new font.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      graphics:DrawString("This is an Arial font",;
                           arialFont, PointF(0, 0), solidbrush)
   }

   exampleWindow( bPainted )

return nil


function Example_GenericMonospace( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Use a generic monospace FontFamily object to create a Font object.
      Font generic( FontFamily():GenericMonospace(), 16)

      // Draw text using the new font.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      graphics:DrawString("This is a generic monospace font", generic, PointF(0, 0), solidbrush);

   }

   exampleWindow( bPainted )

return nil



function Example_GenericSansSerif( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Use a generic monospace FontFamily object to create a Font object.
      Font generic( FontFamily():GenericSansSerif(), 16)

      // Draw text using the new font.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      graphics:DrawString("This is a generic SansSerif font", generic, PointF(0, 0), solidbrush);

   }

   exampleWindow( bPainted )

return nil



function Example_GenericSerif( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      // Use a generic monospace FontFamily object to create a Font object.
      Font generic( FontFamily():GenericSerif(), 16)

      // Draw text using the new font.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      graphics:DrawString("This is a generic Serif font", generic, PointF(0, 0), solidbrush);

   }

   exampleWindow( bPainted )

return nil


function Example_GetCellAscent( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a FontFamily object.
      FontFamily ascentFontFamily("arial")

      // Get the cell ascent of the font family in design units.
      cellAscent = ascentFontFamily:GetCellAscent(FontStyleRegular)

      // Copy the cell ascent into a string and draw the string.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      Font       font(ascentFontFamily, 16)
      string = "ascentFontFamily.GetCellAscent() returns " + str( cellAscent )
      graphics:DrawString(string, font, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


function Example_GetCellDescent( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a FontFamily object.
      FontFamily ascentFontFamily("arial")

      // Get the cell ascent of the font family in design units.
      cellDesc = ascentFontFamily:GetCellDescent(FontStyleRegular)

      // Copy the cell ascent into a string and draw the string.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      Font       font(ascentFontFamily, 16)
      string = "ascentFontFamily.CellDescent() returns " + str( cellDesc )
      graphics:DrawString(string, font, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


function Example_GetEmHeight( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a FontFamily object.
      FontFamily ascentFontFamily("arial")

      // Get the cell ascent of the font family in design units.
      emHeight = ascentFontFamily:GetEmHeight(FontStyleRegular)

      // Copy the cell ascent into a string and draw the string.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      Font       font(ascentFontFamily, 16)
      string = "ascentFontFamily.GetEmHeight() returns " + str( emHeight )
      graphics:DrawString(string, font, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


function Example_GetFamilyName( )
   local bPainted := { | hdc |
      local familyName
      Graphics graphics(hdc)
      // Create a FontFamily object.
      FontFamily nameFontFamily("arial")

      // Get the cell ascent of the font family in design units.
      nameFontFamily:GetFamilyName(@familyName)
      // Copy the cell ascent into a string and draw the string.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      Font       font(nameFontFamily, 16)
      graphics:DrawString(familyName, font, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


function Example_GetLineSpacing( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      // Create a FontFamily object.
      FontFamily lineSpacingFontFamily("arial")

      // Get the cell ascent of the font family in design units.
      lineSpacing = lineSpacingFontFamily:GetLineSpacing(FontStyleRegular)

      // Copy the cell ascent into a string and draw the string.
      SolidBrush solidbrush(Color(255, 0, 0, 0))
      Font       font(lineSpacingFontFamily, 16)
      string = "FontFamily.GetLineSpacing() returns " + str( lineSpacing )
      graphics:DrawString(string, font, PointF(0, 0), solidbrush)

   }

   exampleWindow( bPainted )

return nil


//---------------------------------
//STRINGFORMAT
//---------------------------------

function Example_SFClone( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 24, FontStyleRegular, UnitPixel)
      // Create a StringFormat object.
      StringFormat stringFormat()
      stringFormat:SetAlignment(StringAlignmentCenter)
      // Clone the StringFormat object.
      pStringFormat = stringFormat:Clone()
      // Use the cloned StringFormat object in a call to DrawString.
      graphics:DrawString(;
         "This text was formatted by a cloned StringFormat object.", ;
         font, ;
         RectF(30, 30, 200, 200), ;
         pStringFormat,;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 200, 200)

   }

   exampleWindow( bPainted )

return nil

function Example_SFSetAlignment( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 24, FontStyleRegular, UnitPixel)
      // Create a StringFormat object.
      StringFormat stringFormat()
      stringFormat:SetAlignment(StringAlignmentCenter)

      // Use the cloned StringFormat object in a call to DrawString.
      graphics:DrawString(;
         "This text was formatted by a StringFormat object.", ;
         font, ;
         RectF(30, 30, 150, 200), ;
         stringFormat,;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 150, 200)

   }

   exampleWindow( bPainted )

return nil

function Example_SFGenericDefault( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 12, FontStyleRegular, UnitPixel)
      // Create a StringFormat object.

      pStringFormat = StringFormat():GenericDefault()

      // Use the cloned StringFormat object in a call to DrawString.
      graphics:DrawString(;
         "This text was formatted by a generic StringFormat object.", ;
         font, ;
         RectF(30, 30, 150, 200), ;
         pStringFormat,;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 150, 200)

   }

   exampleWindow( bPainted )

return nil


function Example_SFGenericTypographic( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 12, FontStyleRegular, UnitPixel)
      // Create a StringFormat object.

      pStringFormat = StringFormat():GenericTypographic()

      // Use the cloned StringFormat object in a call to DrawString.
      graphics:DrawString(;
         "Formatted by a generic typographic StringFormat object.", ;
         font, ;
         RectF(30, 30, 150, 200), ;
         pStringFormat,;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 150, 200)

   }

   exampleWindow( bPainted )

return nil

function Example_SFSetFormatFlags( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 24, FontStyleRegular, UnitPoint)

      StringFormat stringFormat()
      stringFormat:SetFormatFlags( hb_bitOr( StringFormatFlagsDirectionVertical, StringFormatFlagsNoFitBlackBox ) )

      graphics:DrawString(;
         "This text is vertical because of a format flag.",;
         font, ;
         RectF(30, 30, 150, 200), ;
         stringFormat, ;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 150, 200)
   }

   exampleWindow( bPainted )

return nil

function Example_SFSetHotkeyPrefix( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 24, FontStyleRegular, UnitPixel)

      StringFormat stringFormat()
      stringFormat:SetHotkeyPrefix(HotkeyPrefixShow)

      graphics:DrawString(;
         "This &text has some &underlined cha&r&acters.", ;
         font, ;
         RectF(30, 30, 160, 200), ;
         stringFormat, ;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 160, 200)

   }

   exampleWindow( bPainted )

return nil


function Example_SFSetLineAlignment( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 24, FontStyleRegular, UnitPixel)
      // Create a StringFormat object.
      StringFormat stringFormat()
      stringFormat:SetLineAlignment(StringAlignmentCenter)

      // Use the cloned StringFormat object in a call to DrawString.
      graphics:DrawString(;
         "This text was formatted by a StringFormat object.", ;
         font, ;
         RectF(30, 30, 150, 200), ;
         stringFormat,;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 150, 200)

   }

   exampleWindow( bPainted )

return nil

function Example_SetMeasCharRanges( )
   local bPainted := { | hdc |
   /*
      local charRanges :={}

      Graphics graphics(hdc)
      // Brushes and pens used for drawing and painting
      SolidBrush blueBrush(Color(255, 0, 0, 255))
      SolidBrush redBrush(Color(100, 255, 0, 0))
      Pen        blackPen(Color(255, 0, 0, 0))

      // Layout rectangles used for drawing strings
      RectF   layoutRect_A(20.0, 20.0, 130.0, 130.0)
      RectF   layoutRect_B(160.0, 20.0, 165.0, 130.0)
      RectF   layoutRect_C(335.0, 20.0, 165.0, 130.0)

      // Three ranges of character positions within the string
      charRanges = { CharacterRange(3, 5),;
                     CharacterRange(15, 2),;
                     CharacterRange(30, 15) }

      // Font and string format used to apply to string when drawing
      Font         myFont("Times New Roman", 16.0)
      StringFormat strFormat()


       // Other variables
      Region* pCharRangeRegions // pointer to CharacterRange regions
      short   i                 // loop counter
      INT     count             // number of character ranges set
      string = "The quick, brown fox easily jumps over the lazy dog."


      // Set three ranges of character positions.
      strFormat:SetMeasurableCharacterRanges(charRanges)

      // Get the number of ranges that have been set, and allocate memory to
      // store the regions that correspond to the ranges.
      count = strFormat.GetMeasurableCharacterRangeCount()
      pCharRangeRegions = new Region[count]

      // Get the regions that correspond to the ranges within the string when
      // layout rectangle A is used. Then draw the string, and show the
      // regions.
      graphics.MeasureCharacterRanges(string, -1,
         &myFont, layoutRect_A, &strFormat, count, pCharRangeRegions)
      graphics.DrawString(string, -1,
         &myFont, layoutRect_A, &strFormat, &blueBrush)
      graphics.DrawRectangle(&blackPen, layoutRect_A)
      for ( i = 0 i < count i++)
      {
         graphics.FillRegion(&redBrush, pCharRangeRegions + i)
      }

      // Get the regions that correspond to the ranges within the string when
      // layout rectangle B is used. Then draw the string, and show the
      // regions.
      graphics.MeasureCharacterRanges(string, -1,
         &myFont, layoutRect_B, &strFormat, count, pCharRangeRegions)
      graphics.DrawString(string, -1,
         &myFont, layoutRect_B, &strFormat, &blueBrush)
      graphics.DrawRectangle(&blackPen, layoutRect_B)
      for ( i = 0 i < count i++)
      {
         graphics.FillRegion(&redBrush, pCharRangeRegions + i)
      }

      // Get the regions that correspond to the ranges within the string when
      // layout rectangle C is used. Set trailing spaces to be included in the
      // regions. Then draw the string, and show the regions.
   strFormat.SetFormatFlags(StringFormatFlagsMeasureTrailingSpaces)
      graphics.MeasureCharacterRanges(string, -1,
         &myFont, layoutRect_C, &strFormat, count, pCharRangeRegions)
      graphics.DrawString(string, -1,
         &myFont, layoutRect_C, &strFormat, &blueBrush)
      graphics.DrawRectangle(&blackPen, layoutRect_C)
      for ( i = 0 i < count i++)
      {
         graphics.FillRegion(&redBrush, pCharRangeRegions + i)
      }*/
   }

 //  exampleWindow( bPainted )
   ? "Not ready yet!!!"
return nil

function Example_SFSetTabStops( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      tabs = {150, 100, 100}
      FontFamily   fontFamily("Courier New")
      Font         font(fontFamily, 12, FontStyleRegular, UnitPoint)
      SolidBrush   solidBrush(Color(255, 0, 0, 255))

      StringFormat stringFormat()
      stringFormat:SetTabStops(2, tabs)
      graphics:DrawString(;
         "Name"+chr( 9 )+"Test 1"+chr( 9 )+"Test 2"+chr( 9 )+"Test 3",;
         font, ;
         RectF(20, 20, 500, 100),;
         stringFormat, ;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 20, 20, 500, 100)

   }

   exampleWindow( bPainted )

return nil


function Example_SFSetTrimming( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush  solidBrush(Color(255, 255, 0, 0))
      FontFamily  fontFamily("Times New Roman")
      Font        font(fontFamily, 24, FontStyleRegular, UnitPixel)

      StringFormat stringFormat()
      stringFormat:SetTrimming(StringTrimmingEllipsisWord)

      graphics:DrawString(;
         "One two three four five six seven eight nine ten", ;
         font, ;
         RectF(30, 30, 160, 60),;
         stringFormat, ;
         solidBrush)

      // Draw the rectangle that encloses the text.
      Pen pen(Color(255, 255, 0, 0))
      graphics:DrawRectangle(pen, 30, 30, 160, 60)
//   EXAMPLE_SETTRIMMING( hDC )
   }

   exampleWindow( bPainted )

return nil


function Example_RGClone( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      SolidBrush alphaBrush(Color(128, 0, 0, 255))
//
      points = {   ;
         Point(110, 20), ;
         Point(120, 30), ;
         Point(100, 60), ;
         Point(120, 70), ;
         Point(150, 60), ;
         Point(140, 10) }

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region rectRegion(rect)

      // Create a region from a curved path.
      Region pathRegion(path)


      // Make a copy (clone) of the curved region.
      pClonedRegion := pathRegion:Clone()

      // Fill the cloned region with a red brush.
      graphics:FillRegion(solidBrush, pClonedRegion)

      // Form the union of the cloned region and the rectangular region.
      pClonedRegion:Union(rectRegion)

      // Fill the union of the two regions with a semitransparent blue brush.
      graphics:FillRegion(alphaBrush, pClonedRegion)

   }

   exampleWindow( bPainted )

return nil


function Example_ComplementPath1( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10) }

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region region(rect);

      // Update the region so that it consists of all points inside a path but
      // outside the rectangular region.
      region:Complement(path);

      graphics:FillRegion(solidBrush, region);

   }

   exampleWindow( bPainted )

return nil


function Example_ComplementPath2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10) }

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region region(path);

      // Update the region so that it consists of all points inside a path but
      // outside the rectangular region.
      region:Complement(rect);

      graphics:FillRegion(solidBrush, region);

   }

   exampleWindow( bPainted )

return nil

function Example_ComplementPath3( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10) }

      RectF rect(65, 15, 70, 45)
      GraphicsPath path()

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region region(path);

      // Update the region so that it consists of all points inside a path but
      // outside the rectangular region.
      region:Complement(rect);

      graphics:FillRegion(solidBrush, region);

   }

   exampleWindow( bPainted )

return nil


function Example_ComplementPath4( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10) }

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()

      path:AddClosedCurve(points)

      Region region(rect);

      // Create a region from a rectangle.
      Region pathregion(path);

      // Update the region so that it consists of all points inside a path but
      // outside the rectangular region.
      region:Complement(pathregion);

      graphics:FillRegion(solidBrush, region);

   }

   exampleWindow( bPainted )

return nil

function Example_Exclude1( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points, 6)

      // Create a region from a rectangle.
      Region rectRegion(rect)

      // Exclude the intersecting portion of the path interior from the region.
      rectRegion:Exclude(path)

      graphics:FillRegion(solidBrush, rectRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_Exclude2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region rectRegion(path)

      // Exclude the intersecting portion of the path interior from the region.
      rectRegion:Exclude(rect)

      graphics:FillRegion(solidBrush, rectRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_Exclude3( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      RectF rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region rectRegion(path)

      // Exclude the intersecting portion of the path interior from the region.
      rectRegion:Exclude(rect)

      graphics:FillRegion(solidBrush, rectRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_Exclude4( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      RectF rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region rectRegion(rect)

      Region pathRegion(path);

      // Exclude the intersecting portion of the path interior from the region.
      pathRegion:Exclude(rectRegion)

      graphics:FillRegion(solidBrush, pathRegion)

   }

   exampleWindow( bPainted )

return nil


function Example_GetBounds1( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      Pen pen(Color(255, 0, 0, 0))
      Rect rect()

      path:AddClosedCurve(points)

      Region pathRegion(path);

      // Get the region's enclosing rectangle.
      pathRegion:GetBounds( @rect, graphics )

      graphics:FillRegion(solidBrush, pathRegion)
      graphics:DrawRectangle(pen, rect);

   }

   exampleWindow( bPainted )

return nil


function Example_GetBounds2( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      Pen pen(Color(255, 0, 0, 0))
      RectF rect()

      path:AddClosedCurve(points)

      Region pathRegion(path);

      // Get the region's enclosing rectangle.
      pathRegion:GetBounds( @rect, graphics )

      graphics:FillRegion(solidBrush, pathRegion)
      graphics:DrawRectangle(pen, rect);

   }

   exampleWindow( bPainted )

return nil


function Example_RGGetData( )
   local bPainted := { | hdc |

      local pData, sizeFilled := 0
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      Region pathRegion(path);

      pathRegion:GetData(@pData, ,@sizeFilled );

      Region newRegion( pData, sizeFilled );

      graphics:FillRegion(solidBrush, newRegion)

   }

   exampleWindow( bPainted )

return nil


function Example_RGGetHRGN( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      Region pathRegion(path);

      hRgn = pathRegion:GetHRGN( graphics )

      hBrush = CreateSolidBrush( CLR_HRED )

      FillRgn(hdc, Ptr2Long( hRgn ), hBrush)

      DeleteObject(hBrush)
      DeleteObject( Ptr2Long( hRgn ) )


   }

   exampleWindow( bPainted )

return nil


function Example_RGGetTransform( )
   local bPainted := { | hdc |

      local oMatrix, rects, matrix, count
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))
      Pen pen(Color(255, 0, 0, 0))
      GraphicsPath path()

      count = 0;

      // Create a region from a path.
      path:AddEllipse(10, 10, 50, 300)
      Region pathRegion(path)
      graphics:FillRegion(solidBrush, pathRegion)

      // Get the rectangles.
      graphics:GetTransform(@matrix)

      pathRegion:GetRegionScans(matrix, @rects, @count)

//
      // Draw the rectangles.
      for j = 1 to count
         graphics:DrawRectangle( pen, rects[ j ] )
      next

   }

   exampleWindow( bPainted )

return nil


function Example_IntersectPath( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region rectRegion(rect)

      // Update the region to the portion that intersects with the path.
      rectRegion:Intersect(path)

      graphics:FillRegion(solidBrush, rectRegion)


   }

   exampleWindow( bPainted )

return nil

function Example_IntersectPath2( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)

      // Update the region to the portion that intersects with the rect.
      pathRegion:Intersect(rect)

      graphics:FillRegion(solidBrush, pathRegion)


   }

   exampleWindow( bPainted )

return nil


function Example_IntersectPath3( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      RectF rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)

      // Update the region to the portion that intersects with the rectF.
      pathRegion:Intersect(rect)

      graphics:FillRegion(solidBrush, pathRegion)


   }

   exampleWindow( bPainted )

return nil


function Example_IntersectPath4( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))

      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)
      Region rectRegion(rect)

      // Update the region to the portion that intersects with another region
      pathRegion:Intersect(rectRegion)

      graphics:FillRegion(solidBrush, pathRegion)


   }

   exampleWindow( bPainted )

return nil


function Example_MakeEmpty( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Rect rect(65, 15, 70, 45)
      SolidBrush redBrush(Color(255, 255, 0, 0))
      SolidBrush blueBrush(Color(255, 0, 0, 255))

      // Create a region, and fill it with a red brush.
      Region rectRegion(rect)
      graphics:FillRegion(redBrush, rectRegion)

      // Make the region empty, and then fill it with a blue brush.
      rectRegion:MakeEmpty()
      graphics:FillRegion(blueBrush, rectRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_MakeInfinite( )
   local bPainted := { | hdc |

      Graphics graphics(hdc)
      Rect rect(65, 15, 70, 45)
      SolidBrush redBrush(Color(255, 255, 0, 0))

      // Create a region, and fill it with a red brush.
      Region rectRegion(rect)

      rectRegion:MakeInfinite()
      graphics:FillRegion(redBrush, rectRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_RGTransform( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)
      graphics:FillRegion(solidBrush, pathRegion)

      // Transform the region.
      Matrix matrix(1, 0, 0, 3, 100, 0)  // vertical stretch, shift right
      pathRegion:Transform(matrix)
      graphics:FillRegion(solidBrush, pathRegion)

   }

   exampleWindow( bPainted )

return nil


function Example_RGTranslate( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)
      graphics:FillRegion(solidBrush, pathRegion)

      // Translate the region.
      dx = 100
      dy = 60
      pathRegion:Translate(dx, dy)
      graphics:FillRegion(solidBrush, pathRegion)

   }

   exampleWindow( bPainted )

return nil


function Example_RGXor1( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region rectRegion(rect)

      // Perform an exclusive OR operation on the region and a path.
      rectRegion:Xor(path)

      graphics:FillRegion(solidBrush, rectRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_RGXor2( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)

      // Perform an exclusive OR operation on the region and a path.
      pathRegion:Xor(rect)

      graphics:FillRegion(solidBrush, pathRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_RGXor3( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      RectF rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)

      // Perform an exclusive OR operation on the region and a path.
      pathRegion:Xor(rect)

      graphics:FillRegion(solidBrush, pathRegion)

   }

   exampleWindow( bPainted )

return nil

function Example_RGXor4( )
   local bPainted := { | hdc |

      local hRgn, hBrush
      Graphics graphics(hdc)

      SolidBrush solidBrush(Color(255, 255, 0, 0))

      points = {;
         Point(110, 20),;
         Point(120, 30),;
         Point(100, 60),;
         Point(120, 70),;
         Point(150, 60),;
         Point(140, 10)}

      Rect rect(65, 15, 70, 45)
      GraphicsPath path()
      SolidBrush solidBrush(Color(255, 255, 0, 0))
      path:AddClosedCurve(points)

      // Create a region from a rectangle.
      Region pathRegion(path)
      Region rectRegion(rect)

      // Perform an exclusive OR operation on the region and a path.
      pathRegion:Xor(rectRegion)

      graphics:FillRegion(solidBrush, pathRegion)

   }

   exampleWindow( bPainted )

return nil

//---------------------------------
//BITMAP
//---------------------------------


function Example_CaptureWnd( oTest )
   local bPainted

   bPainted := { | hdc, ps, oWnd |
      local hBmp := MakeBmpFromHWND( oTest:oWnd:hWnd )
      local oBmp
      Bitmap oBmp( Long2Ptr( hBmp ), 0 )
      DeleteObject( hBmp )

      Graphics graphics(hdc)

      graphics:DrawImage( oBmp, 0, 0, oWnd:nWidth, oWnd:nHeight )
   }

   exampleWindow( bPainted )

return nil

function Example_BMPClone3( oTest )
   local bPainted

   bPainted := { | hdc, ps, oWnd |
 	Graphics graphics(hdc)
 // Create a Bitmap object from a JPEG file.

   Bitmap bitmap("images\seleccion_espana_b_2010.jpg")
   // Clone a portion of the bitmap.
   clone = bitmap:Clone(42, 100, 100, 100, PixelFormatDontCare)

   // Draw the clone.
   graphics:DrawImage(Clone, 0, 0 )
   }

   exampleWindow( bPainted )

return nil

function Example_BMPFromFile( oTest )
   local bPainted

   bPainted := { | hdc, ps, oWnd |
 	Graphics graphics(hdc)
 // Create a Bitmap object from a JPEG file.

   Bitmap bitmap(0, 0)
   // Clone a portion of the bitmap.
   clone = bitmap:FromFile("images\seleccion_espana_b_2010.jpg")

   // Draw the clone.
   graphics:DrawImage(Clone, 0, 0 )
   }

   exampleWindow( bPainted )

return nil

function Example_BMPFromHBITMAP( oTest )
   local bPainted

   bPainted := { | hdc, ps, oWnd |
   local hBmp := MakeBmpFromHWND( oTest:oWnd:hWnd )
 	Graphics graphics(hdc)
 // Create a Bitmap object from a JPEG file.

   Bitmap bitmap(0, 0)
   // Clone a portion of the bitmap.
   clone = bitmap:FromHBitmap( Long2Ptr( hBmp ), 0 )
   DeleteObject( Long2Ptr( hBmp ) )

   // Draw the clone.
   graphics:DrawImage(Clone, 0, 0 )
   }

   exampleWindow( bPainted )

return nil

function Example_SetColormatrix( )
   local bPainted := { | hdc |
      local aColorMatrix
      local Blend := (100-50/*m_nTransparency*/)/100.0
      Graphics graphics(hdc)
      
      Bitmap oImage1( "images\seleccion_espana_b_2010.jpg" )
      Bitmap oImage2( "images\yankees.jpg" )
      
      ImageAttributes oImgAtts()
      
      graphics:DrawImage( oImage1, 0, 0 )
      
      aColorMatrix = { 1.0, 0.0, 0.0, 0.0, 0.0,  ;
                       0.0, 1.0, 0.0, 0.0, 0.0,  ;
                       0.0, 0.0, 1.0, 0.0, 0.0,  ;
                       0.0, 0.0, 0.0, Blend, 0.0,;
                       0.0, 0.0, 0.0, 0.0, 1.0   }
                       
                       
      oImgAtts:SetColorMatrix( aColorMatrix, ColorMatrixFlagsDefault, ColorAdjustTypeBitmap )
      
      RectF destination(10,10,400,400)
      RectF source(0,0,1500,1500)
 
      graphics:DrawImage(oImage2,destination, source,UnitPixel,oImgAtts)

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

#pragma BEGINDUMP
#include <windows.h>
#include <hbapi.h>

HB_FUNC( PTR2LONG ){
   void * ptr = hb_parptr( 1 );
   hb_retnl( ( LONG ) ptr );
}

HB_FUNC( LONG2PTR ){
	 void * l = ( void * ) hb_parnl( 1 );
   hb_retptr( l );
}

#pragma ENDDUMP


