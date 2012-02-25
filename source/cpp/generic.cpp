#include <gc.h>
#include <hbapicls.h>

typedef struct s_GPNEWOBJ{

   char s_class[ 63 ];
   int i_type;
   long l_size;
} GPNEWOBJ, *PGPNEWOBJ, *PTR_GPNEWOBJ;

static const GPNEWOBJ _newo[] = {
   { NULL, NULL, NULL },
   { "GPGRAPHICS"  , GP_IT_GRAPHICS  , sizeof( Graphics ) },
   { "GPRECTF"     , GP_IT_RECTF     , sizeof( RectF ) },
   { "GPRECT"      , GP_IT_RECT      , sizeof( Rect ) },
   { "GPIMAGE"     , GP_IT_IMAGE     , sizeof( Image ) },
   { "GPCOLOR"     , GP_IT_COLOR     , sizeof( Color ) },
   { "GPSOLIDBRUSH", GP_IT_SOLIDBRUSH, sizeof( SolidBrush ) },
   { "GPPEN"       , GP_IT_PEN       , sizeof( Pen ) },
   { "GPPOINT"     , GP_IT_POINT     , sizeof( Point ) },
   { "GPPOINTF"    , GP_IT_POINTF    , sizeof( PointF ) },
   { "GPSIZE"      , GP_IT_SIZE      , sizeof( Size ) },
   { "GPSIZEF"     , GP_IT_SIZEF     , sizeof( SizeF ) },
   { "GPMATRIX"    , GP_IT_MATRIX    , sizeof( Matrix ) },
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
   void * pOut = operator new( _newo[ iType ].l_size );
   
   memcpy( pOut, c, _newo[ iType ].l_size );

   pitem = hb_itemDoC( _newo[ iType ].s_class, 0 );
   
   GP_SET( p, pOut );
   
   GDIPLUSItemPut( pHandle, p );
   hb_objSendMsg( pitem, "_HANDLE", 1, pHandle );
   
   hb_itemRelease( pHandle );
   
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
