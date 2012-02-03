#include "fivewin.ch"


function Color( nA, nR, nG, nB )
return GPColor():New( nA, nR, nG, nB )

function ColorRGB( nR, nG, nB )
return GPColor():Color( 255, nR, nG, nB )

CLASS GPColor

  DATA handle

  METHOD New( nA, nR, nG, nB ) CONSTRUCTOR
  METHOD Color( nR, nG, nB ) CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetA()
  METHOD GetAlpha()
  METHOD GetB()
  METHOD GetBlue()
  METHOD GetG()
  METHOD GetGreen()
  METHOD GetR()
  METHOD GetRed()
  METHOD GetValue()
  METHOD SetFromCOLORREF()
  METHOD SetValue()
  METHOD ToCOLORREF()

ENDCLASS

*********************************************************************************************************
  METHOD New( nA, nR, nG, nB ) CLASS GPColor
*********************************************************************************************************

  ::handle := _GPColor( nA, nR, nG, nB )

return self

*********************************************************************************************************
  METHOD Color( nR, nG, nB ) CLASS GPColor
*********************************************************************************************************

  ::handle := GPColorRGB( nR, nG, nB )

return self



*********************************************************************************************************
  METHOD Destroy() CLASS GPColor
*********************************************************************************************************

  DeleteColor( ::handle )

return nil

*********************************************************************************************************
  METHOD GetA() CLASS GPColor
*********************************************************************************************************

return GPColorGetA(::handle)

*********************************************************************************************************
  METHOD GetAlpha() CLASS GPColor
*********************************************************************************************************

return GPColorGetAlpha(::handle)

*********************************************************************************************************
  METHOD GetB() CLASS GPColor
*********************************************************************************************************

return GPColorGetB(::handle)

*********************************************************************************************************
  METHOD GetBlue() CLASS GPColor
*********************************************************************************************************

return GPColorGetBlue(::handle)

*********************************************************************************************************
  METHOD GetG() CLASS GPColor
*********************************************************************************************************

return GPColorGetG(::handle)

*********************************************************************************************************
  METHOD GetGreen() CLASS GPColor
*********************************************************************************************************

return GPColorGetGreen(::handle)

*********************************************************************************************************
  METHOD GetR() CLASS GPColor
*********************************************************************************************************

return GPColorGetR(::handle)

*********************************************************************************************************
  METHOD GetRed() CLASS GPColor
*********************************************************************************************************

return GPColorGetRed(::handle)

*********************************************************************************************************
  METHOD GetValue() CLASS GPColor
*********************************************************************************************************

return GPColorGetValue(::handle)


*********************************************************************************************************
  METHOD SetFromCOLORREF( rgbColor ) CLASS GPColor
*********************************************************************************************************

return GPColorSetFromCOLORREF(::handle, rgbColor)

*********************************************************************************************************
  METHOD SetValue() CLASS GPColor
*********************************************************************************************************

return GPColorSetValue(::handle, argbColor)

*********************************************************************************************************
  METHOD ToCOLORREF() CLASS GPColor
*********************************************************************************************************

return GPColorToCOLORREF(::handle)


// Color::GetA	             The Color::GetA method gets the alpha component of this Color object.
// Color::GetAlpha	     The Color::GetAlpha method gets the alpha component of this Color object.
// Color::GetB	             The Color::GetB method gets the blue component of this Color object.
// Color::GetBlue	     The Color::GetBlue method gets the blue component of this Color object.
// Color::GetG	             The Color::GetG method gets the green component of this Color object.
// Color::GetGreen	     The Color::GetGreen method gets the green component of this Color object.
// Color::GetR	             The Color::GetR method gets the red component of this Color object.
// Color::GetRed	     The Color::GetRed method gets the red component of this Color object.
// Color::GetValue	     The Color::GetValue method gets the ARGB value of this Color object.
// Color::MakeARGB	     The Color::MakeARGB method creates a 32-bit value that consolidates the specified alpha, red, green, and blue components.
// Color::SetFromCOLORREF    The Color::SetFromCOLORREF method uses a GDICOLORREF value to set the ARGB value of this Color object.
// Color::SetValue	     The Color::SetValue method sets the color of this Color object.
// Color::ToCOLORREF	     The Color::ToCOLORREF method converts this Color object's ARGB value to a GDICOLORREF value.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCOLOR )
{
   Color* clr = new Color( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   hb_retptr( (void*) clr );
}

HB_FUNC( GPCOLORRGB )
{
   Color* clr = new Color( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   hb_retptr( (void*) clr );
}

HB_FUNC( DELETECOLOR )
{
   Color* clr = (Color*) hb_parptr( 1 );
   delete (Color*) clr;
   hb_ret();
}

HB_FUNC( GPCOLORGETA )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetA() );
}

HB_FUNC( GPCOLORGETALPHA )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetAlpha() );
}

HB_FUNC( GPCOLORGETB )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetB() );
}

HB_FUNC( GPCOLORGETBLUE )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetBlue() );
}

HB_FUNC( GPCOLORGETG )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetG() );
}

HB_FUNC( GPCOLORGETGREEN )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetGreen() );
}

HB_FUNC( GPCOLORGETR )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetR() );
}

HB_FUNC( GPCOLORGETRED )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetRed() );
}

HB_FUNC( GPCOLORGETVALUE )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retni( clr->GetValue() );
}

HB_FUNC( GPCOLORSETFROMCOLORREF )
{
   Color* clr = (Color*) hb_parptr( 1 );
   clr->SetFromCOLORREF( (COLORREF) hb_parnl( 2 ) );
   hb_ret();
}

HB_FUNC( GPCOLORSETVALUE )
{
   Color* clr = (Color*) hb_parptr( 1 );
   clr->SetValue( (ARGB) hb_parnl( 2 ) );
   hb_ret();
}

HB_FUNC( GPCOLORTOCOLORREF )
{
   Color* clr = (Color*) hb_parptr( 1 );
   hb_retnl( (long) clr->ToCOLORREF() );
}



#pragma ENDDUMP




