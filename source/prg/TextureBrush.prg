#include "fivewin.ch"

function TextureBrush()
return GPTextureBrush():New()


CLASS GPTextureBrush

  DATA handle

  METHOD New( oColor, nWidth ) CONSTRUCTOR

  METHOD     Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPTextureBrush
*********************************************************************************************************

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPTextureBrush
*********************************************************************************************************

return nil


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

//HB_FUNC( _GPSOLIDBRUSH )
//{
//   Color* c = (Color*) hb_parptr( 1 );
//   TextureBrush* b = new TextureBrush( *c );
//   hb_retptr( (void*) b );
//}
//
//HB_FUNC( DELETESOLIDBRUSH )
//{
//   TextureBrush* b = (TextureBrush*) hb_parptr( 1 );
//   delete (TextureBrush*) b;
//   hb_ret();
//}

#pragma ENDDUMP
