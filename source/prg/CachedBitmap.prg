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

  ::handle := _GPCachedBitmap(oBitmap:handle, graphics:handle)

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPCachedBitmap
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPCachedBitmap
*********************************************************************************************************

return GPCachedBitmapGetLastStatus(::handle)



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCACHEDBITMAP )
{
   Bitmap* bmp = (Bitmap*) hb_parptr( 1 );
   Graphics* gr = (Graphics*) hb_parptr( 2 );

   CachedBitmap* cbmp = new CachedBitmap( bmp, gr);

   hb_retptr( (void*) cbmp );
}

HB_FUNC( GPCACHEDBITMAPGETLASTSTATUS )
{
   CachedBitmap* ptr = (CachedBitmap*) hb_parptr( 1 );
   hb_retni( ptr->GetLastStatus() );
}

#pragma ENDDUMP




