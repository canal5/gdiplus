#include "fivewin.ch"

function LinearGradientBrush( rc, color1, color2, angle, lScalable )
return GPLinearGradientBrush():New( rc, color1, color2, angle, lScalable )


CLASS GPLinearGradientBrush

   DATA handle

   METHOD New( rc, color1, color2, mode ) CONSTRUCTOR

   METHOD     Destroy()
   DESTRUCTOR Destroy()

ENDCLASS

**************************************************************************************************************
  METHOD New( rc, color1, color2, angle, lScalable ) CLASS GPLinearGradientBrush
**************************************************************************************************************

  DEFAULT angle     := 0
  DEFAULT lScalable := .t.

  ::handle   := _GPLinearGradientBrush( rc, color1:handle, color2:handle, angle, lScalable )

//enum LinearGradientMode
//{
//    LinearGradientModeHorizontal,         // 0
//    LinearGradientModeVertical,           // 1
//    LinearGradientModeForwardDiagonal,    // 2
//    LinearGradientModeBackwardDiagonal    // 3
//};


return self

**************************************************************************************************************
   METHOD Destroy() CLASS GPLinearGradientBrush
**************************************************************************************************************

   DeleteLGB( ::handle )

return nil
















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPLINEARGRADIENTBRUSH )
{
   RectF rect = RectF(hb_parvnd( 1, 1 ), hb_parvnd( 1, 2 ), hb_parvnd( 1, 3 ), hb_parvnd( 1, 4 ));
   Color* c1 = (Color*) hb_parnl(2);
   Color* c2 = (Color*) hb_parnl(3);

   LinearGradientBrush* l = new LinearGradientBrush( rect, *c1, *c2, (REAL) hb_parnd( 4 ), (BOOL) hb_parl( 5 ) );

   hb_retnl( (long) l );

}

HB_FUNC( DELETELGB )
{

   LinearGradientBrush* l = (LinearGradientBrush*) hb_parnl( 1 );
   delete (LinearGradientBrush*) l;
   hb_ret();

}

#pragma ENDDUMP



