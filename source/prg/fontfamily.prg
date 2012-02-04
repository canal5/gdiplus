#include "fivewin.ch"

Function FontFamily(); return GPFontFamily():New()

CLASS GPFontFamily

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Clone()
  METHOD GenericMonospace()
  METHOD GenericSansSerif()
  METHOD GenericSerif()
  METHOD GetCellAscent()
  METHOD GetCellDescent()
  METHOD GetEmHeight()
  METHOD GetFamilyName()
  METHOD GetLastStatus()
  METHOD GetLineSpacing()
  METHOD IsAvailable()
  METHOD IsStyleAvailable()

  METHOD Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*******************************************************************************************
  METHOD New() CLASS GPFontFamily
*******************************************************************************************
local iParams := PCount()


  if iParams == 0
     ::handle := _GPFontFamily()
  elseif iParams == 1
     ::handle := _GPFontFamily( p1 )                               //
  elseif iParams == 3
     ::handle := _GPFontFamily( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPFontFamily( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPFontFamily( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPFontFamily( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPFontFamily( p1, p2, p3, p4, p5, p6, p7 )       //
  endif
return self

*******************************************************************************************
  METHOD Destroy() CLASS GPFontFamily
*******************************************************************************************

  if !empty(::handle)
     DeleteFontFamily( ::handle )
  endif

return self


*******************************************************************************************
   METHOD Clone() CLASS GPFontFamily
*******************************************************************************************

return self


*******************************************************************************************
    METHOD GenericMonospace() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GenericSansSerif() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GenericSerif() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GetCellAscent() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GetCellDescent() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GetEmHeight() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GetFamilyName() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GetLastStatus() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD GetLineSpacing() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD IsAvailable() CLASS GPFontFamily
*******************************************************************************************

return self

*******************************************************************************************
    METHOD IsStyleAvailable() CLASS GPFontFamily
*******************************************************************************************

return self

//Constructors
//
//The FontFamily class has the following constructors.
//
//Constructor                                                Description
//FontFamily::FontFamily()                                   Creates an empty FontFamily::FontFamily object.
//FontFamily::FontFamily(WCHAR*,FontCollection*)             Creates a FontFamily::FontFamily object based on a specified font family.
//
//
//Methods
//
//The FontFamily class has the following methods.
//
//Method                                                     Description
//FontFamily::Clone                                          The FontFamily::Clone method creates a new FontFamily object based on this FontFamily object.
//FontFamily::GenericMonospace                               The FontFamily::GenericMonospace method gets a FontFamily object that specifies a generic monospace typeface.
//FontFamily::GenericSansSerif                               The FontFamily::GenericSansSerif method gets a FontFamily object that specifies a generic sans serif typeface.
//FontFamily::GenericSerif                                   The FontFamily::GenericSerif method gets a FontFamily object that represents a generic serif typeface.
//FontFamily::GetCellAscent                                  The FontFamily::GetCellAscent method gets the cell ascent, in design units, of this font family for the specified style or style combination.
//FontFamily::GetCellDescent                                 The FontFamily::GetCellDescent method gets the cell descent, in design units, of this font family for the specified style or style combination.
//FontFamily::GetEmHeight                                    The FontFamily::GetEmHeight method gets the size (commonly called em size or em height), in design units, of this font family.
//FontFamily::GetFamilyName                                  The FontFamily::GetFamilyName method gets the name of this font family.
//FontFamily::GetLastStatus                                  The FontFamily::GetLastStatus method returns a value that indicates the nature of this FontFamily object's most recent method failure.
//FontFamily::GetLineSpacing                                 The FontFamily::GetLineSpacing method gets the line spacing, in design units, of this font family for the specified style or style combination. The line spacing is the vertical distance between the base lines of two consecutive lines of text.
//FontFamily::IsAvailable                                    The FontFamily::IsAvailable method determines whether this FontFamily object was created successfully.
//FontFamily::IsStyleAvailable                               The FontFamily::IsStyleAvailable method determines whether the specified style is available for this font family.
//
//



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;


HB_FUNC( _GPFONTFAMILY )
{
   //FontFamily* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new FontFamily();
   //else if (iParams == 1 )
   //    ptr = new FontFamily( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new FontFamily( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new FontFamily( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEFONTFAMILY )
{
   //FontFamily* clr = (FontFamily*) hb_parptr( 1 );
   //delete (FontFamily*) clr;
   //hb_ret();
}

//HB_FUNC( GPFontFamily... )
//{
//   FontFamily* ptr = (FontFamily*) hb_parptr( 1 );
//}






#pragma ENDDUMP



