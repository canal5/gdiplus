#include "fivewin.ch"


function ColorCurve()

return GPColorCurve():New()


CLASS GPColorCurve

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPColorCurve
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := C5_GPColorCurve()
  elseif iParams == 1
     ::handle := C5_GPColorCurve( p1 )                               //
  elseif iParams == 3
     ::handle := C5_GPColorCurve( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5_GPColorCurve( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5_GPColorCurve( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5_GPColorCurve( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5_GPColorCurve( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPColorCurve
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD GetParameters() CLASS GPColorCurve
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPColorCurve
*********************************************************************************************************

return 0




//Constructors
//
//The ColorCurve class has the following constructors.
//
//Constructor                        Description
//ColorCurve::ColorCurve                 Creates a ColorCurve object.
//
//
//Methods
//
//The ColorCurve class has the following methods.
//
//Method                                 Description
//ColorCurve::GetParameters        The ColorCurve::GetParameters gets the current values of the parameters of this ColorCurve object.
//ColorCurve::SetParameters        The ColorCurve::SetParameters method sets the parameters of this ColorCurve object.
//




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPCOLORCURVE )
{
   //ColorCurve* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new ColorCurve();
   //else if (iParams == 1 )
   //    clr = new ColorCurve( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new ColorCurve( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new ColorCurve( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( C5DELETECOLORCURVE )
{
   //ColorCurve* clr = (ColorCurve*) hb_parptr( 1 );
   //delete (ColorCurve*) clr;
   //hb_ret();
}

//HB_FUNC( GPColorCurve... )
//{
//   ColorCurve* ptr = (ColorCurve*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




