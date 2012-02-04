#include "fivewin.ch"


function CachedBitmap()

return GPCachedBitmap():New()


CLASS GPCachedBitmap

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD
  METHOD GetLastStatus()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPCachedBitmap
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPCachedBitmap()
  elseif iParams == 1
     ::handle := _GPCachedBitmap( p1 )                               //
  elseif iParams == 3
     ::handle := _GPCachedBitmap( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPCachedBitmap( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPCachedBitmap( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPCachedBitmap( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPCachedBitmap( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPCachedBitmap
*********************************************************************************************************

  if !empty(::handle)
     DeleteCachedBitmap( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPCachedBitmap
*********************************************************************************************************

return 0




//Constructors
//
//The CachedBitmap class has the following constructors.
//
//Constructor	                         Description
//CachedBitmap::CachedBitmap	         Creates a CachedBitmap::CachedBitmap object based on a Bitmap object and a Graphics object. The cached bitmap takes the pixel data from the Bitmap object and stores it in a format that is optimized for the display device associated with the Graphics object.
//
//
//Methods
//
//The CachedBitmap class has the following methods.
//
//Method	                                 Description
//CachedBitmap::GetLastStatus	         The CachedBitmap::GetLastStatus method returns a value that indicates whether this CachedBitmap object was constructed successfully.
















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCACHEDBITMAP )
{
   //CachedBitmap* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new CachedBitmap();
   //else if (iParams == 1 )
   //    clr = new CachedBitmap( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new CachedBitmap( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new CachedBitmap( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETECACHEDBITMAP )
{
   //CachedBitmap* clr = (CachedBitmap*) hb_parptr( 1 );
   //delete (CachedBitmap*) clr;
   //hb_ret();
}

//HB_FUNC( GPCachedBitmap... )
//{
//   CachedBitmap* ptr = (CachedBitmap*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




