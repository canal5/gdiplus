#include "fivewin.ch"


function RedEyeCorrection()

return GPRedEyeCorrection():New()


CLASS GPRedEyeCorrection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPRedEyeCorrection
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPRedEyeCorrection()
  elseif iParams == 1
     ::handle := _GPRedEyeCorrection( p1 )                               //
  elseif iParams == 3
     ::handle := _GPRedEyeCorrection( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPRedEyeCorrection( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPRedEyeCorrection( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPRedEyeCorrection( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPRedEyeCorrection( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRedEyeCorrection
*********************************************************************************************************

  if !empty(::handle)
     DeleteRedEyeCorrection( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPRedEyeCorrection
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPRedEyeCorrection
*********************************************************************************************************

return 0



//Constructors
//
//The RedEyeCorrection class has the following constructors.
//
//Constructor                                 Description
//RedEyeCorrection::RedEyeCorrection          Creates a RedEyeCorrection object.
//
//
//Methods
//
//The RedEyeCorrection class has the following methods.
//
//Method                                      Description
//RedEyeCorrection::GetParameters             The RedEyeCorrection::GetParameters method gets the current values of the parameters of this RedEyeCorrection object.
//RedEyeCorrection::SetParameters             The RedEyeCorrection::SetParameters method sets the parameters of this RedEyeCorrection object.






#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPREDEYECORRECTION )
{
   //RedEyeCorrection* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new RedEyeCorrection();
   //else if (iParams == 1 )
   //    ptr = new RedEyeCorrection( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new RedEyeCorrection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new RedEyeCorrection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEREDEYECORRECTION )
{
   //RedEyeCorrection* clr = (RedEyeCorrection*) hb_parptr( 1 );
   //delete (RedEyeCorrection*) clr;
   //hb_ret();
}

//HB_FUNC( GPREDEYECORRECTION... )
//{
//   RedEyeCorrection* ptr = (RedEyeCorrection*) hb_parptr( 1 );
//}

#pragma ENDDUMP




