#include "fivewin.ch"

function Pen( oColor, nWidth )
return GPPen():New( oColor, nWidth )

function PenB( oBrush, nWidth )
return GPPen():NewB( oBrush, nWidth )

CLASS GPPen

  DATA handle

  METHOD New( oColor, nWidth ) CONSTRUCTOR
  METHOD NewB( oBrush, nWidth ) CONSTRUCTOR
  METHOD Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New( oColor, nWidth ) CLASS GPPen
*********************************************************************************************************

DEFAULT nWidth := 1

  ::handle := _GPPen( oColor:handle, nWidth )

return self

*********************************************************************************************************
  METHOD NewB( oBrush, nWidth ) CLASS GPPen
*********************************************************************************************************

DEFAULT nWidth := 1

  ::handle := _GPPenB( oBrush:handle, nWidth )

return self




*********************************************************************************************************
  METHOD Destroy() CLASS GPPen
*********************************************************************************************************

  DeletePen( ::handle )


return nil

#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPEN )
{
   Color* c = (Color*) hb_parptr( 1 );
   Pen* clr = new Pen( *c, hb_parni( 2 ));
   hb_retptr( (void*) clr );

}

HB_FUNC( _GPPENB )
{
   Brush* b = (Brush*) hb_parni( 1 );
   Pen* p = new Pen( b, (REAL)hb_parni( 2 ));
   hb_retptr( (void*) p );

}


HB_FUNC( DELETEPEN )
{

   Pen* p = (Pen*) hb_parptr( 1 );
   delete (Pen*) p;
   hb_ret();

}

#pragma ENDDUMP
