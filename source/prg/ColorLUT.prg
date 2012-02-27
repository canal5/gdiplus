#include "fivewin.ch"


function ColorLUT()

return GPColorLUT():New()


CLASS GPColorLUT

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPColorLUT
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPColorLUT()
  elseif iParams == 1
     ::handle := _GPColorLUT( p1 )                               //
  elseif iParams == 3
     ::handle := _GPColorLUT( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPColorLUT( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPColorLUT( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPColorLUT( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPColorLUT( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPColorLUT
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPColorLUT
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPColorLUT
*********************************************************************************************************

return 0




//Constructors
//
//The ColorLUT class has the following constructors.
//
//Constructor                     Description
//ColorLUT::ColorLUT              Creates a new ColorLUT object.
//
//
//Methods
//
//The ColorLUT class has the following methods.
//
//Method                              Description
//ColorLUT::GetParameters             The ColorLUT::GetParameters method gets the current values of the parameters of this ColorLUT object.
//ColorLUT::SetParameters             The ColorLUT::SetParameters method sets the parameters of this ColorLUT object.





#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCOLORLUT )
{
   //ColorLUT* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new ColorLUT();
   //else if (iParams == 1 )
   //    clr = new ColorLUT( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new ColorLUT( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new ColorLUT( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETECOLORLUT )
{
   //ColorLUT* clr = (ColorLUT*) hb_parptr( 1 );
   //delete (ColorLUT*) clr;
   //hb_ret();
}

//HB_FUNC( GPColorLUT... )
//{
//   ColorLUT* ptr = (ColorLUT*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




