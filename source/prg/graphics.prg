#include "fivewin.ch"

static oWnd
static nPaint := 1

function main()

local oIcon


DEFINE ICON oIcon NAME 1

gdiplusstartup()

DEFINE WINDOW oWnd TITLE "Test GdiPlus"



ACTIVATE WINDOW oWnd ON PAINT Pinta( hDC ) MAXIMIZED

GdiplusShutdown()

return nil


function pinta( hDC )

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
//local oFont   := Font( "Segoe UI", 30 )
local oPen1   := Pen( oColor, 1 )
local oPen2   := Pen( oColor, 2 )
//local oPen3   := Pen( oColor, 3 )
//local oBrush1 := SolidBrush( oColor )
local rc := GetClientRect(oWnd:hWnd )
local oImage   := Image( "ice_cream.png" )
g:DrawImage( oImage, 10, 10, rc[4]/3, rc[3]/3 )

g:SetSmoothingMode()
g:SetPen( oPen1 )
g:DrawLine( 10, 10, 300, 300 )
//
g:SetPen( oPen2 )
g:DrawRectangle( {50, 50, 200, 300} )

return 0


/* Ejemplo de uso

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
local oFont   := Font( "Segoe UI", 30 )
local oPen1   := Pen( oColor, 1 )
local oPen2   := Pen( oColor, 2 )
local oPen3   := Pen( oColor, 3 )
local oBrush1 := SolidBrush( oColor )


g:SetPen( oPen1 )
g:DrawLine( 10, 10, 300, 300 )

g:SetPen( oPen2 )
g:DrawRectangle( 50, 50, 200, 300 )

return 0


Los objetos se destruyen solos cuando se termina la función porque se han definido en las clases metodos DESTRUCTOR
o por lo menos eso creo

Los métodos susceptibles de recibir un rectangulo pueden o pasar nTop, nLeft, nWidth, nHeight o un rectangulo como primer
parametro

Las funciones de pintado tienen que tener puestas con antelación lo que necesiten para pintar:

   Una funcion que dibuje una línea tiene que tener un objeto Pen establecido.
   Si una función necesita un brush y un pen pues igual. Necesitas un g:SetBrush( oBrush ) y un g:SetPen( oPen )

*/


function Graphics( hDC )
return GPGraphics():New( hDC )


