#include "fivewin.ch"


function Bitmap( ... )
   local aParams := hb_aparams()
   local oBmp
   local nLen := Len( aParams )

   switch nLen
      case 1
         oBmp = GPBitmap():New( aParams[ 1 ] )
         exit
      case 2
         oBmp = GPBitmap():New( aParams[ 1 ], aParams[ 2 ] )
        exit
      case 3
         oBmp = GPBitmap():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
        exit
      case 5
         oBmp = GPBitmap():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
        exit
   endswitch

return oBmp


CLASS GPBitmap FROM GPImage

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  // Constructores. Ver cuales sobrecargamos

  //Bitmap(BITMAPINFO*,VOID*)
  //Bitmap(HBITMAP,HPALETTE)
  //Bitmap(HICON)
  //Bitmap(HINSTANCE,WCHAR*)
  //Bitmap(IDirectDrawSurface7*)
  //Bitmap(INT,INT,Graphics*)
  //Bitmap(INT,INT,INT,PixelFormat,BYTE*)
  //Bitmap(INT,INT,PixelFormat)
  //Bitmap(IStream*,BOOL)
  //Bitmap(WCHAR*,BOOL)

  METHOD ApplyEffect()    INLINE Msginfo( "Not implemented" )
  METHOD ApplyEffect2()   INLINE Msginfo( "Not implemented" )
  METHOD Clone()
  METHOD ConvertFormat()  INLINE Msginfo( "Not implemented" )
  METHOD FromBITMAPINFO() INLINE Msginfo( "Not implemented" )
  METHOD FromDirectDrawSurface7() INLINE Msginfo( "Not implemented" )
  METHOD FromFile()
  METHOD FromHBITMAP()
  METHOD FromHICON()
  METHOD FromResource()
  METHOD FromStream()    INLINE Msginfo( "Not implemented" )
  METHOD GetHBITMAP()
  METHOD GetHICON()
  METHOD GetHistogram()     INLINE Msginfo( "Not implemented" )
  METHOD GetHistogramSize() INLINE Msginfo( "Not implemented" )
  METHOD GetPixel()
  METHOD LockBits()
  METHOD SetPixel()
  METHOD SetResolution()
  METHOD UnlockBits()


ENDCLASS

*********************************************************************************************************
  METHOD New( ... ) CLASS GPBitmap
*********************************************************************************************************

   local aParams := hb_aparams()
   local iParams := Len( aParams )

   switch iParams
      case 1
         ::handle = C5GPBitmap( aParams[ 1 ], .F. )
         exit
      case 2
