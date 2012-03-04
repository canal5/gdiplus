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
         handle = C5_GPFontFamily()
         exit
      case 1
         handle = C5_GPFontFamily( aParams[ 1 ] )
         exit
      case 2
         handle = C5_GPFontFamily( aParams[ 1 ], aParams[ 2 ]:handle )
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

return C5GPFontFamilyClone( ::handle )


*******************************************************************************************
    METHOD GenericMonospace() CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGenericMonospace( ::handle )

*******************************************************************************************
    METHOD GenericSansSerif() CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGenericSansSerif( ::handle )

*******************************************************************************************
    METHOD GenericSerif() CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGenericSerif( ::handle )

*******************************************************************************************
    METHOD GetCellAscent( n ) CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGetCellAscent( ::handle, n )

*******************************************************************************************
    METHOD GetCellDescent( n ) CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGetCellDescent( ::handle, n )


*******************************************************************************************
    METHOD GetEmHeight( n ) CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGetEmHeight( ::handle, n )

*******************************************************************************************
    METHOD GetFamilyName( name, lang ) CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGetFamilyName( ::handle, @name, lang  )

*******************************************************************************************
    METHOD GetLastStatus() CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGetLastStatus( ::handle )

*******************************************************************************************
    METHOD GetLineSpacing( n ) CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyGetLineSpacing( ::handle, n )

*******************************************************************************************
    METHOD IsAvailable() CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyIsAvailable( ::handle )

*******************************************************************************************
    METHOD IsStyleAvailable( n ) CLASS GPFontFamily
*******************************************************************************************

return C5GPFontFamilyIsStyleAvailable( ::handle, n )

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

HB_FUNC( C5_GPFONTFAMILY )
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


HB_FUNC( C5GPFONTFAMILYCLONE ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      FontFamily * oClone;
      PHB_ITEM pClone;
      oClone = o->Clone();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_FONTFAMILY );
      hb_itemReturnRelease( pClone );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPFONTFAMILYGENERICMONOSPACE ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      FontFamily * oClone;
      PHB_ITEM pClone;
      oClone = ( FontFamily * ) o->GenericMonospace();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_FONTFAMILY );
      hb_itemReturnRelease( pClone );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPFONTFAMILYGENERICSANSSERIF ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      FontFamily * oClone;
      PHB_ITEM pClone;
      oClone = ( FontFamily * )o->GenericSansSerif();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_FONTFAMILY );
      hb_itemReturnRelease( pClone );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPFONTFAMILYGENERICSERIF ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      FontFamily * oClone;
      PHB_ITEM pClone;
      oClone = ( FontFamily * )o->GenericSerif();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_FONTFAMILY );
      hb_itemReturnRelease( pClone );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPFONTFAMILYGETCELLASCENT ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
   	  int style;
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      style = o->GetCellAscent( hb_parni( 2 ) );
      hb_retni( style );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPFONTFAMILYGETCELLDESCENT ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
   	  int style;
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      style = o->GetCellDescent( hb_parni( 2 ) );
      hb_retni( style );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPFONTFAMILYGETEMHEIGHT ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
   	  int style;
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      style = o->GetEmHeight( hb_parni( 2 ) );
      hb_retni( style );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPFONTFAMILYGETFAMILYNAME ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONTFAMILY( pObj ) )
   {
   	  int style;
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      WCHAR familyName[LF_FACESIZE];
      char * sOut;
      long lang = hb_parnl( 3 );
      sta = o->GetFamilyName( familyName, lang );
      sOut = hb_wctomb( familyName );
      hb_storvc( sOut, 2 );

      hb_retni( sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPFONTFAMILYGETLASTSTATUS  )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONTFAMILY( pObj ) )
   {
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      hb_retni( ( Status ) o->GetLastStatus() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}



HB_FUNC( C5GPFONTFAMILYGETLINESPACING ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
   	  int style;
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      style = o->GetLineSpacing( hb_parni( 2 ) );
      hb_retni( style );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPFONTFAMILYISAVAILABLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONTFAMILY( pObj ) )
   {
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      hb_retl( o->IsAvailable() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPFONTFAMILYISSTYLEAVAILABLE ){

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONTFAMILY( pObj ) )
   {
   	  int style;
      FontFamily * o = ( FontFamily * ) GP_GET( pObj );
      hb_retl( o->IsStyleAvailable( hb_parni( 2 ) ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


#pragma ENDDUMP