CLASS GPGraphics

      DATA g

      DATA oBrush
      DATA oPen
      DATA oColor
      DATA oFont

      METHOD New( hDCOrImage ) CONSTRUCTOR

      METHOD AddMetafileComment     ( cComment )
      METHOD BeginContainer         ( )
      METHOD BitBlt                 ( oImage, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units )
      METHOD Clear                  ( oColor )
      METHOD DrawArc                ( nTop, nLeft, nWidth, nHeight, nStartFrom, nAngle )
      METHOD DrawBezier             ( nTop1, nLeft1, nTop2, nLeft2, nTop3, nLeft3, nTop4, nLeft4 )
      METHOD DrawBeziers            ( )
      METHOD DrawCachedBitmap       ( oCBitmap, nTop, nLeft )
      METHOD DrawClosedCurve        ( )
      METHOD DrawCurve              ( )
      METHOD DrawDriverString       ( )
      METHOD DrawEllipse            ( nTop, nLeft, nwidth, nHeight )
      METHOD DrawImage              ( oImage,   nTop, nLeft, nWidth, nHeight )
      METHOD DrawLine               ( nTop, nLeft, nBottom, nRight )
      METHOD DrawLines              ( )
      METHOD DrawPath               ( oPath )
      METHOD DrawPie                ( )
      METHOD DrawPolygon            ( )
      METHOD DrawRectangle          ( nTop, nLeft, nWidth, nHeight )
      METHOD DrawRectangles         ( )
      METHOD DrawRoundRect          ( nTop, nLeft, nWidth, nHeight )
      METHOD DrawString             ( cText, nTop, nLeft )
      METHOD EndContainer           ( )
      METHOD EnumerateMetafile      ( )
      METHOD ExcludeClip            ( )
      METHOD FillClosedCurve        ( )
      METHOD FillEllipse            ( nTop, nLeft, nwidth, nHeight )
      METHOD FillPath               ( oPath )
      METHOD FillPie                ( )
      METHOD FillPolygon            ( )
      METHOD FillRectangle          ( rc, oBrush, oPen )
      METHOD FillRectangles         ( )
      METHOD FillRegion             ( )
      METHOD FillRoundRect          ( rc, oBrush, oPen )
      METHOD Flush                  ( )
      METHOD FromHDC                ( )
      METHOD FromHWND               ( )
      METHOD FromImage              ( )
      METHOD GetClip                ( )
      METHOD GetClipBounds          ( )
      METHOD GetCompositingMode     ( )
      METHOD GetCompositingQuality  ( )
      METHOD GetDpiX                ( )
      METHOD GetDpiY                ( )
      METHOD GetHDC                 ( )
      METHOD GetHalftonePalette     ( )
      METHOD GetInterpolationMode   ( )
      METHOD GetLastStatus          ( )
      METHOD GetNearestColor        ( )
      METHOD GetPageScale           ( )
      METHOD GetPageUnit            ( )
      METHOD GetPixelOffsetMode     ( )
      METHOD GetRenderingOrigin     ( )
      METHOD GetSmoothingMode       ( )
      METHOD GetTextContrast        ( )
      METHOD GetTextRenderingHint   ( )
      METHOD GetTransform           ( )
      METHOD GetVisibleClipBounds   ( )
      METHOD IntersectClip          ( )
      METHOD IsClipEmpty            ( )
      METHOD IsVisible              ( )
      METHOD IsVisibleClipEmpty     ( )
      METHOD MeasureCharacterRanges ( )
      METHOD MeasureDriverString    ( )
      METHOD MeasureString          ( )
      METHOD MultiplyTransform      ( )
      METHOD ReleaseHDC             ( )
      METHOD ResetClip              ( )
      METHOD ResetTransform         ( )
      METHOD Restore                ( )
      METHOD RotateTransform        ( angle, order )
      METHOD Save                   ( )
      METHOD ScaleTransform         ( hor, ver, order )
      METHOD SetAbort               ( )
      METHOD SetClip                ( )
      METHOD SetCompositingMode     ( )
      METHOD SetCompositingQuality  ( )
      METHOD SetInterpolationMode   ( )
      METHOD SetPageScale           ( )
      METHOD SetPageUnit            ( )
      METHOD SetPixelOffsetMode     ( )
      METHOD SetRenderingOrigin     ( )
      METHOD SetSmoothingMode       ( nMode ) 
      METHOD SetTextContrast        ( )
      METHOD SetTextRenderingHint   ( )
      METHOD SetTransform           ( )
      METHOD TransformPoints        ( )
      METHOD TranslateClip          ( )
      METHOD TranslateTransform     ( nTop, nLeft, order )

      METHOD     Destroy            ( )
      DESTRUCTOR Destroy            ( )

      METHOD SetColor( oColor ) INLINE ::oColor := oColor
      METHOD SetBrush( oBrush ) INLINE ::oBrush := oBrush
      METHOD SetFont ( oFont  ) INLINE ::oFont  := oFont
      METHOD SetPen  ( oPen   ) INLINE ::oPen   := oPen


ENDCLASS

**********************************************************************************************************
  METHOD New( hDCOrImage ) CLASS GPGraphics
**********************************************************************************************************

  if valtype( hDCOrImage ) == "N"
     ::g := GdiPlusNewGraphics( hDCOrImage )
  elseif valtype( hDCOrImage ) == "O"
     ::g := GdiPlusNewGraphicsFromBitmap( hDCOrImage:handle )
  endif

return self

**********************************************************************************************************
  METHOD AddMetafileComment( cComment ) CLASS GPGraphics
