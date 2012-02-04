#include "fivewin.ch"

function Font( cFaceName, nHeight)
return GPFont():New( cFaceName )


CLASS GPFont

  DATA handle

  METHOD New( cFaceName, nHeight ) CONSTRUCTOR
  METHOD     Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New( cFaceName, nHeight ) CLASS GPFont
*********************************************************************************************************

  ::handle := _GPFont( cFaceName, nHeight )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPFont
*********************************************************************************************************

  if !empty(::handle)
     GPDeleteFont( ::handle )
  endif

return nil


//Constructors
//
//The Font class has the following constructors.
//
//Constructor                                            Description
//Font::Font(FontFamily*,REAL,INT,Unit)                  Creates a Font::Font object based on a FontFamily object, a size, a font style, and a unit of measurement.
//Font::Font(HDC)                                        Creates a Font::Font object based on the GDI font object that is currently selected into a specified device context. This constructor is provided for compatibility with GDI.
//Font::Font(HDC,HFONT)                                  Creates a Font::Font object indirectly from a GDI logical font by using a handle to a GDI LOGFONT structure.
//Font::Font(HDC,LOGFONTA*)                              Creates a Font::Font object directly from a GDI logical font. The GDI logical font is a LOGFONTA structure, which is the one-byte character version of a logical font. This constructor is provided for compatibility with GDI.
//Font::Font(HDC,LOGFONTW*)                              Creates a Font::Font object directly from a GDI logical font. The GDI logical font is a LOGFONTW structure, which is the wide character version of a logical font. This constructor is provided for compatibility with GDI.
//Font::Font(WCHAR*,REAL,INT,Unit,FontCollection*)       Creates a Font::Font object based on a font family, a size, a font style, a unit of measurement, and a FontCollection object.
//
//
//Methods
//
//The Font class has the following methods.
//
//Method                                                 Description
//Font::Clone                                            The Font::Clone method creates a new Font object based on this Font object.
//Font::GetFamily                                        The Font::GetFamily method gets the font family on which this font is based.
//Font::GetHeight(Graphics*)                             The Font::GetHeight method gets the line spacing of this font in the current unit of a specified Graphics object. The line spacing is the vertical distance between the base lines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.
//Font::GetHeight(REAL)                                  The Font::GetHeight method gets the line spacing, in pixels, of this font. The line spacing is the vertical distance between the base lines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.
//Font::GetLastStatus                                    The Font::GetLastStatus method returns a value that indicates the nature of this Font object's most recent method failure.
//Font::GetLogFontA                                      The Font::GetLogFontA method uses a LOGFONTA structure to get the attributes of this Font object.
//Font::GetLogFontW                                      The Font::GetLogFontW method uses a LOGFONTW structure to get the attributes of this Font object.
//Font::GetSize                                          The Font::GetSize method returns the font size (commonly called the em size) of this Font object. The size is in the units of this Font object.
//Font::GetStyle                                         The Font::GetStyle method gets the style of this font's typeface.
//Font::GetUnit                                          The Font::GetUnit method returns the unit of measure of this Font object.
//Font::IsAvailable                                      The Font::IsAvailable method determines whether this Font object was created successfully.




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPFONT )
{
   LPWSTR cFaceName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   Font* f = new Font( cFaceName, hb_parni( 2 ) );
   hb_xfree( cFaceName );
   hb_retptr( (void*) f );

}

HB_FUNC( GPDELETEFONT )
{
   Font* f = (Font*) hb_parptr( 1 );
   delete (Font*) f;
   hb_ret();
}

#pragma ENDDUMP




