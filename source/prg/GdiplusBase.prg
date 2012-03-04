//¿¿Es necesaria esta clase ??

#include "fivewin.ch"


function GdiplusBase()

return GPGdiplusBase():New()


CLASS GPGdiplusBase

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPGdiplusBase
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := C5_GPGdiplusBase()
  elseif iParams == 1
     ::handle := C5_GPGdiplusBase( p1 )                               //
  elseif iParams == 3
     ::handle := C5_GPGdiplusBase( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5_GPGdiplusBase( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5_GPGdiplusBase( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5_GPGdiplusBase( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5_GPGdiplusBase( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPGdiplusBase
*********************************************************************************************************

  ::handle := nil

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPGdiplusBase
//*********************************************************************************************************
//
//return GPGdiplusBase(::handle)

//Methods
//
//The GdiplusBase class has the following methods.
//
//Method                                     Description
//GdiplusBase::operator delete               The GdiplusBase::operator delete method deallocates memory for one GDI+ object.
//GdiplusBase::operator delete[]             The xref rid="_gdiplus_CLASS_GdiplusBase_operator_delete_bracket_in_pVoid_" qualify="0"/> method deallocates memory for an array of GDI+ objects.
//GdiplusBase::operator new                  The GdiplusBase::operator new method allocates memory for one GDI+ object.
//GdiplusBase::operator new[]                The GdiplusBase::operator new[] method allocates memory for an array of GDI+ objects.












#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPGDIPLUSBASE )
{
   //GdiplusBase* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new GdiplusBase();
   //else if (iParams == 1 )
   //    ptr = new GdiplusBase( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new GdiplusBase( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new GdiplusBase( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( C5DELETEGDIPLUSBASE )
{
   //GdiplusBase* clr = (GdiplusBase*) hb_parptr( 1 );
   //delete (GdiplusBase*) clr;
   //hb_ret();
}

//HB_FUNC( GPGDIPLUSBASE... )
//{
//   GdiplusBase* ptr = (GdiplusBase*) hb_parptr( 1 );
//}

#pragma ENDDUMP




