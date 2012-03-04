#include "fivewin.ch"

function HueSaturationLighness()
return GPHueSaturationLighness():New()

CLASS GPHueSaturationLighness

   DATA handle

   METHOD New() CONSTRUCTOR
   METHOD Destroy()
   DESTRUCTOR Destroy()

   METHOD GetParameters()
   METHOD SetParameters()

ENDCLASS

*******************************************************************************************
  METHOD New() CLASS GPHueSaturationLighness
*******************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := C5_GPHueSaturationLighness()
  elseif iParams == 1
     ::handle := C5_GPHueSaturationLighness( p1 )                               //
  elseif iParams == 3
     ::handle := C5_GPHueSaturationLighness( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5_GPHueSaturationLighness( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5_GPHueSaturationLighness( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5_GPHueSaturationLighness( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5_GPHueSaturationLighness( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPHueSaturationLighness
*********************************************************************************************************

  if !empty(::handle)
  endif

return nil

*********************************************************************************************************
   METHOD GetParameters() CLASS GPHueSaturationLighness
*********************************************************************************************************

return 0

*********************************************************************************************************
   METHOD SetParameters() CLASS GPHueSaturationLighness
*********************************************************************************************************

return 0




// Method                                 Description
// HueSaturationLightness::GetParameters  The HueSaturationLightness::GetParameters method gets the current values of the parameters of this HueSaturationLightness object.
// HueSaturationLightness::SetParameters  The HueSaturationLightness::SetParameters method sets the parameters of this HueSaturationLightness object.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;

HB_FUNC( C5_GPHUESATURATIONLIGHNESS )
{
   //HueSaturationLighness* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new HueSaturationLighness();
   //else if (iParams == 1 )
   //    ptr = new HueSaturationLighness( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new HueSaturationLighness( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new HueSaturationLighness( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( C5DELETEHUESATURATIONLIGHNESS )
{
   //HueSaturationLighness* clr = (HueSaturationLighness*) hb_parptr( 1 );
   //delete (HueSaturationLighness*) clr;
   //hb_ret();
}

//HB_FUNC( GPHUESATURATIONLIGHNESS... )
//{
//   HueSaturationLighness* ptr = (HueSaturationLighness*) hb_parptr( 1 );
//}






#pragma ENDDUMP

