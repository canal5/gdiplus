typedef struct __gdiplus
{
  void * pObject;
  int type;
  char Cargo[ 20 ];
} GDIPLUS, * PGDIPLUS, *PTR_GDIPLUS;



#define GP_OBJECT_TYPE( p )      ( ( p )->type )
#define GP_OBJECT_OBJ( p )       ( ( p )->pObject )
#define GP_GET( p )              ( ( p )->pObject )
#define GP_SET( p, h )           ( ( p )->pObject = ( h ) )

#define GP_IT_NULL       ( ( int ) 0x00000 )
#define GP_IT_GRAPHICS   ( ( int ) 0x00001 )
#define GP_IT_RECTF      ( ( int ) 0x00002 )
#define GP_IT_RECT       ( ( int ) 0x00003 )
#define GP_IT_IMAGE      ( ( int ) 0x00004 )
#define GP_IT_COLOR      ( ( int ) 0x00005 )
#define GP_IT_SOLIDBRUSH ( ( int ) 0x00006 )
#define GP_IT_PEN        ( ( int ) 0x00007 )
#define GP_IT_POINT      ( ( int ) 0x00008 )
#define GP_IT_POINTF     ( ( int ) 0x00009 )
#define GP_IT_SIZE       ( ( int ) 0x0000A )
#define GP_IT_SIZEF      ( ( int ) 0x0000B )
#define GP_IT_MATRIX     ( ( int ) 0x0000C )
#define GP_IT_GRAPHICSPATH ( ( int ) 0x0000D )
#define GP_IT_BITMAP     ( ( int ) 0x0000E )
#define GP_IT_FONTCOLLECTION ( ( int ) 0x0000F )
#define GP_IT_INSTALLEDFONTCOLLECTION  ( ( int ) 0x00010 )
#define GP_IT_PRIVATEFONTCOLLECTION ( ( int ) 0x00011 )

#define GP_IS_GRAPHICS( p ) ( ( GP_OBJECT_TYPE( p ) == GP_IT_GRAPHICS ) )
#define GP_IS_RECTF( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_RECTF )    )
#define GP_IS_RECT( p )     ( ( GP_OBJECT_TYPE( p ) == GP_IT_RECT )     ) 
#define GP_IS_IMAGE( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_IMAGE )    )
#define GP_IS_COLOR( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_COLOR)     )
#define GP_IS_SOLIDBRUSH( p ) ( ( GP_OBJECT_TYPE( p ) == GP_IT_SOLIDBRUSH ) )
#define GP_IS_BRUSH( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_SOLIDBRUSH ) )
#define GP_IS_PEN( p )      ( ( GP_OBJECT_TYPE( p ) == GP_IT_PEN ) )
#define GP_IS_POINT( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_POINT ) )
#define GP_IS_POINTF( p )   ( ( GP_OBJECT_TYPE( p ) == GP_IT_POINTF ) )
#define GP_IS_SIZE( p )     ( ( GP_OBJECT_TYPE( p ) == GP_IT_SIZE ) )
#define GP_IS_SIZEF( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_SIZEF ) )
#define GP_IS_MATRIX( p )   ( ( GP_OBJECT_TYPE( p ) == GP_IT_MATRIX ) )
#define GP_IS_GRAPHICSPATH( p )   ( ( GP_OBJECT_TYPE( p ) == GP_IT_GRAPHICSPATH ) )
#define GP_IS_BITMAP( p )   ( ( GP_OBJECT_TYPE( p ) == GP_IT_BITMAP ) )
#define GP_IS_INSTALLEDFONTCOLLECTION( p ) ( ( GP_OBJECT_TYPE( p ) == GP_IT_INSTALLEDFONTCOLLECTION ) )
#define GP_IS_PRIVATEFONTCOLLECTION( p ) ( ( GP_OBJECT_TYPE( p ) == GP_IT_PRIVATEFONTCOLLECTION ) )
#define GP_IS_FONTCOLLECTION( p ) ( ( GP_OBJECT_TYPE( p ) == GP_IT_FONTCOLLECTION ) || GP_IS_INSTALLEDFONTCOLLECTION( p ) || GP_IS_PRIVATEFONTCOLLECTION( p ) )

#define HB_ISDOUBLE( n )    ( hb_param( n, HB_IT_DOUBLE ) != NULL )
#define HB_ISINTEGER( n )    ( hb_param( n, HB_IT_INTEGER) != NULL )

//gdiplus core
GDIPLUS * gdiplus_new( int type );
void      gdiplus_destroy( GDIPLUS * p );
void      hb_GDIPLUS_ret( GDIPLUS * p );
GDIPLUS * hb_GDIPLUS_par( int iParam );
GDIPLUS * GDIPLUSItemGet( PHB_ITEM pItem );
void      GDIPLUSItemClear( PHB_ITEM pItem );
PHB_ITEM  GDIPLUSItemPut( PHB_ITEM pItem, GDIPLUS * pGdiPlus );
void      GDIPLUS_StoreParam( int iParam, PHB_ITEM p );



extern "C"
{
LPSTR LToStr( long ); 
}