//         if ValType( aParams[ 1 ] ) == "N"
//            aParams[ 1 ] = Long2Ptr( aParams[ 1 ] )
//         endif
//         if ValType( aParams[ 2 ] ) == "N"
//            aParams[ 2 ] = Long2Ptr( aParams[ 2 ] )
//         endif
         ::handle = C5GPBitmap( aParams[ 1 ], aParams[ 2 ] )
        exit
      case 3
         if ValType( aParams[ 3 ] ) == "O"
            ::handle = C5GPBitmap( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ]:handle )
         else
            ::handle = C5GPBitmap( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
         endif
        exit
      case 5
         ::handle = C5GPBitmap( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
        exit
   endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBitmap
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone( p1, p2, p3, p4, p5 ) CLASS GPBitmap
*********************************************************************************************************
   
   local oClone
   
   if ValType( p1 ) == "O"   
      oClone = C5GPBitmapClone( ::handle, p1:handle, p2 )
   else 
      oClone = C5GPBitmapClone( ::handle, p1, p2, p3, p4, p5 )
   endif

return oClone

*********************************************************************************************************
  METHOD FromFile( p1, p2 ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapFromFile( ::handle, p1, p2 )

*********************************************************************************************************
  METHOD FromHBITMAP( p1, p2 ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapFromHBitmap( ::handle, p1, p2 )

*********************************************************************************************************
  METHOD FromHICON() CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapFromHIcon( ::handle, p1 )

*********************************************************************************************************
  METHOD FromResource( p1, p2 ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapFromHIcon( ::handle, p1, p2 )

*********************************************************************************************************
  METHOD GetHBITMAP( oColor, hBitmap ) CLASS GPBitmap
*********************************************************************************************************
   
   if ValType( oColor ) == "O"
      oColor = oColor:handle 
   endif

return C5GPBitmapGetHBITMAP( ::handle, oColor, @hBitmap )

*********************************************************************************************************
  METHOD GetHICON( hIcon ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapGetHICON( ::handle, @hIcon)


*********************************************************************************************************
  METHOD GetPixel( x, y, color ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapGetPixel( ::handle, x, y, color:handle )


*********************************************************************************************************
  METHOD LockBits( rect, flag, format, oData ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapLockBits( ::handle, rect:handle, flag, format, oData:handle )

*********************************************************************************************************
  METHOD SetPixel( x, y, color ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapSetPixel( ::handle, x, y, color:handle )

*********************************************************************************************************
  METHOD SetResolution( x, y ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapSetResolution( ::handle, x, y )

*********************************************************************************************************
  METHOD UnlockBits( locked ) CLASS GPBitmap
*********************************************************************************************************

return C5GPBitmapUnlockBits( ::handle, locked:handle )





//Constructor                                      Description
//Bitmap::Bitmap(BITMAPINFO*,VOID*)                Creates a Bitmap::Bitmap object based on a BITMAPINFO structure and an array of pixel data.
//Bitmap::Bitmap(HBITMAP,HPALETTE)                 Creates a Bitmap::Bitmap object based on a handle to a Windows GDI bitmap and a handle to a GDI palette.
//Bitmap::Bitmap(HICON)                            Creates a Bitmap object based on an icon.
//Bitmap::Bitmap(HINSTANCE,WCHAR*)                 Creates a Bitmap::Bitmap object based on an application or DLL instance handle and the name of a bitmap resource.
//Bitmap::Bitmap(IDirectDrawSurface7*)             Creates a Bitmap::Bitmap object based on a DirectDraw surface. The Bitmap::Bitmap object maintains a reference to the DirectDraw surface until the Bitmap::Bitmap object is deleted or goes out of scope.
//Bitmap::Bitmap(INT,INT,Graphics*)                Creates a Bitmap::Bitmap object based on a Graphics object, a width, and a height.
//Bitmap::Bitmap(INT,INT,INT,PixelFormat,BYTE*)    Creates a Bitmap::Bitmap object based on an array of bytes along with size and format information.
//Bitmap::Bitmap(INT,INT,PixelFormat)              Creates a Bitmap::Bitmap object of a specified size and pixel format. The pixel data must be provided after the Bitmap::Bitmap object is constructed.
//Bitmap::Bitmap(IStream*,BOOL)                    Creates a Bitmap::Bitmap object based on an IStream COM interface.
//Bitmap::Bitmap(WCHAR*,BOOL)                      Creates a Bitmap::Bitmap object based on an image file.
//
//
//Methods
//
//The Bitmap class has the following methods.
//
//Method                                                          Description
//Bitmap::ApplyEffect(Bitmap**,INT,Effect*,RECT*,RECT*,Bitmap**)  The Bitmap::ApplyEffect method creates a new Bitmap object by applying a specified effect to an existing Bitmap object.
//Bitmap::ApplyEffect(Effect*,RECT*)                              The Bitmap::ApplyEffect method alters this Bitmap object by applying a specified effect.
//Bitmap::Clone(INT,INT,INT,INT,PixelFormat)                      The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::Clone(REAL,REAL,REAL,REAL,PixelFormat)                  The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::Clone(Rect&,PixelFormat)                                The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::Clone(RectF&,PixelFormat)                               The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::ConvertFormat                                           The Bitmap::ConvertFormat method converts a bitmap to a specified pixel format. The original pixel data in the bitmap is replaced by the new pixel data.
//Bitmap::FromBITMAPINFO                                          The Bitmap::FromBITMAPINFO method creates a Bitmap object based on a BITMAPINFO structure and an array of pixel data.
//Bitmap::FromDirectDrawSurface7                                  The Bitmap::FromDirectDrawSurface7 method creates a Bitmap object based on a DirectDraw surface. The Bitmap object maintains a reference to the DirectDraw surface until the Bitmap object is deleted.
//Bitmap::FromFile                                                The Bitmap::FromFile method creates a Bitmap object based on an image file.
//Bitmap::FromHBITMAP                                             The Bitmap::FromHBITMAP method creates a Bitmap object based on a handle to a Windows GDI bitmap and a handle to a GDI palette.
//Bitmap::FromHICON                                               The Bitmap::FromHICON method creates a Bitmap object based on a handle to an icon.
//Bitmap::FromResource                                            The Bitmap::FromResource method creates a Bitmap object based on an application or DLL instance handle and the name of a bitmap resource.
//Bitmap::FromStream                                              The Bitmap::FromStream method creates a Bitmap object based on a stream.
//Bitmap::GetHBITMAP                                              The Bitmap::GetHBITMAP method creates a GDI bitmap from this Bitmap object.
//Bitmap::GetHICON                                                The Bitmap::GetHICON method creates an icon from this Bitmap object.
//Bitmap::GetHistogram                                            The Bitmap::GetHistogram method returns one or more histograms for specified color channels of this Bitmap object.
//Bitmap::GetHistogramSize                                        The Bitmap::GetHistogramSize returns the number of elements (in an array of UINTs) that you must allocate before you call the Bitmap::GetHistogram method of a Bitmap object.
//Bitmap::GetPixel                                                The Bitmap::GetPixel method gets the color of a specified pixel in this bitmap.
//Bitmap::InitializePalette                                       The Bitmap::InitializePalette method initializes a standard, optimal, or custom color palette.
//Bitmap::LockBits                                                The Bitmap::LockBits method locks a rectangular portion of this bitmap and provides a temporary buffer that you can use to read or write pixel data in a specified format. Any pixel data that you write to the buffer is copied to the Bitmap object when you call Bitmap::UnlockBits.
//Bitmap::SetPixel                                                The Bitmap::SetPixel method sets the color of a specified pixel in this bitmap.
//Bitmap::SetResolution                                           The Bitmap::SetResolution method sets the resolution of this Bitmap object.
//Bitmap::UnlockBits                                              The Bitmap::UnlockBits method unlocks a portion of this bitmap that was previously locked by a call to Bitmap::LockBits.


#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( C5GPBITMAP )
{
   Bitmap * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_BITMAP );
   int iParams = hb_pcount();
   BOOL lOk = true;

   switch (iParams){
   	  case 1:
   	     o = new Bitmap( ( HICON ) hb_parptr( 1 ) ); //HICON
   	     break;
      case 2:{
      	 void * p1 = hb_parptr( 1 );      	 
         if( GetObjectType( ( HGDIOBJ ) p1 ) && ! HB_ISCHAR( 2 ) ){
         	void * p2 = hb_parptr( 2 );
            o = new Bitmap( ( HBITMAP ) p1, ( HPALETTE ) p2 ); //HBITMAP, HPALETTE
         }
         else if( HB_ISCHAR( 2 ) ){
         	  WCHAR * p2 = hb_GDIPLUS_parw( 2 );
            o = new Bitmap( ( HINSTANCE ) p1, p2 ); //HINSTANCE, WCHAR
            hb_xfree( p2 );
         }else if( HB_ISCHAR( 1 ) ){
            WCHAR * p1 = hb_GDIPLUS_parw( 1 );
            o = new Bitmap( p1, hb_parl( 2 ) ); //HINSTANCE, WCHAR
            hb_xfree( p1 );         	         	
         }else if( HB_ISNUM( 1 ) ){
            o = new Bitmap( hb_parni( 1 ), hb_parni( 2 ) );         
         }else
            lOk = false;
         
      }
      break;
      case 3:
      {
      	 if( HB_ISPOINTER( 3 ) ){
      	    GDIPLUS * pGrap = hb_GDIPLUS_par( 3 );
      	    Graphics * g = ( Graphics * ) GP_GET( pGrap );
            o = new Bitmap( hb_parni( 1 ), hb_parni( 2 ), g );
         }else
            o = new Bitmap( hb_parni( 1 ), hb_parni( 2 ), ( PixelFormat ) hb_parni( 3 ) );
      }
   }
   
   if( lOk ){
      GP_SET( pObj, o );
      hb_GDIPLUS_ret( pObj );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
}



HB_FUNC( C5GPBITMAPCLONE )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      int iParams = hb_pcount();
      BOOL lOk = true;
      Bitmap * oClone;

      if( iParams == 3 ){
         GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
         void * rect = GP_GET( p2 );
         if( GP_IS_RECT( p2 ) ){
             oClone = o->Clone( *( ( Rect * ) rect ), ( PixelFormat ) hb_parni( 3 ) );
         }else if( GP_IS_RECTF( p2 ) ){
         	   oClone = o->Clone( *( ( RectF * ) rect ), ( PixelFormat ) hb_parni( 3 ) );
         }else 
            lOk = false;
      }else {
         if( HB_ISDOUBLE( 2 ) ){
         	   oClone = o->Clone( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( PixelFormat ) hb_parni( 6 ) );         	
         }else{
         	  oClone = o->Clone( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), ( PixelFormat ) hb_parni( 6 ) );
         }      	
      }
      
      if( lOk ){
         PHB_ITEM pClone = GPNewGDIPLUSObject( oClone, GP_IT_BITMAP );
         hb_itemReturnRelease( pClone ); 
      }else
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );      
         
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPBITMAPFROMFILE )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_BITMAP( p ) && HB_ISCHAR( 2 ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      Bitmap * o2;
      WCHAR * file = hb_GDIPLUS_parw( 2 );
      PHB_ITEM pClone;
      o2 = o->FromFile( file, hb_parl( 3 ) );
      
      pClone = GPNewGDIPLUSObject( o2, GP_IT_BITMAP );
      hb_itemReturnRelease( pClone ); 
      
      hb_xfree( file );
    
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPFROMHBITMAP )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   void * p1 = hb_parptr( 2 );      	 
   if( GP_IS_BITMAP( p ) && GetObjectType( ( HGDIOBJ ) p1 ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      Bitmap * o2;
      PHB_ITEM pClone;      
      o2 = o->FromHBITMAP( ( HBITMAP ) p1, ( HPALETTE ) hb_parptr( 3 ) );      
      pClone = GPNewGDIPLUSObject( o2, GP_IT_BITMAP );
      hb_itemReturnRelease( pClone ); 
    
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPFROMHICON )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   void * p1 = hb_parptr( 2 );      	 
   if( GP_IS_BITMAP( p ) && GetObjectType( ( HGDIOBJ ) p1 ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      Bitmap * o2;
      PHB_ITEM pClone;      
      o2 = o->FromHICON( ( HICON ) p1 );      
      pClone = GPNewGDIPLUSObject( o2, GP_IT_BITMAP );
      hb_itemReturnRelease( pClone ); 
    
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPFROMRESOURCE )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );   
   void * p1 = hb_parptr( 2 );
   if( GP_IS_BITMAP( p ) && HB_ISPOINTER( 2 ) && HB_ISCHAR( 3 ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      Bitmap * o2;
      PHB_ITEM pClone;      
      WCHAR * cName = hb_GDIPLUS_parw( 3 );
      HINSTANCE hInst = ( HINSTANCE ) p1;
      o2 = o->FromResource( hInst, cName );
      hb_xfree( cName );
      pClone = GPNewGDIPLUSObject( o2, GP_IT_BITMAP );
      hb_itemReturnRelease( pClone ); 
    
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPBITMAPGETHBITMAP )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_BITMAP( p ) ){   
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      HBITMAP hOut;
      Status sta;
      if( HB_ISPOINTER( 2 ) ){
         GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
         Color * oColor = ( Color * ) GP_GET( p2 );
         sta = o->GetHBITMAP( *oColor, &hOut );
      }else{
         sta = o->GetHBITMAP( 0, &hOut );
      }
      hb_retptr( ( void * ) hOut );      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPBITMAPGETHICON )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      HICON hOut;
      o->GetHICON( &hOut );
      hb_retptr( ( void * ) hOut );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPGETHISTOGRAMSIZE )
{

//   GDIPLUS * p = hb_GDIPLUS_par( 1 );
//   if( GP_IS_BITMAP( p ) ){
//      Bitmap * o = ( Bitmap * ) GP_GET( p );
//      HistogramFormat format = ( HistogramFormat ) hb_parni( 2 );
//      UNIT NumberOfEntries;
//      Status sta;
//      sta = o->GetHistogramSize( format, &NumberOfEntries );
//      hb_storvni( NumberOfEntries, 3 );
//      hb_retni( ( int ) sta );
//
//   }else
//     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPBITMAPGETPIXEL )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      int x = hb_parni( 2 );
      int y = hb_parni( 3 );
      Color * c = ( Color * ) GP_GET( p4 );
      Status sta;
      
      sta = o->GetPixel( x, y, c );
      
      hb_retni( ( int ) sta );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPBITMAPSETPIXEL )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      int x = hb_parni( 2 );
      int y = hb_parni( 3 );
      Color * c = ( Color * ) GP_GET( p4 );
      Status sta;
      
      sta = o->SetPixel( x, y, *c );
      
      hb_retni( ( int ) sta );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPLOCKBITS )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   GDIPLUS * p5 = hb_GDIPLUS_par( 5 );
   if( GP_IS_BITMAP( p ) && GP_IS_RECT( p2 ) && GP_IS_BITMAPDATA( p5 ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      Rect * r = ( Rect * ) GP_GET( p2 );
      BitmapData * locked = ( BitmapData * ) GP_GET( p5 );
      UINT flag = ( UINT ) hb_parni( 3 );
      PixelFormat format = ( PixelFormat ) hb_parni( 4 );
      Status sta;
      
      sta = o->LockBits( r, flag, format, locked );
      
      hb_retni( ( int ) sta );      

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPUNLOCKBITS )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      BitmapData * locked = ( BitmapData * ) GP_GET( p2 );
      Status sta;
      sta = o->UnlockBits( locked );
      
      hb_retni( ( int ) sta );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPBITMAPSETRESOLUTION )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );   
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );
      int x = hb_parni( 2 );
      int y = hb_parni( 3 );
      Status sta;
      sta = o->SetResolution( x, y );
      
      hb_retni( ( int ) sta );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


//HB_FUNC( C5XXX ){
//   HDC hdc = ( HDC ) hb_parnl( 1 );
//   Example_GetPixel( hdc );
//}



/*
HB_FUNC( C5GPBITMAP... )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_BITMAP( p ) ){
      Bitmap * o = ( Bitmap * ) GP_GET( p );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}
*/



//How to Create a Gdiplus::Bitmap from an HBITMAP, retaining the alpha channel information?
//Gdiplus::Status HBitmapToBitmap( HBITMAP source, Gdiplus::PixelFormat pixel_format, Gdiplus::Bitmap** result_out )
//{
//  BITMAP source_info = { 0 };
//  if( !::GetObject( source, sizeof( source_info ), &source_info ) )
//    return Gdiplus::GenericError;
//
//  Gdiplus::Status s;
//
//  std::auto_ptr< Gdiplus::Bitmap > target( new Gdiplus::Bitmap( source_info.bmWidth, source_info.bmHeight, pixel_format ) );
//  if( !target.get() )
//    return Gdiplus::OutOfMemory;
//  if( ( s = target->GetLastStatus() ) != Gdiplus::Ok )
//    return s;
//
//  Gdiplus::BitmapData target_info;
//  Gdiplus::Rect rect( 0, 0, source_info.bmWidth, source_info.bmHeight );
//
//  s = target->LockBits( &rect, Gdiplus::ImageLockModeWrite, pixel_format, &target_info );
//  if( s != Gdiplus::Ok )
//    return s;
//
//  if( target_info.Stride != source_info.bmWidthBytes )
//    return Gdiplus::InvalidParameter; // pixel_format is wrong!
//
//  CopyMemory( target_info.Scan0, source_info.bmBits, source_info.bmWidthBytes * source_info.bmHeight );
//
//  s = target->UnlockBits( &target_info );
//  if( s != Gdiplus::Ok )
//    return s;
//
//  *result_out = target.release();
//
//  return Gdiplus::Ok;
//}

#pragma ENDDUMP


