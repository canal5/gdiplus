#include "fivewin.ch"


function FontCollection()

return GPFontCollection():New()


CLASS GPFontCollection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetFamilies()
  METHOD GetFamilyCount()
  METHOD GetLastStatus()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPFontCollection
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPFontCollection()
  elseif iParams == 1
     ::handle := _GPFontCollection( p1 )                               //
  elseif iParams == 3
     ::handle := _GPFontCollection( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPFontCollection( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPFontCollection( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPFontCollection( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPFontCollection( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPFontCollection
*********************************************************************************************************

  if !empty(::handle)
     DeleteFontCollection( ::handle )
  endif

return nil


*********************************************************************************************************
  METHOD GetFamilies() CLASS GPFontCollection
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetFamilyCount() CLASS GPFontCollection
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPFontCollection
*********************************************************************************************************

return 0




//Constructors
//
//The FontCollection class has the following constructors.
//
//Constructor                                      Description
//FontCollection::FontCollection                   Creates an empty FontCollection::FontCollection object.
//
//
//Methods
//
//The FontCollection class has the following methods.
//
//Method                                           Description
//FontCollection::GetFamilies                      The FontCollection::GetFamilies method gets the font families contained in this font collection.
//FontCollection::GetFamilyCount                   The FontCollection::GetFamilyCount method gets the number of font families contained in this font collection.
//FontCollection::GetLastStatus                    The FontCollection::GetLastStatus method returns a value that indicates the result of this FontCollection object's previous method call.






#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPFONTCOLLECTION )
{
   //FontCollection* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new FontCollection();
   //else if (iParams == 1 )
   //    ptr = new FontCollection( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new FontCollection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new FontCollection( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEFONTCOLLECTION )
{
   //FontCollection* clr = (FontCollection*) hb_parptr( 1 );
   //delete (FontCollection*) clr;
   //hb_ret();
}

//HB_FUNC( GPFONTCOLLECTION... )
//{
//   FontCollection* ptr = (FontCollection*) hb_parptr( 1 );
//}

#pragma ENDDUMP




