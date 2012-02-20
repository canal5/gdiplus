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
  
   PHB_ITEM pitem;
   Color * h;
   GDIPLUS * p = gdiplus_new( GP_IT_COLOR ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPCOLOR", 0 );
   
   h = new Color( c.GetValue() ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pitem = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pHandle );
   
   return pitem;
}     

PHB_ITEM GPNewSolidBrushObject( SolidBrush& c ){
  
   PHB_ITEM pitem;
   SolidBrush * h;
   Color hc;
   GDIPLUS * p = gdiplus_new( GP_IT_SOLIDBRUSH ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPSOLIDBRUSH", 0 );
   c.GetColor( &hc );
   
   h = new SolidBrush( hc.GetValue() ); 
   
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pitem = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pHandle );
   
   return pitem;
}  


PHB_ITEM GPNewPointObject( Point& c ){
  
   PHB_ITEM pitem;
   Point * h;
   GDIPLUS * p = gdiplus_new( GP_IT_POINT ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPPOINT", 0 );
   
   h = new Point( c ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pitem = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pHandle );
   
   return pitem;
} 

PHB_ITEM GPNewRectObject( Rect& c ){
  
   PHB_ITEM pitem;
   Rect * h;
   GDIPLUS * p = gdiplus_new( GP_IT_RECT ); 
   PHB_ITEM pHandle = hb_itemNew( NULL );
       
   pitem = hb_itemDoC( "GPRECT", 0 );
   
   h = new Rect( c.X, c.Y, c.Width, c.Height ); 
   GP_SET( p, h );
   
   hb_itemPutPtr( pHandle, p );
   
   pitem = hb_itemDoC( "_GPCONVERTHANDLE", 2, pitem, pHandle );
   
   hb_itemRelease( pHandle );
   
   return pitem;
} 