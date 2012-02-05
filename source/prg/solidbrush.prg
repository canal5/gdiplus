#include "fivewin.ch"

function SolidBrush( oColor )
return GPSolidBrush():New( oColor )


CLASS GPSolidBrush

  DATA handle

  METHOD New( oColor ) CONSTRUCTOR

  METHOD     Destroy()
  DESTRUCTOR Destroy()

  METHOD GetColor()
  METHOD SetColor()

ENDCLASS

*********************************************************************************************************
  METHOD New( oColor ) CLASS GPSolidBrush
*********************************************************************************************************

  ::handle := _GPSolidBrush( oColor:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSolidBrush
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD GetColor() CLASS GPSolidBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetColor() CLASS GPSolidBrush
*********************************************************************************************************

return 0



//Constructors
//
//The SolidBrush class has the following constructors.
//
//Constructor                       Description
//SolidBrush::SolidBrush            Creates a SolidBrush object based on a color.
//
//
//Methods
//
//The SolidBrush class has the following methods.
//
//Method                            Description
//SolidBrush::GetColor              The SolidBrush::GetColor method gets the color of this solid brush.
//SolidBrush::SetColor              The SolidBrush::SetColor method sets the color of this solid brush.





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
