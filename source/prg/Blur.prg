#include "fivewin.ch"


function Blur()

return GPBlur():New()


CLASS GPBlur

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD
  METHOD GetParameters()
  METHOD SetParameters()


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPBlur
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPBlur()
  elseif iParams == 1
     ::handle := _GPBlur( p1 )                               //
  elseif iParams == 3
     ::handle := _GPBlur( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPBlur( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPBlur( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPBlur( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPBlur( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBlur
*********************************************************************************************************

  if !empty(::handle)
     DeleteBlur( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPBlur
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPBlur
*********************************************************************************************************

return 0





//Constructors
//
//The Blur class has the following constructors.
//
//Constructor                  Description
//Blur::Blur                   Creates a Blur object.
//
//
//Methods
//
//The Blur class has the following methods.
//
//Method                       Description
//Blur::GetParameters          The Blur::GetParameters method gets the current values of the parameters of this Blur object.
//Blur::SetParameters          The Blur::SetParameters method sets the parameters of this Blur object.










#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPBLUR )
{
   //Blur* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new Blur();
   //else if (iParams == 1 )
   //    clr = new Blur( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new Blur( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new Blur( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETEBLUR )
{
   //Blur* clr = (Blur*) hb_parptr( 1 );
   //delete (Blur*) clr;
   //hb_ret();
}

//HB_FUNC( GPBlur... )
//{
//   Blur* ptr = (Blur*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




