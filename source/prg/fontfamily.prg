#include "fivewin.ch"

function FontFamily( ... )
   local aParams := hb_aparams()
   local oFont
   local nLen := Len( aParams )

   switch nLen
      case 0
         oFont = GPFontFamily():New()
         exit
      case 1
         oFont = GPFontFamily():New( aParams[ 1 ] )
         exit         
      case 2
         oFont = GPFontFamily():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oFont


CLASS GPFontFamily

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

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


ENDCLASS

*******************************************************************************************
  METHOD New( ... ) CLASS GPFontFamily
*******************************************************************************************
local iParams := PCount()
local handle 
local aParams := hb_aparams()

   switch iParams
      case 0
         handle = _GPFontFamily()
         exit
      case 1
         handle = _GPFontFamily( aParams[ 1 ] )
         exit
      case 2
         handle = _GPFontFamily( aParams[ 1 ], aParams[ 2 ]:handle )
        exit
   endswitch
   
   ::handle = handle
  
return self

*******************************************************************************************
  METHOD Destroy() CLASS GPFontFamily
*******************************************************************************************

  ::handle := nil

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
#include <gc.h>

HB_FUNC( _GPFONTFAMILY )
{
   FontFamily * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_FONTFAMILY );
   int iParams = hb_pcount();
   BOOL lOk = true;   
   
   switch( iParams ){
      case 0:
         o = new FontFamily();
         break;
      case 1:{         
            WCHAR* filename = hb_GDIPLUS_parw( 1 );
            o = new FontFamily( filename, NULL );
            hb_xfree( filename );
         }
         break;
      case 2:{
            GDIPLUS * pFont = hb_GDIPLUS_par( 2 );
            WCHAR* filename = hb_GDIPLUS_parw( 1 );                  
            if( ( lOk = GP_IS_FONTCOLLECTION( pFont ) ) ){
                FontCollection * font = ( FontCollection * ) GP_GET( pFont );
               o = new FontFamily( filename, font );            
            }            
            hb_xfree( filename );
         }
         break;
   }
   
   if( lOk )
   {
      GP_SET( pObj, ( void * ) o );
      hb_GDIPLUS_ret( pObj ); 
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}


#pragma ENDDUMP



