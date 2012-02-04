#include "fivewin.ch"


function PrivateFontCollection()

return GPPrivateFontCollection():New()


CLASS GPPrivateFontCollection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD AddFontFile()
  METHOD AddMemoryFont()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPrivateFontCollection
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPPrivateFontCollection()
  elseif iParams == 1
     ::handle := _GPPrivateFontCollection( p1 )                               //
  elseif iParams == 3
     ::handle := _GPPrivateFontCollection( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPPrivateFontCollection( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPPrivateFontCollection( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPPrivateFontCollection( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPPrivateFontCollection( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPrivateFontCollection
*********************************************************************************************************

  if !empty(::handle)
     DeletePrivateFontCollection( ::handle )
  endif

return nil


*********************************************************************************************************
  METHOD AddFontFile() CLASS GPPrivateFontCollection
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD AddMemoryFont() CLASS GPPrivateFontCollection
*********************************************************************************************************

return 0



//*********************************************************************************************************
//  METHOD () CLASS GPPrivateFontCollection
//*********************************************************************************************************
//
//return GPPrivateFontCollection(::handle)

//Constructors
//
//The PrivateFontCollection class has the following constructors.
//
//Constructor                                        Description
//PrivateFontCollection::PrivateFontCollection       Creates an empty PrivateFontCollection object.
//
//
//Methods
//
//The PrivateFontCollection class has the following methods.
//
//Method                                             Description
//PrivateFontCollection::AddFontFile                 The PrivateFontCollection::AddFontFile method adds a font file to this private font collection.
//PrivateFontCollection::AddMemoryFont               The PrivateFontCollection::AddMemoryFont method adds a font that is contained in system memory to a GDI+ font collection.





#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPRIVATEFONTCOLLECTION )
{
   //PrivateFontCollection* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new PrivateFontCollection();
   //else if (iParams == 1 )
   //    ptr = new PrivateFontCollection( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new PrivateFontCollection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new PrivateFontCollection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEPRIVATEFONTCOLLECTION )
{
   //PrivateFontCollection* clr = (PrivateFontCollection*) hb_parptr( 1 );
   //delete (PrivateFontCollection*) clr;
   //hb_ret();
}

//HB_FUNC( GPPRIVATEFONTCOLLECTION... )
//{
//   PrivateFontCollection* ptr = (PrivateFontCollection*) hb_parptr( 1 );
//}

#pragma ENDDUMP




