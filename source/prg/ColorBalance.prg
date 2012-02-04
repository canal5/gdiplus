#include "fivewin.ch"


function ColorBalance()

return GPColorBalance():New()


CLASS GPColorBalance

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPColorBalance
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPColorBalance()
  elseif iParams == 1
     ::handle := _GPColorBalance( p1 )                               //
  elseif iParams == 3
     ::handle := _GPColorBalance( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPColorBalance( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPColorBalance( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPColorBalance( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPColorBalance( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPColorBalance
*********************************************************************************************************

  if !empty(::handle)
     DeleteColorBalance( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPColorBalance
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPColorBalance
*********************************************************************************************************

return 0



//Constructors
//
//The ColorBalance class has the following constructors.
//
//Constructor                                Description
//ColorBalance::ColorBalance                 Creates a new ColorBalance object.
//
//
//Methods
//
//The ColorBalance class has the following methods.
//
//Method                                     Description
//ColorBalance::GetParameters                The ColorBalance::GetParameters method gets the current values of the parameters of this ColorBalance object.
//ColorBalance::SetParameters                The ColorBalance::SetParameters method sets the parameters of this ColorBalance object.



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCOLORBALANCE )
{
   //ColorBalance* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new ColorBalance();
   //else if (iParams == 1 )
   //    clr = new ColorBalance( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new ColorBalance( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new ColorBalance( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETECOLORBALANCE )
{
   //ColorBalance* clr = (ColorBalance*) hb_parptr( 1 );
   //delete (ColorBalance*) clr;
   //hb_ret();
}

//HB_FUNC( GPColorBalance... )
//{
//   ColorBalance* ptr = (ColorBalance*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




