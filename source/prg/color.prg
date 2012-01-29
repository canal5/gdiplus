#include "fivewin.ch"


function Color( nA, nR, nG, nB )
return GPColor():New( nA, nR, nG, nB )


CLASS GPColor

  DATA handle

  METHOD New( nA, nR, nG, nB ) CONSTRUCTOR



  METHOD     Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New( nA, nR, nG, nB ) CLASS GPColor
*********************************************************************************************************

  ::handle := _GPColor( nA, nR, nG, nB )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPColor
*********************************************************************************************************

  DeleteColor( ::handle )

return nil



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCOLOR )
{

   Color* clr = new Color( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   hb_retptr( (void*) clr );

}

HB_FUNC( DELETECOLOR )
{

   Color* clr = (Color*) hb_parptr( 1 );
   delete (Color*) clr;
   hb_ret();

}

#pragma ENDDUMP




