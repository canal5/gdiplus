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

   
