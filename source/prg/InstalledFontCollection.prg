#include "fivewin.ch"


function InstalledFontCollection()

return GPInstalledFontCollection():New()


CLASS GPInstalledFontCollection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//InstalledFontCollection::InstalledFontCollection



ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPInstalledFontCollection
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPInstalledFontCollection()
  elseif iParams == 1
     ::handle := _GPInstalledFontCollection( p1 )                               //
  elseif iParams == 3
     ::handle := _GPInstalledFontCollection( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPInstalledFontCollection( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPInstalledFontCollection( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPInstalledFontCollection( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPInstalledFontCollection( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPInstalledFontCollection
*********************************************************************************************************

  if !empty(::handle)
     DeleteInstalledFontCollection( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPInstalledFontCollection
//*********************************************************************************************************
//
//return GPInstalledFontCollection(::handle)

//Constructors
//
//The InstalledFontCollection class has the following constructors.
//
//Constructor                                            Description
//InstalledFontCollection::InstalledFontCollection       Creates an InstalledFontCollection::InstalledFontCollection object.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPINSTALLEDFONTCOLLECTION )
{
   //InstalledFontCollection* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new InstalledFontCollection();
   //else if (iParams == 1 )
   //    ptr = new InstalledFontCollection( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new InstalledFontCollection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new InstalledFontCollection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEINSTALLEDFONTCOLLECTION )
{
   //InstalledFontCollection* clr = (InstalledFontCollection*) hb_parptr( 1 );
   //delete (InstalledFontCollection*) clr;
   //hb_ret();
}

//HB_FUNC( GPINSTALLEDFONTCOLLECTION... )
//{
//   InstalledFontCollection* ptr = (InstalledFontCollection*) hb_parptr( 1 );
//}

#pragma ENDDUMP




