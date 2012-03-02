#include <gc.h>
#include <hbapicls.h>
#include <hbvm.h>
#include <hbstack.h>

typedef struct s_GPNEWOBJ{
   char s_class[ 63 ];
   char s_funcConst[ 63 ];
   int i_type;
   long l_size;
} GPNEWOBJ, *PGPNEWOBJ, *PTR_GPNEWOBJ;

static const GPNEWOBJ _newo[] = {
   { NULL, NULL, NULL },
   { "GPGRAPHICS"               ,"GRAPHICS"               , GP_IT_GRAPHICS                , sizeof( Graphics ) },
   { "GPRECTF"                  ,"RECTF"                  , GP_IT_RECTF                   , sizeof( RectF ) },
   { "GPRECT"                   ,"RECT"                   , GP_IT_RECT                    , sizeof( Rect ) },
   { "GPIMAGE"                  ,"IMAGE"                  , GP_IT_IMAGE                   , sizeof( Image ) },
   { "GPCOLOR"                  ,"COLOR"                  , GP_IT_COLOR                   , sizeof( Color ) },
   { "GPSOLIDBRUSH"             ,"SOLIDBRUSH"             , GP_IT_SOLIDBRUSH              , sizeof( SolidBrush ) },
   { "GPPEN"                    ,"PEN"                    , GP_IT_PEN                     , sizeof( Pen ) },
   { "GPPOINT"                  ,"POINT"                  , GP_IT_POINT                   , sizeof( Point ) },
   { "GPPOINTF"                 ,"POINTF"                 , GP_IT_POINTF                  , sizeof( PointF ) },
   { "GPSIZE"                   ,"SIZE"                   , GP_IT_SIZE                    , sizeof( Size ) },
   { "GPSIZEF"                  ,"SIZEF"                  , GP_IT_SIZEF                   , sizeof( SizeF ) },
   { "GPMATRIX"                 ,"MATRIX"                 , GP_IT_MATRIX                  , sizeof( Matrix ) } ,
   { "GPGRAPHICSPATH"           ,"GRAPHICSPATH"           , GP_IT_GRAPHICSPATH            , sizeof( GraphicsPath ) },
   { "GPBITMAP"                 ,"BITMAP"                 , GP_IT_BITMAP                  , sizeof( Bitmap ) },
   { "GPINSTALLEDFONTCOLLECTION","INSTALLEDFONTCOLLECTION", GP_IT_INSTALLEDFONTCOLLECTION , sizeof( InstalledFontCollection ) },
   { "GPPRIVATEFONTCOLLECTION"  ,"PRIVATEFONTCOLLECTION"  , GP_IT_PRIVATEFONTCOLLECTION   , sizeof( PrivateFontCollection ) },
   { "GPFONTCOLLECTION"         ,"FONTCOLLECTION"         , GP_IT_FONTCOLLECTION          , sizeof( FontCollection ) },
   { "GPFONTFAMILY"             ,"FONTFAMILY"             , GP_IT_FONTFAMILY              , sizeof( FontFamily ) },
   { "GPFONT"                   ,"FONT"                   , GP_IT_FONT                    , sizeof( Font )  },
   { ""                         ,""                       , GP_IT_LOGFONTA                , sizeof( LOGFONTA ) },
   { ""                         ,""                       , GP_IT_LOGFONTW                , sizeof( LOGFONTW ) },   
   { "GPSTRINGFORMAT"           ,"STRINGFORMAT"           , GP_IT_STRINGFORMAT            , sizeof( StringFormat ) },
   { "GPCHARACTERRANGE"         ,"CHARACTERRANGE"         , GP_IT_CHARACTERRANGE          , sizeof( CharacterRange ) },
   { "GPREGION"                 ,"REGION"                 , GP_IT_REGION                  , sizeof( Region ) },
   { ""                         ,""                       , GP_IT_REGIONDATA              , sizeof( BYTE ) },
   { "GPLINEARGRADIENTBRUSH"    ,"LINEARGRADIENTBRUSH"    , GP_IT_LINEARGRADIENTBRUSH     , sizeof( LinearGradientBrush ) }
};



void Traza( char * c )
{
   MessageBox( 0, c, "TRAZA", 0 );
}

void TrazaL( long l )
{
   MessageBox( 0, LToStr( l ), "TRAZALONG", 0 );
}

HB_FUNC( GETGDIPLUSHANDLE )
{
  GDIPLUS * o = ( GDIPLUS * ) hb_parptr( 1 );
  hb_GDIPLUS_ret( o );
}

