#include "fivewin.ch"

function Font( cFaceName, nHeight, lItalic, lBold, lUnderline )
return GPFont():New( cFaceName, nHeight, lItalic, lBold, lUnderline )


CLASS GPFont

  DATA handle

  METHOD New( cFaceName, nHeight, lItalic, lBold, lUnderline ) CONSTRUCTOR
  METHOD     Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New( cFaceName, nHeight, lItalic, lBold, lUnderline ) CLASS GPFont
*********************************************************************************************************

  ::handle := _GPFont( cFaceName, nHeight, lItalic, lBold, lUnderline )


return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPFont
*********************************************************************************************************

  DeleteFont( ::handle )

return nil


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPFONT )
{
   LPWSTR cFaceName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   Font* f = new Font( cFaceName, hb_parni( 2 ) );
   hb_xfree( cFaceName );
   hb_retptr( (void*) f );

}

HB_FUNC( DELETEFONT )
{
   Font* f = (Font*) hb_parptr( 1 );
   delete (Font*) f;
   hb_ret();
}

#pragma ENDDUMP




