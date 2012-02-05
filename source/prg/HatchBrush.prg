#include "fivewin.ch"


function HatchBrush()

return GPHatchBrush():New()


CLASS GPHatchBrush

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetBackgroundColor()
  METHOD GetForegroundColor()
  METHOD GetHatchStyle()


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPHatchBrush
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPHatchBrush()
  elseif iParams == 1
     ::handle := _GPHatchBrush( p1 )                               //
  elseif iParams == 3
     ::handle := _GPHatchBrush( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPHatchBrush( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPHatchBrush( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPHatchBrush( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPHatchBrush( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPHatchBrush
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetBackgroundColor() CLASS GPHatchBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetForegroundColor() CLASS GPHatchBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetHatchStyle() CLASS GPHatchBrush
*********************************************************************************************************

return 0




//Constructors
//
//The HatchBrush class has the following constructors.
//
//Constructor                                   Description
//HatchBrush::HatchBrush                        Creates a HatchBrush::HatchBrush object based on a hatch style, a foreground color, and a background color.
//
//
//Methods
//
//The HatchBrush class has the following methods.
//
//Method                                        Description
//HatchBrush::GetBackgroundColor                The HatchBrush::GetBackgroundColor method gets the background color of this hatch brush.
//HatchBrush::GetForegroundColor                The HatchBrush::GetForegroundColor method gets the foreground color of this hatch brush.
//HatchBrush::GetHatchStyle                     The HatchBrush::GetHatchStyle method gets the hatch style of this hatch brush.




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPHATCHBRUSH )
{
   //HatchBrush* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new HatchBrush();
   //else if (iParams == 1 )
   //    ptr = new HatchBrush( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new HatchBrush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new HatchBrush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEHATCHBRUSH )
{
   //HatchBrush* clr = (HatchBrush*) hb_parptr( 1 );
   //delete (HatchBrush*) clr;
   //hb_ret();
}

//HB_FUNC( GPHATCHBRUSH... )
//{
//   HatchBrush* ptr = (HatchBrush*) hb_parptr( 1 );
//}

#pragma ENDDUMP




