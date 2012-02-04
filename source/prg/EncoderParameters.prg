#include "fivewin.ch"


function EncoderParameters()

return GPEncoderParameters():New()


CLASS GPEncoderParameters

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPEncoderParameters
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPEncoderParameters()
  elseif iParams == 1
     ::handle := _GPEncoderParameters( p1 )                               //
  elseif iParams == 3
     ::handle := _GPEncoderParameters( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPEncoderParameters( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPEncoderParameters( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPEncoderParameters( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPEncoderParameters( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPEncoderParameters
*********************************************************************************************************

  if !empty(::handle)
     DeleteEncoderParameters( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPEncoderParameters
//*********************************************************************************************************
//
//return GPEncoderParameters(::handle)


//Data Members
//
//The following table lists the members exposed by the EncoderParameters object.
//
//Data Members    Type               Description
//Count           UINT               Number of EncoderParameter objects in the array.
//Parameter       EncoderParameter   Array of EncoderParameter objects.
//



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPENCODERPARAMETERS )
{
   //EncoderParameters* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new EncoderParameters();
   //else if (iParams == 1 )
   //    ptr = new EncoderParameters( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new EncoderParameters( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new EncoderParameters( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEENCODERPARAMETERS )
{
   //EncoderParameters* clr = (EncoderParameters*) hb_parptr( 1 );
   //delete (EncoderParameters*) clr;
   //hb_ret();
}

//HB_FUNC( GPEncoderParameters... )
//{
//   EncoderParameters* ptr = (EncoderParameters*) hb_parptr( 1 );
//}

#pragma ENDDUMP




