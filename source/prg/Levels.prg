#include "fivewin.ch"


function Levels()

return GPLevels():New()


CLASS GPLevels

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor                      Description
//Levels::Levels                   Creates a Levels object.

  METHOD GetParameters()
  METHOD SetParameters()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPLevels
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := C5_GPLevels()
  elseif iParams == 1
     ::handle := C5_GPLevels( p1 )                               //
  elseif iParams == 3
     ::handle := C5_GPLevels( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5_GPLevels( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5_GPLevels( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5_GPLevels( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5_GPLevels( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPLevels
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetParameters() CLASS GPLevels
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetParameters() CLASS GPLevels
*********************************************************************************************************

return 0



//Constructors
//
//The Levels class has the following constructors.
//
//Constructor                      Description
//Levels::Levels                   Creates a Levels object.
//
//
//Methods
//
//The Levels class has the following methods.
//
//Method                           Description
//Levels::GetParameters            The Levels::GetParameters method gets the current values of the parameters of this Levels object.
//Levels::SetParameters            The Levels::SetParameters method sets the parameters of this Levels object.




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPLEVELS )
{
   //Levels* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Levels();
   //else if (iParams == 1 )
   //    ptr = new Levels( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Levels( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Levels( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( C5DELETELEVELS )
{
   //Levels* clr = (Levels*) hb_parptr( 1 );
   //delete (Levels*) clr;
   //hb_ret();
}

//HB_FUNC( GPLEVELS... )
//{
//   Levels* ptr = (Levels*) hb_parptr( 1 );
//}

#pragma ENDDUMP




