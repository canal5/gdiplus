#include "fivewin.ch"

function Font( cFaceName, nHeight)
return GPFont():New( cFaceName )


CLASS GPFont

  DATA handle

  METHOD New( cFaceName, nHeight ) CONSTRUCTOR
  METHOD     Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New( cFaceName, nHeight ) CLASS GPFont
*********************************************************************************************************

  ::handle := GPFontNew( cFaceName, nHeight )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPFont
*********************************************************************************************************

  GPDeleteFont( ::handle )

return nil


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( GPFONTNEW )
{
   LPWSTR cFaceName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   Font* f = new Font( cFaceName, hb_parni( 2 ) );
   hb_xfree( cFaceName );
   hb_retptr( (void*) f );

}

HB_FUNC( GPDELETEFONT )
{
   Font* f = (Font*) hb_parptr( 1 );
   delete (Font*) f;
   hb_ret();
}

#pragma ENDDUMP




