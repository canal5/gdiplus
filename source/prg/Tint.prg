#include "fivewin.ch"


function Tint()

return GPTint():New()


CLASS GPTint

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPTint
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPTint()
  elseif iParams == 1
     ::handle := _GPTint( p1 )                               //
  elseif iParams == 3
     ::handle := _GPTint( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPTint( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPTint( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPTint( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPTint( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPTint
*********************************************************************************************************

  if !empty(::handle)
     DeleteTint( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPTint
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPTint
*********************************************************************************************************

return 0



//Constructors
//
//The Tint class has the following constructors.
//
//Constructor                       Description
//Tint::Tint                        Creates a Tint object.
//
//
//Methods
//
//The Tint class has the following methods.
//
//Method                            Description
//Tint::GetParameters               The Tint::GetParameters method gets the current values of the parameters of this Tint object.
//Tint::SetParameters               The Tint::SetParameters method sets the parameters of this Tint object.



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPTINT )
{
   //Tint* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Tint();
   //else if (iParams == 1 )
   //    ptr = new Tint( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Tint( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Tint( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETETINT )
{
   //Tint* clr = (Tint*) hb_parptr( 1 );
   //delete (Tint*) clr;
   //hb_ret();
}

//HB_FUNC( GPTINT... )
//{
//   Tint* ptr = (Tint*) hb_parptr( 1 );
//}

#pragma ENDDUMP




