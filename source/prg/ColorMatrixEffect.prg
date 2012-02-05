#include "fivewin.ch"

function ColorMatrixEffect()

return GPColorMatrixEffect():New()


CLASS GPColorMatrixEffect

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPColorMatrixEffect
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPColorMatrixEffect()
  elseif iParams == 1
     ::handle := _GPColorMatrixEffect( p1 )                               //
  elseif iParams == 3
     ::handle := _GPColorMatrixEffect( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPColorMatrixEffect( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPColorMatrixEffect( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPColorMatrixEffect( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPColorMatrixEffect( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPColorMatrixEffect
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPColorMatrixEffect
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPColorMatrixEffect
*********************************************************************************************************

return 0





//Constructors
//
//The ColorMatrixEffect class has the following constructors.
//
//Constructor	                           Description
//ColorMatrixEffect::ColorMatrixEffect	   Creates a ColorMatrixEffect object.
//
//
//Methods
//
//The ColorMatrixEffect class has the following methods.
//
//Method	                                   Description
//ColorMatrixEffect::GetParameters	   The ColorMatrixEffect::GetParameters method gets the elements of the current 5x5 color matrix of this ColorMatrixEffect object.
//ColorMatrixEffect::SetParameters	   The ColorMatrixEffect::SetParameters method sets the 5x5 color matrix of this ColorMatrixEffect object.






#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCOLORMATRIXEFFECT )
{
   //ColorMatrixEffect* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new ColorMatrixEffect();
   //else if (iParams == 1 )
   //    clr = new ColorMatrixEffect( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new ColorMatrixEffect( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new ColorMatrixEffect( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETECOLORMATRIXEFFECT )
{
   //ColorMatrixEffect* clr = (ColorMatrixEffect*) hb_parptr( 1 );
   //delete (ColorMatrixEffect*) clr;
   //hb_ret();
}

//HB_FUNC( GPCOLORMATRIXEFFECT... )
//{
//   ColorMatrixEffect* ptr = (ColorMatrixEffect*) hb_parptr( 1 );
//   hb_retni( ptr-> );
//}

#pragma ENDDUMP




