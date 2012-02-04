#include "fivewin.ch"


function BitmapData()

return GPBitmapData():New()


CLASS GPBitmapData

  DATA handle
  DATA Width
  DATA Height
  DATA Stride
  DATA PixelFormat
  DATA Scan0
  DATA Reserved

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPBitmapData
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPBitmapData()
  elseif iParams == 1
     ::handle := _GPBitmapData( p1 )                               //
  elseif iParams == 3
     ::handle := _GPBitmapData( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPBitmapData( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPBitmapData( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPBitmapData( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPBitmapData( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBitmapData
*********************************************************************************************************

  if !empty(::handle)
     DeleteBitmapData( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPBitmapData
//*********************************************************************************************************
//
//return GPBitmapData(::handle)


//Data Members
//
//The following table lists the members exposed by the BitmapData object.
//
//Data Members    Type            Description
//Width           UINT            Number of pixels in one scan line of the bitmap.
//Height          UINT            Number of scan lines in the bitmap.
//Stride          INT             Offset, in bytes, between consecutive scan lines of the bitmap. If the stride is positive, the bitmap is top-down. If the stride is negative, the bitmap is bottom-up.
//PixelFormat     PixelFormat     Integer that specifies the pixel format of the bitmap.
//Scan0           void *  Pointer to the first (index 0) scan line of the bitmap.
//Reserved        UINT_PTR        Reserved for future use.
//








#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPBITMAPDATA )
{
   //BitmapData* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new BitmapData();
   //else if (iParams == 1 )
   //    clr = new BitmapData( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new BitmapData( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new BitmapData( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETEBITMAPDATA )
{
   //BitmapData* clr = (BitmapData*) hb_parptr( 1 );
   //delete (BitmapData*) clr;
   //hb_ret();
}

//HB_FUNC( GPBitmapData... )
//{
//   BitmapData* ptr = (BitmapData*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




