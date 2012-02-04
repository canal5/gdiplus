#include "fivewin.ch"


function BrightnessContrast()

return GPBrightnessContrast():New()


CLASS GPBrightnessContrast

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD
  METHOD GetParameters()
  METHOD SetParameters()


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPBrightnessContrast
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPBrightnessContrast()
  elseif iParams == 1
     ::handle := _GPBrightnessContrast( p1 )                               //
  elseif iParams == 3
     ::handle := _GPBrightnessContrast( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPBrightnessContrast( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPBrightnessContrast( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPBrightnessContrast( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPBrightnessContrast( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBrightnessContrast
*********************************************************************************************************

  if !empty(::handle)
     DeleteBrightnessContrast( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPBrightnessContrast
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPBrightnessContrast
*********************************************************************************************************

return 0







//Constructor                                  Description
//BrightnessContrast::BrightnessContrast       Creates a new BrightnessContrast object.
//
//
//Methods
//
//The BrightnessContrast class has the following methods.
//
//Method                                       Description
//BrightnessContrast::GetParameters            The BrightnessContrast::GetParameters method gets the current values of the parameters of this BrightnessContrast object.
//BrightnessContrast::SetParameters            The BrightnessContrast::SetParameters method sets the parameters of this BrightnessContrast object.















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPBRIGHTNESSCONTRAST )
{
   //BrightnessContrast* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new BrightnessContrast();
   //else if (iParams == 1 )
   //    clr = new BrightnessContrast( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new BrightnessContrast( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new BrightnessContrast( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETEBRIGHTNESSCONTRAST )
{
   //BrightnessContrast* clr = (BrightnessContrast*) hb_parptr( 1 );
   //delete (BrightnessContrast*) clr;
   //hb_ret();
}

//HB_FUNC( GPBrightnessContrast... )
//{
//   BrightnessContrast* ptr = (BrightnessContrast*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




