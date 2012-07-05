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
#include <gc.h>

HB_FUNC( C5_GPCACHEDBITMAP )
{
   CachedBitmap * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_CACHEDBITMAP );
   BOOL lOk = true;
   
   GDIPLUS * b = hb_GDIPLUS_par( 1 );
   GDIPLUS * g = hb_GDIPLUS_par( 2 );
   if( GP_IS_BITMAP( b ) && GP_IS_GRAPHICS( g ) ){
      Bitmap * bmp = ( Bitmap * ) GP_GET( b );
      Graphics * grp = ( Graphics * ) GP_GET( g );
      o = new CachedBitmap( bmp, grp );
   }else
      lOk = false;

   if( lOk ){
      GP_SET( pObj, o );
      hb_GDIPLUS_ret( pObj );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
}

HB_FUNC( C5GPCACHEDBITMAPGETLASTSTATUS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_CACHEDBITMAP( p ) ){      
      CachedBitmap * o = ( CachedBitmap * ) GP_GET( p );
      hb_retni( o->GetLastStatus() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




