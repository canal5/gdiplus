#include "fivewin.ch"


function AdjustableArrowCap()

return GPAdjustableArrowCap():New()


CLASS GPAdjustableArrowCap

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD
  METHOD GetHeight()
  METHOD GetMiddleInset()
  METHOD GetWidth()
  METHOD IsFilled()
  METHOD SetFillState()
  METHOD SetHeight()
  METHOD SetMiddleInset()
  METHOD SetWidth()


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPAdjustableArrowCap
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := C5GPAdjustableArrowCap()
  elseif iParams == 1
     ::handle := C5GPAdjustableArrowCap( p1 )                               //
  elseif iParams == 3
     ::handle := C5GPAdjustableArrowCap( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5GPAdjustableArrowCap( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5GPAdjustableArrowCap( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5GPAdjustableArrowCap( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5GPAdjustableArrowCap( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPAdjustableArrowCap
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetHeight() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetMiddleInset() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetWidth() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD IsFilled() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetFillState() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetHeight() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetMiddleInset() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetWidth() CLASS GPAdjustableArrowCap
*********************************************************************************************************

return 0




//Method                                   Description
//AdjustableArrowCap::GetHeight          The AdjustableArrowCap::GetHeight method gets the height of the arrow cap. The height is the distance from the base of the arrow to its vertex.
//AdjustableArrowCap::GetMiddleInset   The AdjustableArrowCap::GetMiddleInset method gets the value of the inset. The middle inset is the number of units that the midpoint of the base shifts towards the vertex.
//AdjustableArrowCap::GetWidth           The AdjustableArrowCap::GetWidth method gets the width of the arrow cap. The width is the distance between the endpoints of the base of the arrow.
//AdjustableArrowCap::IsFilled           The AdjustableArrowCap::IsFilled method determines whether the arrow cap is filled.
//AdjustableArrowCap::SetFillState   The AdjustableArrowCap::SetFillState method sets the fill state of the arrow cap. If the arrow cap is not filled, only the outline is drawn.
//AdjustableArrowCap::SetHeight          The AdjustableArrowCap::SetHeight method sets the height of the arrow cap. This is the distance from the base of the arrow to its vertex.
//AdjustableArrowCap::SetMiddleInset   The AdjustableArrowCap::SetMiddleInset method sets the number of units that the midpoint of the base shifts towards the vertex.
//AdjustableArrowCap::SetWidth           The AdjustableArrowCap::SetWidth method sets the width of the arrow cap. The width is the distance between the endpoints of the base of the arrow.









#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5GPADJUSTABLEARROWCAP )
{
//   AdjustableArrowCap* clr;
//   int iParams = hb_pcount();
//
//   if( iParams == 0 )
//       clr = new AdjustableArrowCap();
//   else if (iParams == 1 )
//       clr = new AdjustableArrowCap( hb_parnl( 1 ) );
//   else if (iParams == 3 )
//       clr = new AdjustableArrowCap( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
//   else
//       clr = new AdjustableArrowCap( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
//
//   hb_retptr( (void*)  );
}

HB_FUNC( C5DELETEADJUSTABLEARROWCAP )
{
//   AdjustableArrowCap* clr = (AdjustableArrowCap*) hb_parptr( 1 );
//   delete (AdjustableArrowCap*) clr;
//   hb_ret();
}

//HB_FUNC( C5GPADJUSTABLEARROWCAP... )
//{
//   AdjustableArrowCap* ptr = (AdjustableArrowCap*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP








