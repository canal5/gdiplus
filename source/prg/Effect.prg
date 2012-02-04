#include "fivewin.ch"


function Effect()

return GPEffect():New()


CLASS GPEffect

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetAuxData()
  METHOD GetAuxDataSize()
  METHOD GetParameterSize()
  METHOD UseAuxData()



ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPEffect
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPEffect()
  elseif iParams == 1
     ::handle := _GPEffect( p1 )                               //
  elseif iParams == 3
     ::handle := _GPEffect( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPEffect( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPEffect( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPEffect( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPEffect( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPEffect
*********************************************************************************************************

  if !empty(::handle)
     DeleteEffect( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD GetAuxData() CLASS GPEffect
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetAuxDataSize() CLASS GPEffect
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetParameterSize() CLASS GPEffect
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD UseAuxData() CLASS GPEffect
*********************************************************************************************************

return 0



//Constructors
//
//The Effect class has the following constructors.
//
//Constructor                              Description
//Effect::Effect                           Creates an Effect object.
//
//
//Methods
//
//The Effect class has the following methods.
//
//Method                                   Description
//Effect::GetAuxData                       The Effect::GetAuxData gets a pointer to a set of lookup tables created by a previous call to the Bitmap::ApplyEffect method.
//Effect::GetAuxDataSize                   The Effect::GetAuxDataSize method gets the size, in bytes, of the auxiliary data created by a previous call to the Bitmap::ApplyEffect method.
//Effect::GetParameterSize                 The Effect::GetParameterSize method gets the total size, in bytes, of the parameters currently set for this Effect. The Effect::GetParameterSize method is usually called on an object that is an instance of a descendant of the Effect class.
//Effect::UseAuxData                       The Effect::UseAuxData method sets or clears a flag that specifies whether the Bitmap::ApplyEffect method should return a pointer to the auxiliary data that it creates.




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPEFFECT )
{
   //Effect* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Effect();
   //else if (iParams == 1 )
   //    ptr = new Effect( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Effect( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Effect( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEEFFECT )
{
   //Effect* clr = (Effect*) hb_parptr( 1 );
   //delete (Effect*) clr;
   //hb_ret();
}

//HB_FUNC( GPEffect... )
//{
//   Effect* ptr = (Effect*) hb_parptr( 1 );
//}

#pragma ENDDUMP