**********************************************************************************************************

  GP_AddMetafileComment( ::g, cComment )

return 0

**********************************************************************************************************
  METHOD BeginContainer( ) CLASS GPGraphics
**********************************************************************************************************

return GP_BeginContainer(::g)

**********************************************************************************************************
  METHOD BitBlt( oImage, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units ) CLASS GPGraphics
**********************************************************************************************************

  GP_BitBlt( ::g, oImage:handle, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units )

return 0


**********************************************************************************************************
  METHOD Clear( oColor ) CLASS GPGraphics
**********************************************************************************************************

  GP_Clear( ::g, oColor:handle )

return 0


**********************************************************************************************************
  METHOD Destroy() CLASS GPGraphics
**********************************************************************************************************

  GdiPlusDeleteGraphics( ::g )
  ::g := nil

return nil

**********************************************************************************************************
  METHOD DrawArc( nTop, nLeft, nWidth, nHeight, nStartFrom, nAngle ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawArc( ::g, ::oPen:handle, nTop, nLeft, nWidth, nHeight, nStartFrom, nAngle )

return 0

**********************************************************************************************************
  METHOD DrawBezier( aStartPt, aPtCtrl1, aPtCtrl2, aEndPt   ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawBezier( ::g, ::oPen:handle, aStartPt[1], aStartPt[2], aPtCtrl1[1], aPtCtrl1[2], aPtCtrl2[1], aPtCtrl2[2], aEndPt[1], aEndPt[2]  )

return 0

**********************************************************************************************************
  METHOD DrawBeziers( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawCachedBitmap( oCBitmap, nTop, nLeft ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawCachedBitmap( ::g, oCBitmap:handle, nTop, nLeft )

return 0

**********************************************************************************************************
  METHOD DrawClosedCurve( ) CLASS GPGraphics
**********************************************************************************************************

return 0

**********************************************************************************************************
  METHOD DrawCurve( ) CLASS GPGraphics
**********************************************************************************************************

return 0

**********************************************************************************************************
  METHOD DrawDriverString( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawEllipse( nTop, nLeft, nwidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  if valtype( nTop ) == "A"
     nLeft   := nTop[2]
     nWidth  := nTop[4]-nTop[2]
     nHeight := nTop[3]-nTop[1]
     nTop    := nTop[1]
  endif

  GP_DrawEllipse( ::g, ::oPen:handle, nTop, nLeft, nwidth, nHeight )

return 0

**********************************************************************************************************
  METHOD DrawImage( oImage, nTop, nLeft, nWidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT nWidth  := oImage:nWidth()
  DEFAULT nHeight := oImage:nHeight()

  GP_DrawImage( ::g, oImage:handle, nTop, nLeft, nWidth, nHeight )


return 0

**********************************************************************************************************
  METHOD FillEllipse( nTop, nLeft, nwidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  if valtype( nTop ) == "A"
     nLeft   := nTop[2]
     nWidth  := nTop[4]-nTop[2]
     nHeight := nTop[3]-nTop[1]
     nTop    := nTop[1]
  endif

  GP_FillEllipse( ::g, ::oBrush:handle, nTop, nLeft, nwidth, nHeight )

return 0


**********************************************************************************************************
  METHOD FillPath( oPath ) CLASS GPGraphics
**********************************************************************************************************

  GP_FillPath( ::oBrush:handle, oPath:handle )

return 0

**********************************************************************************************************
  METHOD FillPie( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillPolygon( ) CLASS GPGraphics
**********************************************************************************************************


return 0

*********************************************************************************************************
  METHOD FillRectangle( rc, oBrush, oPen ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oBrush := ::oBrush
  DEFAULT oPen   := ::oPen


  if oPen == nil
     GP_FillRect( ::g, {rc[1],rc[2], rc[4]-rc[2], rc[3]-rc[1]}, oBrush:handle )
  else
     GP_FillRect( ::g, {rc[1],rc[2], rc[4]-rc[2], rc[3]-rc[1]}, oBrush:handle, oPen:handle )
  endif

return 0

**********************************************************************************************************
  METHOD FillRectangles( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillRegion( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillRoundRect( rc, nRad1, nRad2, oBrush, oPen ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oBrush := ::oBrush
  DEFAULT oPen   := ::oPen

  GP_RoundRect( ::g, oPen:handle, rc[1], rc[2], rc[4]-rc[2], rc[3]-rc[1], nRad1, nRad2, oBrush:handle )

return 0

**********************************************************************************************************
  METHOD Flush( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FromHDC( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FromHWND( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FromImage( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetClipBounds( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetCompositingMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetCompositingQuality( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetDpiX( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetDpiY( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetHDC( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetHalftonePalette( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetInterpolationMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetLastStatus( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetNearestColor( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetPageScale( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetPageUnit( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetPixelOffsetMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetRenderingOrigin( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetSmoothingMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetTextContrast( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetTextRenderingHint( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetVisibleClipBounds( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IntersectClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IsClipEmpty( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IsVisible( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IsVisibleClipEmpty( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MeasureCharacterRanges( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MeasureDriverString( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MeasureString( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MultiplyTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ReleaseHDC( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ResetClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ResetTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD Restore( ) CLASS GPGraphics
**********************************************************************************************************


return 0




**********************************************************************************************************
  METHOD DrawPath( oPath ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawPath( ::oPen:handle, oPath:handle )

return 0

**********************************************************************************************************
  METHOD DrawPie( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawPolygon( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawRectangle( rc, oPen ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oPen := ::oPen

  GP_DrawRectangle( ::g, rc, oPen:handle )

return 0

**********************************************************************************************************
  METHOD DrawRectangles( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawRoundRect( rc, oPen, nRad1, nRad2 ) CLASS GPGraphics
**********************************************************************************************************

  GP_RoundRect( ::g, oPen:handle, rc[1], rc[2], rc[4]-rc[2], rc[3]-rc[1], nRad1, nRad2 )

return 0

**********************************************************************************************************
  METHOD DrawString( cText, nTop, nLeft, font, color ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT font := ::oFont
  DEFAULT color := ::oColor

  GP_DrawString( ::g, cText, nTop, nLeft, font:handle, color:handle )

return 0

**********************************************************************************************************
  METHOD EndContainer( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD EnumerateMetafile( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ExcludeClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillClosedCurve( ) CLASS GPGraphics
**********************************************************************************************************


return 0



**********************************************************************************************************
  METHOD DrawLine( nTop, nLeft, nBottom, nRight ) CLASS GPGraphics
**********************************************************************************************************

 GP_DrawLine( ::g, ::oPen:handle, nTop, nLeft, nBottom, nRight )

return 0


**********************************************************************************************************
  METHOD DrawLines( )  CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD RotateTransform( angle, order ) CLASS GPGraphics
**********************************************************************************************************

  GP_RotateTransform( ::g, angle, order )

return nil

**********************************************************************************************************
  METHOD Save( ) CLASS GPGraphics
**********************************************************************************************************
  return nil

**********************************************************************************************************
  METHOD ScaleTransform( hor, ver, order ) CLASS GPGraphics
**********************************************************************************************************

  GP_ScaleTransform( ::g, hor, ver, order )

return nil

**********************************************************************************************************
  METHOD SetAbort( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetCompositingMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetCompositingQuality( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetInterpolationMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetPageScale( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetPageUnit( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetPixelOffsetMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetRenderingOrigin( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetSmoothingMode( nMode ) CLASS GPGraphics
**********************************************************************************************************
//enum QualityMode
//{
//    QualityModeInvalid   = -1,
//    QualityModeDefault   = 0,
//    QualityModeLow       = 1, // Best performance
//    QualityModeHigh      = 2  // Best rendering quality
//};

DEFAULT nMode := 2 // SmoothingModeHighQuality

SetSmoothingMode(::g, nMode )

return 0




**********************************************************************************************************
  METHOD SetTextContrast( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetTextRenderingHint( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD TransformPoints( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD TranslateClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0


**********************************************************************************************************
  METHOD TranslateTransform( hor, ver, order ) CLASS GPGraphics
**********************************************************************************************************

  GP_TranslateTransform( ::g, hor, ver, order )

return nil


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;

GdiplusStartupInput gdiplusStartupInput;
ULONG_PTR	gdiplusToken;




HB_FUNC( GDIPLUSSTARTUP )
{

    GdiplusStartup(&gdiplusToken, &gdiplusStartupInput, NULL);
    hb_retni( (int) gdiplusToken );

}

HB_FUNC( GDIPLUSSHUTDOWN )
{
    GdiplusShutdown(gdiplusToken);
    hb_ret                        ();
}


//VOID Example_DrawString2(HDC hdc)
//{
//   Graphics graphics(hdc);
//
//   // Create a string.
//   WCHAR string[] = L"Sample Text";
//
//   // Initialize arguments.
//   Font myFont(L"Arial", 16);
//   PointF origin(0.0f, 0.0f);
//   SolidBrush blackBrush(Color(255, 0, 0, 0));
//
//   // Draw string.
//   graphics.DrawString(
//   string,
//   11,
//   &myFont,
//   origin,
//   &blackBrush);
//}

HB_FUNC( GDIPLUSNEWGRAPHICS )
{
   Graphics *g = new Graphics( (HDC) hb_parnl(1));
   hb_retptr( (void *) g );
}

HB_FUNC( GDIPLUSNEWGRAPHICSFROMBITMAP )
{
   Graphics *g = new Graphics( (Image*) hb_parptr(1) );
   hb_retptr( (void *) g );
}


HB_FUNC( GDIPLUSDELETEGRAPHICS )
{
   delete (Graphics*) hb_parptr( 1 );
   hb_ret                        ();
}

//Status AddMetafileComment(
//  [in]  const BYTE *data,
//  [in]  UINT sizeData
//);

HB_FUNC( GP_ADDMETAFILECOMMENT )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    LPSTR bByte  = (char*)hb_parc( 2 );
    g->AddMetafileComment( (BYTE*) bByte, hb_parclen( 2 ) );
    hb_ret();

}

HB_FUNC( GP_BEGINCONTAINER )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    GraphicsContainer gc = g->BeginContainer();
    hb_retnl( gc );
}


// Status DrawImage(IN Image* image,
//                     IN INT x,
//                     IN INT y,
//                     IN INT srcx,
//                     IN INT srcy,
//                     IN INT srcwidth,
//                     IN INT srcheight,
//                     IN Unit srcUnit)

//enum Unit
//{
//    UnitWorld,      // 0 -- World coordinate (non-physical unit)
//    UnitDisplay,    // 1 -- Variable -- for PageTransform only
//    UnitPixel,      // 2 -- Each unit is one device pixel.
//    UnitPoint,      // 3 -- Each unit is a printer's point, or 1/72 inch.
//    UnitInch,       // 4 -- Each unit is 1 inch.
//    UnitDocument,   // 5 -- Each unit is 1/300 inch.
//    UnitMillimeter  // 6 -- Each unit is 1 millimeter.
//};


HB_FUNC( GP_BITBLT )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Image* img = (Image*) hb_parptr( 2 );
    Unit u = (Unit) hb_parnl( 9 );
    g->DrawImage( img, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 6 ), hb_parni( 5 ), hb_parni( 7 ), hb_parni( 8 ), u );
    hb_ret();
}

HB_FUNC( GP_CLEAR )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Color* c = (Color*) hb_parptr( 2 );
    g->Clear( *c );
    hb_ret();
}



HB_FUNC( GP_DRAWARC )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    g->DrawArc( p, hb_parni(4), hb_parni(3), hb_parni(5), hb_parni(6), (REAL) hb_parnd( 7 ), (REAL) hb_parnd( 8 ) );
    hb_ret();
}

HB_FUNC( GP_DRAWBEZIER )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    g->DrawBezier( p, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 6 ), hb_parni( 5 ), hb_parni( 8 ), hb_parni( 7 ), hb_parni( 10 ), hb_parni( 9 ) );
    hb_ret();
}

HB_FUNC( GP_DRAWCACHEDBITMAP )
{
    Graphics* g = (Graphics*) hb_parptr( 1 );
    CachedBitmap* b = (CachedBitmap*) hb_parptr( 2 );
    g->DrawCachedBitmap( b, hb_parni( 4 ), hb_parni( 3 ));
    hb_ret();
}

HB_FUNC( GP_DRAWELLIPSE )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    g->DrawEllipse( p, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 5 ), hb_parni( 6 ));
    hb_ret();
}

HB_FUNC( GP_DRAWIMAGE )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Image* c = (Image*) hb_parptr( 2 );
    g->DrawImage( c, hb_parni(3), hb_parni(4), hb_parni(5), hb_parni(6) );
    hb_ret();
}


HB_FUNC( GP_DRAWLINE )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    g->DrawLine( p, hb_parni(4), hb_parni(3), hb_parni(6), hb_parni(5) );
    hb_ret();
}

HB_FUNC( GP_ROUNDRECT )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    int x = hb_parni( 4 );
    int y = hb_parni( 3 );
    int xr = x + hb_parni( 5 );
    int yr = y + hb_parni( 6 );
    Size* CornerSize = new Size(hb_parni( 7 ),hb_parni( 8 ));

    RectF* tl = new RectF(x,y,CornerSize->Width,CornerSize->Height);
    RectF* tr = new RectF(xr,y,CornerSize->Width,CornerSize->Height);
    RectF* bl = new RectF(x,yr,CornerSize->Width,CornerSize->Height);
    RectF* br = new RectF(xr,yr,CornerSize->Width,CornerSize->Height);
    GraphicsPath* oPath = new GraphicsPath                        ();
    oPath->AddArc(*tl, 180, 90);
    oPath->AddArc(*tr, 270, 90);
    oPath->AddArc(*br, 360, 90);  //NOTE: br BEFORE bl
    oPath->AddArc(*bl, 90, 90);
    oPath->CloseAllFigures                        ();
    if ( hb_pcount                        () > 8 )
    {
       SolidBrush* b = (SolidBrush*) hb_parptr( 9 );
       g->FillPath( b, oPath );
    }
    g->DrawPath( p, oPath );

    delete (RectF*) tl;
    delete (RectF*) tr;
    delete (RectF*) bl;
    delete (RectF*) br;
    delete (GraphicsPath*) oPath;

}


HB_FUNC( GP_DRAWPATH )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    GraphicsPath* gp = (GraphicsPath*) hb_parptr( 3 );
    g->DrawPath(p, gp );

    hb_ret();
}

HB_FUNC( GP_DRAWRECTANGLE )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Pen* p = (Pen*) hb_parptr(3);

    RectF rect = RectF( hb_parvnd( 2, 1 ), hb_parvnd( 2, 2 ), hb_parvnd( 2, 3 ), hb_parvnd( 2, 4 ) );
    g->DrawRectangle(p, rect );
    hb_ret();
}

HB_FUNC( GP_DRAWSTRING )
{
   Graphics *g = (Graphics*) hb_parptr( 1 );
   LPWSTR str = hb_mbtowc( (LPSTR) hb_parc( 2 ));
   Font* myFont = (Font*) hb_parptr( 5 );
   PointF origin((float) hb_parni( 4 ), (float) hb_parni( 3 ) );
   Color* c = (Color*) hb_parptr(6);
   SolidBrush* blackBrush = new SolidBrush(*c);
   g->DrawString( str, hb_parclen( 2 ), myFont, origin, blackBrush);

   delete (SolidBrush*) blackBrush;
   hb_xfree( str );
}

//Status DrawString(
//  [in]       const WCHAR *string,
//  [in]       INT length,
//  [in]       const Font *font,
//  [in, ref]  const RectF &layoutRect,
//  [in]       const StringFormat *stringFormat,
//  [in]       const Brush *brush
//);

//HB_FUNC( GP_DRAWSTRINGRC )
//{
//   Graphics *g = (Graphics*) hb_parnl( 1 );
//   LPWSTR str = hb_mbtowc( (LPSTR) hb_parc( 2 ));
//   RectF rect = RectF( hb_parvnd( 4, 1 ), hb_parvnd( 4, 2 ), hb_parvnd( 4, 3 ), hb_parvnd( 4, 4 ) );
//   Font* myFont = (Font*) hb_parnl( 5 );
//   Color* c = (Color*) hb_parnl(6);
//   SolidBrush* blackBrush = new SolidBrush(*c);
//   g->DrawString( str, hb_parclen( 2 ), myFont, rect, blackBrush);
//
//   delete (SolidBrush*) blackBrush;
//   hb_xfree( str );
//}
//

HB_FUNC( GP_FILLELLIPSE )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    Brush* b = (Brush*) hb_parptr( 2 );
    g->FillEllipse( b, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 5 ), hb_parni( 6 ));
    hb_ret();
}


HB_FUNC( GP_FILLPATH )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    SolidBrush* brush = (SolidBrush*) hb_parptr( 2 );
    GraphicsPath* gp = (GraphicsPath*) hb_parptr( 3 );
    g->FillPath(brush, gp );

    hb_ret();
}

HB_FUNC( GP_FILLRECT )
{
    Graphics *g = (Graphics*) hb_parptr( 1 );
    SolidBrush* brush = (SolidBrush*) hb_parptr(3);

    RectF rect = RectF(hb_parvnd( 2, 1 ), hb_parvnd( 2, 2 ), hb_parvnd( 2, 3 ), hb_parvnd( 2, 4 ));
    g->FillRectangle(brush, rect );
    if( hb_pcount                        () > 3 )
    {
       Pen *p = (Pen*) hb_parptr( 4 );
       g->DrawRectangle( p, rect );
    }
    hb_ret();
}


//typedef enum  {
//  MatrixOrderPrepend   = 0,
//  MatrixOrderAppend    = 1
//} MatrixOrder;
HB_FUNC( GP_ROTATETRANSFORM )
{
   Graphics *g = (Graphics*) hb_parptr( 1 );
   g->RotateTransform( (REAL) hb_parnd( 2 ), (MatrixOrder) hb_parni( 3 ) );
   hb_ret();
}

HB_FUNC( GP_SCALETRANSFORM )
{
   Graphics *g = (Graphics*) hb_parptr( 1 );
   g->ScaleTransform( (REAL) hb_parnd( 2 ), (REAL) hb_parnd( 3 ), (MatrixOrder) hb_parni( 4 ) );
   hb_ret();
}

HB_FUNC( GP_TRANSLATETRANSFORM )
{
   Graphics *g = (Graphics*) hb_parptr( 1 );
   g->TranslateTransform( (REAL) hb_parnd( 2 ), (REAL) hb_parnd( 3 ), (MatrixOrder) hb_parni( 4 ) );
   hb_ret();
}

HB_FUNC( SETSMOOTHINGMODE )
{
   Graphics *g = (Graphics*) hb_parptr( 1 );
   SmoothingMode  q = (SmoothingMode ) hb_parni( 2 );
   g->SetSmoothingMode(q);
}

HB_FUNC( SETTEXTRENDERINGHINT )
{
   Graphics *g = (Graphics*) hb_parptr( 1 );
   g->SetTextRenderingHint(TextRenderingHintAntiAlias);
}




#pragma ENDDUMP





