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

   ::handle := C5_GPBitmapData()

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBitmapData
*********************************************************************************************************

  ::handle := nil

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
#include <gc.h>


HB_FUNC( C5_GPBITMAPDATA )
{
   BitmapData * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_BITMAPDATA );
      
   o = new BitmapData();
   
   GP_SET( pObj, o );
   hb_GDIPLUS_ret( pObj );
   
}

#pragma ENDDUMP