PHB_ITEM GPNewGDIPLUSObject( void * c, int iType ){


   PHB_ITEM pitem;
   GDIPLUS * p = gdiplus_new( _newo[ iType ].i_type ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
   void * pOut = hb_xgrab( _newo[ iType ].l_size );//operator new( _newo[ iType ].l_size );
   
   hb_xmemcpy( pOut, c, _newo[ iType ].l_size );

   pitem = hb_itemDoC( _newo[ iType ].s_class, 0 );
   
   GP_SET( p, pOut );
   
   GDIPLUSItemPut( pHandle, p );

   hb_objSendMsg( pitem, "_HANDLE", 1, pHandle );
   
   hb_itemRelease( pHandle );

   return pitem;  
  
}


PHB_ITEM GPCreateObjectToFill( void ** uPtr, int iType ){


   PHB_ITEM pitem;
   GDIPLUS * ptr;
   
   pitem = hb_itemDoC( _newo[ iType ].s_funcConst, 0 );
   
   hb_objSendMsg( pitem, "HANDLE", 0 );
   ptr = hb_GDIPLUS_par( -1 );   
   *uPtr = ( void * ) ptr->pObject;
   
   return pitem;  
  
}

void GPSendHandleToObject( PHB_ITEM pitem, void * c, int iType ){

   GDIPLUS * p = gdiplus_new( _newo[ iType ].i_type ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
   void * pOut = operator new( _newo[ iType ].l_size );
   
   memcpy( pOut, c, _newo[ iType ].l_size );

   GP_SET( p, pOut );

   GDIPLUSItemPut( pHandle, p );
   
   hb_objSendMsg( pitem, "_HANDLE", 1, pHandle );

   hb_itemRelease( pHandle );
   
   return;  
}

void * ConvertArray2Point( PHB_ITEM aPoint, BOOL * l )
{
  
   int n;
   int iLen = hb_arrayLen( aPoint );
   Point * pPoint;
   PointF * pPointF;
   BOOL lF = false;
   void * pVoid;
     
   for( n = 0; n < iLen; n++ ){
     
     PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );
     GDIPLUS * ptrPoint;
     hb_objSendMsg( pItem, "HANDLE", 0 );
     ptrPoint = hb_GDIPLUS_par( -1 );
   
     if( GP_IS_POINT( ptrPoint ) ){
        if( n == 0 )
           pPoint = ( Point * ) hb_xgrab( sizeof( Point ) * iLen );
        Point * pObj = ( Point * )GP_GET( ptrPoint );          
        pPoint[ n ] = *pObj;
     }else if( GP_IS_POINTF( ptrPoint ) ){
        if( n == 0 ){
           pPointF = ( PointF * ) hb_xgrab( sizeof( PointF ) * iLen );
           lF = true;
        }
        PointF * pObj = ( PointF * )GP_GET( ptrPoint );          
        pPointF[ n ] = *pObj;
     }
   
   }
   
   *l = lF;
   
   if( lF )
      pVoid = ( void * ) pPointF;
   else
      pVoid = ( void * ) pPoint;
      
   return pVoid;
      
}

void * ConvertArray2Rect( PHB_ITEM aRect, BOOL * l )
{
  
   int n;
   int iLen = hb_arrayLen( aRect );
   Rect * pRect;
   RectF * pRectF;
   BOOL lF = false;
   void * pVoid;
     
   for( n = 0; n < iLen; n++ ){
     
     PHB_ITEM pItem = hb_arrayGetItemPtr( aRect, n + 1 );
     GDIPLUS * ptrRect;
     hb_objSendMsg( pItem, "HANDLE", 0 );
     ptrRect = hb_GDIPLUS_par( -1 );
   
     if( GP_IS_RECT( ptrRect ) ){
        if( n == 0 )
           pRect = ( Rect * ) hb_xgrab( sizeof( Rect ) * iLen );
        Rect * pObj = ( Rect * )GP_GET( ptrRect );          
        pRect[ n ] = *pObj;
     }else if( GP_IS_RECTF( ptrRect ) ){
        if( n == 0 ){
           pRectF = ( RectF * ) hb_xgrab( sizeof( RectF ) * iLen );
           lF = true;
        }
        RectF * pObj = ( RectF * )GP_GET( ptrRect );          
        pRectF[ n ] = *pObj;
     }
   
   }
   
   *l = lF;
   
   if( lF )
      pVoid = ( void * ) pRectF;
   else
      pVoid = ( void * ) pRect;
      
   return pVoid;
      
}

void * ConvertArray2Any( PHB_ITEM aArray, int iType )
{
  
   int n;
   int iLen = hb_arrayLen( aArray );
   BYTE * pAny;
   void * pVoid;

   pAny =  ( BYTE * ) hb_xgrab( _newo[ iType ].l_size * iLen );

   for( n = 0; n < iLen; n++ ){
     
     PHB_ITEM pItem = hb_arrayGetItemPtr( aArray, n + 1 );
     GDIPLUS * ptr;
     hb_objSendMsg( pItem, "HANDLE", 0 );
     ptr = hb_GDIPLUS_par( -1 );     
     pVoid = GP_GET( ptr );
     memcpy( ( BYTE * ) pAny+( _newo[ iType ].l_size*n ), ( BYTE * ) pVoid, _newo[ iType ].l_size );

   }
      
   return pAny;
      
}

HBITMAP MakeBmpFromHWND( HWND hWnd  )
{
   HDC hDC2;
   HBITMAP hBmp, hBmpOld;
   HDC hDC = GetWindowDC( hWnd ); 
   RECT rct;
   int iTop,iLeft, iWidth, iHeight;
 
   GetClientRect( hWnd, &rct );
       
   hDC2    = CreateCompatibleDC( hDC );
   hBmp    = CreateCompatibleBitmap( hDC, rct.right, rct.bottom );
   hBmpOld = ( HBITMAP ) SelectObject( hDC2, hBmp );
 
   BitBlt( hDC2, 0, 0, rct.right, rct.bottom, hDC, rct.left, rct.top,  SRCCOPY );
 
   SelectObject( hDC2, hBmpOld );
 
   DeleteDC( hDC2 );
   ReleaseDC( hWnd, hDC );
   
   return hBmp;
}


HB_FUNC( MAKEBMPFROMHWND )
{
  hb_retnl( ( LONG ) MakeBmpFromHWND( ( HWND ) hb_parnl( 1 ) ) );
}