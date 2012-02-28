#include "fivewin.ch"

function Font( ... )
   local aParams := hb_aparams()
   local oFont
   local nLen := Len( aParams )

   switch nLen
      case 1
         oFont = GPFont():New( aParams[ 1 ] )
         exit         
      case 2
         oFont = GPFont():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 3
         oFont = GPFont():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
         exit
      case 4
         if ValType( aParams[ 1 ] ) == "O"
            oFont = GPFont():New( aParams[ 1 ]:handle, aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
         else 
            oFont = GPFont():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
         endif
         exit                  
      case 5
         oFont = GPFont():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
         exit                           
   endswitch

return oFont


CLASS GPFont

  DATA handle

  METHOD New( cFaceName, nHeight ) CONSTRUCTOR
  METHOD     Destroy()
  DESTRUCTOR Destroy()

// Constructores

// Font(FontFamily*,REAL,INT,Unit)
// Font::Font(HDC)
// Font::Font(HDC,HFONT)
// Font::Font(HDC,LOGFONTA*)
// Font::Font(HDC,LOGFONTW*)
// Font::Font(WCHAR*,REAL,INT,Unit,FontCollection*)

  METHOD Clone()
  METHOD GetFamily()
  METHOD GetHeight()
  METHOD GetLastStatus()
  METHOD GetLogFontA()
  METHOD GetLogFontW()
  METHOD GetSize()
  METHOD GetStyle()
  METHOD GetUnit()
  METHOD IsAvailable()


ENDCLASS

*********************************************************************************************************
  METHOD New( ... ) CLASS GPFont
*********************************************************************************************************
local iParams := PCount()
local handle 
local aParams := hb_aparams()

   switch iParams
      case 1
         handle = _GPFont( aParams[ 1 ] )
         exit
      case 2
         if( ValType( aParams[ 1 ] ) == "O" )
            handle = _GPFont( aParams[ 1 ]:handle, aParams[ 2 ] )
         else 
            handle = _GPFont( aParams[ 1 ], aParams[ 2 ] )
         endif
         exit
      case 3
         handle = _GPFont( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
         exit
      case 4
         handle = _GPFont( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
         exit
      case 5
         handle = _GPFont( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
         exit                                    
   endswitch
   
   ::handle = handle
  
return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPFont
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone() CLASS GPFont
*********************************************************************************************************

return GPFontClone( ::handle )

*********************************************************************************************************
  METHOD GetFamily( oFontFamily  ) CLASS GPFont
*********************************************************************************************************

return GPFontGetFamily( ::handle, @oFontFamily )

*********************************************************************************************************
  METHOD GetHeight( A ) CLASS GPFont
*********************************************************************************************************
   local nHeight

   if valType( A ) == "O"
      nHeight = GPFontGetHeight( ::handle, A:handle )
   else 
      nHeight = GPFontGetHeight( ::handle, A )
   endif

return nHeight


*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPFont
*********************************************************************************************************

return GPFontGetLastStatus( ::handle )

*********************************************************************************************************
  METHOD GetLogFontA( oGrap, oLog ) CLASS GPFont
*********************************************************************************************************
 
return GPFontGetLogFontA( ::handle, oGrap:handle, @oLog )

*********************************************************************************************************
  METHOD GetLogFontW( oGrap, oLog ) CLASS GPFont
*********************************************************************************************************

return GPFontGetLogFontW( ::handle, oGrap:handle, @oLog )

*********************************************************************************************************
  METHOD GetSize() CLASS GPFont
*********************************************************************************************************

return  GPFontGetSize( ::handle )

*********************************************************************************************************
  METHOD GetStyle() CLASS GPFont
*********************************************************************************************************

return GPFontGetStyle( ::handle )

*********************************************************************************************************
  METHOD GetUnit() CLASS GPFont
*********************************************************************************************************

return GPFontGetUnit( ::handle )

*********************************************************************************************************
  METHOD IsAvailable() CLASS GPFont
*********************************************************************************************************

return GPFontIsAvailable( ::handle )


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
#include <gc.h>
#include <hbapiitm.h>

HB_FUNC( _GPFONT )
{
   Font * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_FONT );
   int iParams = hb_pcount();
   BOOL lOk = true;   
   
   switch( iParams ){
      case 1:
         o = new Font( ( HDC ) hb_parnl( 1 ) );
         break;
         
      case 2:
         if( HB_ISPOINTER( 1 ) ){
            GDIPLUS * pFont = hb_GDIPLUS_par( 1 );
            lOk = GP_IS_FONTFAMILY( pFont );
            if( lOk ){
               FontFamily * font = ( FontFamily * ) GP_GET( pFont );
               o = new Font( font, ( REAL ) hb_parnd( 2 ) );
            }   
         }else if( HB_ISCHAR( 1 ) ){
            WCHAR * filename = hb_GDIPLUS_parw( 1 );
            o = new Font( filename, ( REAL ) hb_parnd( 2 ) );
            hb_xfree( filename );
         }else if( HB_ISNUM( 1 ) ){
            if( GetObjectType( ( HGDIOBJ ) hb_parnl( 2 ) ) )
               o = new Font( ( HDC ) hb_parnl( 1 ), ( HFONT ) hb_parnl( 2 ) );
            else if( HB_ISPOINTER( 2 ) ){
               GDIPLUS * log = hb_GDIPLUS_par( 2 );
               if( GP_IS_LOGFONTA( log ) ){                
                  LOGFONTA * pLog = ( LOGFONTA * ) GP_GET( log );
                  o = new Font( ( HDC ) hb_parnl( 1 ), pLog );
               }else {
                  LOGFONTW * pLog = ( LOGFONTW * ) GP_GET( log );
                  o = new Font( ( HDC ) hb_parnl( 1 ), pLog );               
               }
            }
         }else{
            lOk = false;
            }
            
         break;

      case 3:
         if( HB_ISPOINTER( 1 ) ){
            GDIPLUS * pFont = hb_GDIPLUS_par( 1 );
             lOk = GP_IS_FONTFAMILY( pFont );
            if( lOk ){
               FontFamily * font = ( FontFamily * ) GP_GET( pFont );
               o = new Font( font, ( REAL ) hb_parnd( 2 ), hb_parni( 3 ) );
            }   
         }else if( HB_ISCHAR( 1 ) ){
            WCHAR * filename = hb_GDIPLUS_parw( 1 );
            o = new Font( filename, ( REAL ) hb_parnd( 2 ), hb_parni( 3 ) );
            hb_xfree( filename );       
         }else 
            lOk = false;
         break;
      case 4:{
         if( HB_ISPOINTER( 1 ) ){
            GDIPLUS * pFont = hb_GDIPLUS_par( 1 );
            lOk = GP_IS_FONTFAMILY( pFont );
            if( lOk ){
               FontFamily * font = ( FontFamily * ) GP_GET( pFont );
               o = new Font( font, ( REAL ) hb_parnd( 2 ) );
            }   
         }else if( HB_ISCHAR( 1 ) ){
            WCHAR * filename = hb_GDIPLUS_parw( 1 );
            o = new Font( filename, ( REAL ) hb_parnd( 2 ), hb_parni( 3 ), ( Unit ) hb_parni( 4 ) );
            hb_xfree( filename );       
         }else
            lOk = false;
         break;   
      case 5:
         WCHAR * filename = hb_GDIPLUS_parw( 1 );
         GDIPLUS * pFont = hb_GDIPLUS_par( 5 );
         lOk = GP_IS_FONTCOLLECTION( pFont );
         if( lOk ){
            FontCollection * font = ( FontCollection * ) GP_GET( pFont );
            o = new Font( filename, ( REAL ) hb_parnd( 2 ), hb_parni( 3 ), ( Unit ) hb_parni( 4 ), font );
         }                       
         hb_xfree( filename );              
      }
   }

   if( lOk )
   {
      GP_SET( pObj, ( void * ) o );
      hb_GDIPLUS_ret( pObj ); 
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( GPFONTCLONE ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      Font * oClone;
      PHB_ITEM pClone;
      oClone = o->Clone();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_FONT );
      hb_itemReturnRelease( pClone );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}

HB_FUNC( GPFONTGETFAMILY ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      FontFamily fontFamily;
      PHB_ITEM pFont;
      sta = o->GetFamily( &fontFamily );
      pFont  = GPNewGDIPLUSObject( &fontFamily, GP_IT_FONTFAMILY );
      GDIPLUS_StoreParam( 2, pFont );
      hb_retni( ( Status ) sta );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}


HB_FUNC( GPFONTGETHEIGHT ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      REAL height;
      if( HB_ISNUM( 2 ) ){
         height = o->GetHeight( ( REAL ) hb_parnd( 2 ) );       
      }else{
         GDIPLUS * p = hb_GDIPLUS_par( 2 );
         if( GP_IS_GRAPHICS( p ) ){
            Graphics * g = ( Graphics * ) GP_GET( p );
            height = o->GetHeight( g );
         }
      }
      hb_retnd( ( double ) height );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}

HB_FUNC( GPFONTGETLASTSTATUS  )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      hb_retni( ( Status ) o->GetLastStatus() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPFONTGETLOGFONTA ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * p = hb_GDIPLUS_par( 2 );
   Status sta;
   if( GP_IS_GRAPHICS( p ) && GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      Graphics * g = ( Graphics * ) GP_GET( p );
      GDIPLUS * pLog =  gdiplus_new( GP_IT_LOGFONTA );
      LOGFONTA log;
      PHB_ITEM pRet = hb_itemNew( NULL );
      sta = o->GetLogFontA( g, &log );
      pLog->pObject = hb_xgrab( sizeof( LOGFONTA ) );
      memcpy( pLog->pObject, &log, sizeof( LOGFONTA ) );
      GDIPLUSItemPut( pRet, pLog );
      GDIPLUS_StoreParam( 3, pRet );
      hb_retni( ( Status ) sta );

   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}


HB_FUNC( GPFONTGETLOGFONTW ){
  
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * p = hb_GDIPLUS_par( 2 );
   Status sta;
   if( GP_IS_GRAPHICS( p ) && GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      Graphics * g = ( Graphics * ) GP_GET( p );
      GDIPLUS * pLog =  gdiplus_new( GP_IT_LOGFONTW );
      LOGFONTW log;
      PHB_ITEM pRet = hb_itemNew( NULL );
      sta = o->GetLogFontW( g, &log );
      pLog->pObject = hb_xgrab( sizeof( LOGFONTW ) );
      memcpy( pLog->pObject, &log, sizeof( LOGFONTW ) );
      GDIPLUSItemPut( pRet, pLog );
      GDIPLUS_StoreParam( 3, pRet );
      hb_retni( ( Status ) sta );

   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}

HB_FUNC( GPFONTGETSIZE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      hb_retnd( ( double ) o->GetSize() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPFONTGETSTYLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      hb_retni( o->GetStyle() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPFONTGETUNIT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      hb_retni( ( Unit ) o->GetUnit() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPFONTISAVAILABLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONT( pObj ) )
   {
      Font * o = ( Font * ) GP_GET( pObj );
      hb_retl( o->IsAvailable() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}



#pragma ENDDUMP




