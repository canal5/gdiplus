#include <gc.h>

void Traza( char * c )
{
   MessageBox( 0, c, "TRAZA", 0 );
}

HB_FUNC( GETGDIPLUSHANDLE )
{
  GDIPLUS * o = ( GDIPLUS * ) hb_parptr( 1 );
  hb_GDIPLUS_ret( o );
}

PHB_ITEM GPNewColorObject( Color& c ){
  
   PHB_ITEM pitem, pObj;
   Color * h;
   GDIPLUS * p = gdiplus_new( GP_IT_COLOR ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPCOLOR", 0 );
   
   h = new Color( c.GetValue() ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
}     

PHB_ITEM GPNewSolidBrushObject( SolidBrush& c ){
  
   PHB_ITEM pitem, pObj;
   SolidBrush * h;
   Color hc;
   GDIPLUS * p = gdiplus_new( GP_IT_SOLIDBRUSH ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPSOLIDBRUSH", 0 );
   c.GetColor( &hc );
   
   h = new SolidBrush( hc.GetValue() ); 
   
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
}  


PHB_ITEM GPNewPointObject( Point& c ){
  
   PHB_ITEM pitem, pObj;
   Point * h;
   GDIPLUS * p = gdiplus_new( GP_IT_POINT ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPPOINT", 0 );
   
   h = new Point( c ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
} 

PHB_ITEM GPNewPointFObject( PointF& c ){
  
   PHB_ITEM pitem, pObj;
   PointF * h;
   GDIPLUS * p = gdiplus_new( GP_IT_POINTF ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPPOINTF", 0 );
   
   h = new PointF( c ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
} 

PHB_ITEM GPNewRectObject( Rect& c ){
  
   PHB_ITEM pitem, pObj;
   Rect * h;
   GDIPLUS * p = gdiplus_new( GP_IT_RECT ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPRECT", 0 );
   
   h = new Rect( c.X, c.Y, c.Width, c.Height ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
} 

PHB_ITEM GPNewRectFObject( RectF& c ){
  
   PHB_ITEM pitem, pObj;
   RectF * h;
   GDIPLUS * p = gdiplus_new( GP_IT_RECTF ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPRECTF", 0 );
   
   h = new RectF( c.X, c.Y, c.Width, c.Height ); 
   strcpy( p->Cargo, "esta" );
   GP_SET( p, h );
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
} 

PHB_ITEM GPNewSizeObject( Size& c ){
  
   PHB_ITEM pitem, pObj;
   Size * h;
   GDIPLUS * p = gdiplus_new( GP_IT_SIZE ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPSIZE", 0 );
   
   h = new Size( c ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
} 

PHB_ITEM GPNewSizeFObject( SizeF& c ){
  
   PHB_ITEM pitem, pObj;
   SizeF * h;
   GDIPLUS * p = gdiplus_new( GP_IT_SIZE ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPSIZEF", 0 );
   
   h = new SizeF( c ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pObj = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pObj );
   hb_itemRelease( pHandle );
   
   return pitem;
} 