#include "fivewin.ch"


function CachedBitmap(oBitmap, graphics)

return GPCachedBitmap():New(oBitmap, graphics)


CLASS GPCachedBitmap

  DATA handle

  METHOD New(oBitmap, graphics) CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetLastStatus()

ENDCLASS

*********************************************************************************************************
  METHOD New(oBitmap, graphics) CLASS GPCachedBitmap
*********************************************************************************************************

  ::handle := C5_GPCachedBitmap(oBitmap:handle, graphics:handle)

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPCachedBitmap
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPCachedBitmap
*********************************************************************************************************

return C5GPCachedBitmapGetLastStatus(::handle)



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPCACHEDBITMAP )
{
   Bitmap* bmp = (Bitmap*) hb_parptr( 1 );
   Graphics* gr = (Graphics*) hb_parptr( 2 );

   CachedBitmap* cbmp = new CachedBitmap( bmp, gr);

   hb_retptr( (void*) cbmp );
}

HB_FUNC( C5GPCACHEDBITMAPGETLASTSTATUS )
{
   CachedBitmap* ptr = (CachedBitmap*) hb_parptr( 1 );
   hb_retni( ptr->GetLastStatus() );
}

#pragma ENDDUMP




