#include "fivewin.ch"

function SolidBrush( oColor, nWidth )
return GPSolidBrush():New( oColor, nWidth )


CLASS GPSolidBrush

  DATA handle

  METHOD New( oColor, nWidth ) CONSTRUCTOR

  METHOD     Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New( oColor, nWidth ) CLASS GPSolidBrush
*********************************************************************************************************

DEFAULT nWidth := 1

  ::handle := _GPSolidBrush( oColor:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSolidBrush
*********************************************************************************************************

  DeleteSolidBrush( ::handle )

return nil


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPSOLIDBRUSH )
{
   Color* c = (Color*) hb_parptr( 1 );
   SolidBrush* b = new SolidBrush( *c );
   hb_retptr( (void*) b );
}

HB_FUNC( DELETESOLIDBRUSH )
{
   SolidBrush* b = (SolidBrush*) hb_parptr( 1 );
   delete (SolidBrush*) b;
   hb_ret();
}

#pragma ENDDUMP
