#include "fivewin.ch"

function Image( cFileName )
return GPImage():New( cFileName )


CLASS GPImage

   DATA handle

   METHOD New( cFileName ) CONSTRUCTOR

   METHOD Destroy()
   DESTRUCTOR Destroy()

   METHOD nWidth()   INLINE GetWidthImg ( ::handle )
   METHOD nHeight()  INLINE GetHeightImg( ::handle )

ENDCLASS

*********************************************************************************************************
  METHOD New( cFileName ) CLASS GPImage
*********************************************************************************************************

  ::handle := _GPImage( cFileName )

return self

*********************************************************************************************************
   METHOD Destroy() CLASS GPImage
*********************************************************************************************************

   DeleteImage ( ::handle )

return nil

#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPIMAGE )
{
   LPWSTR cFileName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   Image* cimg = new Image( cFileName );

   hb_xfree( cFileName );
   hb_retptr( (void*) cimg );

}

HB_FUNC( DELETEIMAGE )
{
   Image* img = (Image*) hb_parptr( 1 );
   delete (Image*) img;
   hb_ret();
}

HB_FUNC( GETWIDTHIMG )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetWidth() );
}

HB_FUNC( GETHEIGHTIMG )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetHeight() );
}






#pragma ENDDUMP




