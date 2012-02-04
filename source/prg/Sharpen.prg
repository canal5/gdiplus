#include "fivewin.ch"


function Sharpen()

return GPSharpen():New()


CLASS GPSharpen

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPSharpen
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPSharpen()
  elseif iParams == 1
     ::handle := _GPSharpen( p1 )                               //
  elseif iParams == 3
     ::handle := _GPSharpen( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPSharpen( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPSharpen( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPSharpen( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPSharpen( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSharpen
*********************************************************************************************************

  if !empty(::handle)
     DeleteSharpen( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPSharpen
//*********************************************************************************************************
//
//return GPSharpen(::handle)

//Constructors
//
//The Sharpen class has the following constructors.
//
//Constructor                  Description
//Sharpen::Sharpen             Creates a Sharpen object.
//
//
//Methods
//
//The Sharpen class has the following methods.
//
//Method                       Description
//Sharpen::GetParameters       The Sharpen::GetParameters method gets the current values of the parameters of this Sharpen object.
//Sharpen::SetParameters       The Sharpen::SetParameters method sets the parameters of this Sharpen object.




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPSHARPEN )
{
   //Sharpen* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Sharpen();
   //else if (iParams == 1 )
   //    ptr = new Sharpen( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Sharpen( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Sharpen( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETESHARPEN )
{
   //Sharpen* clr = (Sharpen*) hb_parptr( 1 );
   //delete (Sharpen*) clr;
   //hb_ret();
}

//HB_FUNC( GPSHARPEN... )
//{
//   Sharpen* ptr = (Sharpen*) hb_parptr( 1 );
//}

#pragma ENDDUMP




