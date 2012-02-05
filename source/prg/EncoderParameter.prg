#include "fivewin.ch"


function EncoderParameter()

return GPEncoderParameter():New()


CLASS GPEncoderParameter

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPEncoderParameter
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPEncoderParameter()
  elseif iParams == 1
     ::handle := _GPEncoderParameter( p1 )                               //
  elseif iParams == 3
     ::handle := _GPEncoderParameter( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPEncoderParameter( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPEncoderParameter( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPEncoderParameter( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPEncoderParameter( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPEncoderParameter
*********************************************************************************************************

  ::handle := nil

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPEncoderParameter
//*********************************************************************************************************
//
//return GPEncoderParameter(::handle)



//Data Members
//
//The following table lists the members exposed by the EncoderParameter object.
//
//Data Members    Type    Description
//Guid            GUID    Identifies the parameter category. GUIDs that represent various parameter categories (EncoderCompression, EncoderColorDepth, and the like) are defined in Gdiplusimaging.h.
//NumberOfValues  ULONG   Number of values in the array pointed to by the Value data member.
//Type            ULONG   Identifies the data type of the parameter. The EncoderParameterValueType enumeration in Gdiplusenums.h defines several possible value types.
//Value           VOID *  Pointer to an array of values. Each value has the type specified by the Type data member.














#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPENCODERPARAMETER )
{
   //EncoderParameter* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new EncoderParameter();
   //else if (iParams == 1 )
   //    ptr = new EncoderParameter( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new EncoderParameter( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new EncoderParameter( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEENCODERPARAMETER )
{
   //EncoderParameter* clr = (EncoderParameter*) hb_parptr( 1 );
   //delete (EncoderParameter*) clr;
   //hb_ret();
}

//HB_FUNC( GPEncoderParameter... )
//{
//   EncoderParameter* ptr = (EncoderParameter*) hb_parptr( 1 );
//}

#pragma ENDDUMP




