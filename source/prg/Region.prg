#include "fivewin.ch"


function Region( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPRegion():New()
         exit
      case 1
         oObj = GPRegion():New( aParams[ 1 ] )
         exit
      case 2
         oObj = GPRegion():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oObj

CLASS GPRegion

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//Region::Region()
//Region::Region(BYTE*,INT)
//Region::Region(GraphicsPath*)
//Region::Region(HRGN)
//Region::Region(Rect&)
//Region::Region(RectF&)

  METHOD Clone()
  METHOD Complement()
  METHOD Equals()
  METHOD Exclude()
  METHOD FromHRGN()
  METHOD GetBounds()
  METHOD GetData()
  METHOD GetDataSize()
  METHOD GetHRGN()
  METHOD GetLastStatus()
  METHOD GetRegionScans()
  METHOD GetRegionScansCount()
  METHOD Intersect()
  METHOD IsEmpty()
  METHOD IsInfinite()
  METHOD IsVisible()
  METHOD MakeEmpty()
  METHOD MakeInfinite()
  METHOD Transform()
  METHOD Translate()
  METHOD Union()
  METHOD Xor()


ENDCLASS

*********************************************************************************************************
  METHOD New( p1, p2 ) CLASS GPRegion
*********************************************************************************************************

local iParams := PCount()

  
  switch iParams
     case 0
        ::handle := _GPRegion()
        exit 
     case 1
        if ValType( p1 ) == "O"
           ::handle := _GPRegion( p1:handle )
        else 
           ::handle := _GPRegion( p1 )
        endif
        exit 
     case 2        
        ::handle := _GPRegion( p1, p2 )                       
  endswitch
  
return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRegion
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD Clone() CLASS GPRegion
*********************************************************************************************************

return GPRegionClone( ::handle )

*********************************************************************************************************
  METHOD Complement( p ) CLASS GPRegion
*********************************************************************************************************

return GPRegionComplement( ::handle, p:handle )

*********************************************************************************************************
  METHOD Equals( p1, p2 ) CLASS GPRegion
*********************************************************************************************************

return GPRegionEquals( ::handle, p1:handle, p2:handle )

*********************************************************************************************************
  METHOD Exclude( p ) CLASS GPRegion
*********************************************************************************************************

return GPRegionExclude( ::handle, p:handle )


*********************************************************************************************************
  METHOD FromHRGN( hRgn ) CLASS GPRegion
*********************************************************************************************************

return GPRegionFromHRGN( ::handle, hRgn )

*********************************************************************************************************
  METHOD GetBounds( oRect, oGrap ) CLASS GPRegion
*********************************************************************************************************

return GPRegionGetBounds( ::handle, @oRect:handle, oGrap:handle )

*********************************************************************************************************
  METHOD GetData( A, B, C  ) CLASS GPRegion
*********************************************************************************************************

   local sta
   
   DEFAULT B := ::GetDataSize()
   DEFAULT C := 0
   
   sta = GPRegionGetData( ::handle, @A, B, @C )

return sta

*********************************************************************************************************
  METHOD GetDataSize() CLASS GPRegion
*********************************************************************************************************

return GPRegionGetDataSize( ::handle )

*********************************************************************************************************
  METHOD GetHRGN( graph ) CLASS GPRegion
*********************************************************************************************************

return GPRegionGetHRGN( ::handle, graph:handle )

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPRegion
*********************************************************************************************************

return GPRegionGetLastStatus( ::handle )

*********************************************************************************************************
  METHOD GetRegionScans( oMatrix, aRect, nCount ) CLASS GPRegion
*********************************************************************************************************

return GPRegionGetRegionScans( ::handle, oMatrix:handle, @aRect, @nCount )


*********************************************************************************************************
  METHOD GetRegionScansCount( oMatrix ) CLASS GPRegion
*********************************************************************************************************

return GPRegionGetRegionScansCount( ::handle, oMatrix:handle )

*********************************************************************************************************
  METHOD Intersect( p ) CLASS GPRegion
*********************************************************************************************************

return GPRegionIntersect( ::handle, p:handle )

*********************************************************************************************************
  METHOD IsEmpty( graph ) CLASS GPRegion
*********************************************************************************************************

return GPRegionIsEmpty( ::handle, graph:handle )

*********************************************************************************************************
  METHOD IsInfinite() CLASS GPRegion
*********************************************************************************************************

return GPRegionIsInfinite( ::handle, graph:handle )

*********************************************************************************************************
  METHOD IsVisible( p1, p2, p3, p4, p5 ) CLASS GPRegion
*********************************************************************************************************

   local lRet

   if ValType( p1 ) == "O" 
      lRet = GPRegionIsVisible( ::handle, p1:handle, p2:handle )
   elseif ValType( p3 ) == "O" 
      lRet = GPRegionIsVisible( ::handle, p1, p2, p3:handle )
   else 
      lRet = GPRegionIsVisible( ::handle, p1, p2, p3, p4, p5:handle )
   endif
   
return lRet


************************************************************************************************0*********
  METHOD MakeEmpty() CLASS GPRegion
*********************************************************************************************************

return GPRegionMakeEmpty( ::handle )

*********************************************************************************************************
  METHOD MakeInfinite() CLASS GPRegion
*********************************************************************************************************

return GPRegionMakeInfinite( ::handle )

*********************************************************************************************************
  METHOD Transform( oMatrix ) CLASS GPRegion
*********************************************************************************************************

return GPRegionTransform( ::handle, oMatrix:handle )

*********************************************************************************************************
  METHOD Translate( p1, p2 ) CLASS GPRegion
*********************************************************************************************************

return GPRegionTranslate( ::handle, p1, p2 )

*********************************************************************************************************
  METHOD Union( uPar ) CLASS GPRegion
*********************************************************************************************************

return GPRegionUnion( ::handle, uPar:handle )

*********************************************************************************************************
  METHOD Xor( p1 ) CLASS GPRegion
*********************************************************************************************************

return GPRegionXor( ::handle, p1:handle )






//Constructors
//
//The Region class has the following constructors.
//
//Constructor                            Description
//Region::Region()                       Creates a region that is infinite. This is the default constructor.
//Region::Region(BYTE*,INT)              Creates a region that is defined by data obtained from another region.
//Region::Region(GraphicsPath*)          Creates a region that is defined by a path (a GraphicsPath object) and has a fill mode that is contained in the GraphicsPath object.
//Region::Region(HRGN)                   Creates a region that is identical to the region that is specified by a handle to a GDI region.
//Region::Region(Rect&)                  Creates a region that is defined by a rectangle.
//Region::Region(RectF&)                 Creates a region that is defined by a rectangle.
//
//Methods
//
//The Region class has the following methods.
//
//Method                                             Description
//Region::Clone                                      The Region::Clone method makes a copy of this Region object and returns the address of the new Region object.
//Region::Complement(GraphicsPath*)                  The Region::Complement method updates tis region to the portion of the specified path's interior that does not intersect this region.
//Region::Complement(Rect&)                          The Region::Complement method updates this region to the portion of the specified rectangle's interior that does not intersect this region.
//Region::Complement(RectF&)                         The Region::Complement method updates this region to the portion of the specified rectangle's interior that does not intersect this region.
//Region::Complement(Region*)                        The Region::Complement method updates this region to the portion of another region that does not intersect this region.
//Region::Equals                                     The Region::Equals method determines whether this region is equal to a specified region.
//Region::Exclude(GraphicsPath*)                     The Region::Exclude method updates this region to the portion of itself that does not intersect the specified path's interior.
//Region::Exclude(Rect&)                             The Region::Exclude method updates this region to the portion of itself that does not intersect the specified rectangle's interior.
//Region::Exclude(RectF&)                            The Region::Exclude method updates this region to the portion of itself that does not intersect the specified rectangle's interior.
//Region::Exclude(Region*)                           The Region::Exclude method updates this region to the portion of itself that does not intersect another region.
//Region::FromHRGN                                   The Region::FromHRGN method creates a GDI+Region object from a GDI  region.
//Region::GetBounds(Rect*,Graphics*)                 The Region::GetBounds method gets a recangle that encloses this region.
//Region::GetBounds(RectF*,Graphics*)                The Region::GetBounds method gets a recangle that encloses this region.
//Region::GetData                                    The Region::GetData method gets data that describes this region.
//Region::GetDataSize                                The Region::GetDataSize method gets the number of bytes of data that describes this region.
//Region::GetHRGN                                    The Region::GetHRGN method creates a GDI region from this region.
//Region::GetLastStatus                              The Region::GetLastStatus method returns a value that indicates the nature of this Region object's most recent method failure.
//Region::GetRegionScans(Matrix*,Rect*,INT*)         The Region::GetRegionScans method gets an array of rectangles that approximate this region. The region is transformed by a specified matrix before the rectangles are calculated.
//Region::GetRegionScans(Matrix*,RectF*,INT*)        The Region::GetRegionScans method gets an array of rectangles that approximate this region. The region is transformed by a specified matrix before the rectangles are calculated.
//Region::GetRegionScansCount                        The Region::GetRegionScansCount method gets the number of rectangles that approximate this region. The region is transformed by a specified matrix before the rectangles are calculated.
//Region::Intersect(GraphicsPath*)                   The Region::Intersect method updates this region to the portion of itself that intersects the specified path's interior.
//Region::Intersect(Rect&)                           The Region::Intersect method updates this region to the portion of itself that intersects the specified rectangle's interior.
//Region::Intersect(RectF&)                          The Region::Intersect method updates this region to the portion of itself that intersects the specified rectangle's interior.
//Region::Intersect(Region*)                         The Region::Intersect method updates this region to the portion of itself that intersects another region.
//Region::IsEmpty                                    The Region::IsEmpty method determines whether this region is empty.
//Region::IsInfinite                                 The Region::IsInfinite method determines whether this region is infinite.
//Region::IsVisible(INT,INT,Graphics*)               The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(INT,INT,INT,INT,Graphics*)       The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::IsVisible(Point&,Graphics*)                The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(PointF&,Graphics*)               The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(REAL,REAL,Graphics*)             The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(REAL,REAL,REAL,REAL,Graphics*)   The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::IsVisible(Rect&,Graphics*)                 The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::IsVisible(RectF&,Graphics*)                The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::MakeEmpty                                  The Region::MakeEmpty method updates this region to an empty region. In other words, the region occupies no space on the display device.
//Region::MakeInfinite                               The Region::MakeInfinite method updates this region to an infinite region.
//Region::Transform                                  The Region::Transform method transforms this region by multiplying each of its data points by a specified matrix.
//Region::Translate(INT,INT)                         The Region::Translate method offsets this region by specified amounts in the horizontal and vertical directions.
//Region::Translate(REAL,REAL)                       The Region::Translate method offsets this region by specified amounts in the horizontal and vertical directions.
//Region::Union(GraphicsPath*)                       The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of the specified path's interior.
//Region::Union(Rect&)                               The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of the specified rectangle's interior.
//Region::Union(RectF&)                              The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of the specified rectangle's interior.
//Region::Union(Region*)                             The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of another region.
//Region::Xor(GraphicsPath*)                         The Region::Xor method updates this region to the nonintersecting portions of itself and the specified path's interior.
//Region::Xor(Rect&)                                 The Region::Xor method updates this region to the nonintersecting portions of itself and the specified rectangle's interior.
//Region::Xor(RectF&)                                The Region::Xor method updates this region to the nonintersecting portions of itself and the specified rectangle's interior.
//Region::Xor(Region*)                               The Region::Xor method updates this region to the nonintersecting portions of itself and another region.













#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( _GPREGION )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_REGION );  
   Region * ptr;
   int iParams = hb_pcount();
   BOOL lOk = true;

//   GDIPLUS * p2 = hb_GDIPLUS_par( 1 ); 
//
//   Rect * r = ( Rect * ) GP_GET( p2 );
//   ptr = new Region( *r );
//
//   GP_SET( pObj, ptr );
//
//   hb_GDIPLUS_ret( pObj );

   
   switch( iParams ){
      case 0: 
         ptr = new Region();
         break;
      case 1:
       {
         GDIPLUS * p2 = hb_GDIPLUS_par( 1 );         
         int iType = GP_OBJECT_TYPE( p2 );
         if( HB_ISNUM( 1 ) && GetObjectType( ( HGDIOBJ ) hb_parnl( 1 ) ) ){
            ptr = new Region( ( HRGN ) hb_parnl( 1 ) );
         }
         else {
         	  void * g = GP_GET( p2 );
         	  
            switch( iType ){            	  
               case GP_IT_GRAPHICSPATH:
                  ptr = new Region( ( GraphicsPath * ) g );
                  break;
               case GP_IT_RECTF:
                  ptr = new Region( *( ( RectF * ) g ) );                  
                  break;
               case GP_IT_RECT:
                  ptr = new Region( *( ( Rect * ) g ) );
                  break;               
            	  default:
            	     lOk = false;
            }
         }
       }
       break;
      case 2:
      {
         GDIPLUS * p2 = hb_GDIPLUS_par( 1 );         
         if( GP_IS_REGIONDATA( p2 ) ){
         	  BYTE * b = ( BYTE * ) GP_GET( p2 );
            ptr = new Region( b, hb_parni( 2 ) );
         }else 
            lOk = false;
      }
      break;       
   }

   if( lOk ){
      GP_SET( pObj, ptr );
      hb_GDIPLUS_ret( pObj );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
     
}

HB_FUNC( GPREGIONCLONE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      Region * oClone = o->Clone();
      PHB_ITEM pClone;
            
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_REGION );
      hb_itemReturnRelease( pClone );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPREGIONUNION )
{
  
   GDIPLUS * p  = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) ){
   	  int iType = GP_OBJECT_TYPE( p2 );
      Region * o = ( Region * ) GP_GET( p );
      void * u = GP_GET( p2 );
      Status sta;
      BOOL lOk = true;
      switch ( iType ){
      	case GP_IT_GRAPHICSPATH:
      	   sta = o->Union( ( GraphicsPath * ) u );
      	   break;
      	case GP_IT_RECTF:
      	   sta = o->Union( *( ( RectF * ) u ) );
      	   break;      	
      	case GP_IT_RECT:
      	   sta = o->Union( *( ( Rect * ) u ) );
      	   break;      	      	
      	case GP_IT_REGION:
      	   sta = o->Union( ( Region * ) u );
      	   break;      	      	   
      	default:
      	   lOk = false;
      }
      
      if( lOk )
        hb_retni( ( int ) sta );
      else 
        hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
         
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPREGIONCOMPLEMENT )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      void * g = GP_GET( p2 );
      int iType = GP_OBJECT_TYPE( p2 );
      Status sta;
      BOOL lOk = true;

      switch( iType ){            	  
         case GP_IT_GRAPHICSPATH:
            sta = o->Complement( ( GraphicsPath * ) g );
            break;
         case GP_IT_RECTF:
            sta = o->Complement( *( ( RectF * ) g ) ) ;
            break;
         case GP_IT_RECT:
            sta = o->Complement( *( ( Rect * ) g ));
            break;               
         case GP_IT_REGION:
            sta = o->Complement( ( Region * ) g );
            break;                         
         default:
            lOk = false;
      }
      
      if( lOk )      
         hb_retni( ( int ) sta );
      else 
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONEQUALS )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
   if( GP_IS_REGION( p ) && GP_IS_REGION( p2 ) &&  GP_IS_GRAPHICS( p3 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Region * r = ( Region * ) GP_GET( p2 );
      Graphics * g = ( Graphics * ) GP_GET( p3 );
      hb_retnl( o->Equals( r, g ) );         
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONEXCLUDE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      void * g = GP_GET( p2 );
      int iType = GP_OBJECT_TYPE( p2 );
      Status sta;
      BOOL lOk = true;

      switch( iType ){            	  
         case GP_IT_GRAPHICSPATH:
            sta = o->Exclude( ( GraphicsPath * ) g );
            break;
         case GP_IT_RECTF:
            sta = o->Exclude( *( ( RectF * ) g ) ) ;
            break;
         case GP_IT_RECT:
            sta = o->Exclude( *( ( Rect * ) g ));
            break;               
         case GP_IT_REGION:
            sta = o->Exclude( ( Region * ) g );
            break;                         
         default:
            lOk = false;
      }
      
      if( lOk )      
         hb_retni( ( int ) sta );
      else 
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONFROMHRGN )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   HRGN hRgn   = ( HRGN ) hb_parnl( 2 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      Region * oOut;      
      PHB_ITEM pOut;            
      oOut = o->FromHRGN( hRgn );
      pOut = GPNewGDIPLUSObject( oOut, GP_IT_REGION );
      hb_itemReturnRelease( pOut );
               
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONGETBOUNDS )
{
  
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p1 ) && GP_IS_GRAPHICS( p3 ) ){
      Region * o = ( Region * ) GP_GET( p1 );
      Graphics * g = ( Graphics * ) GP_GET( p3 );
      if( GP_IS_RECT( p2 ) ){
         Rect * rect = ( Rect * ) GP_GET( p2 );
         hb_retni( ( int ) o->GetBounds( rect, g ) );
      }else if( GP_IS_RECTF( p2 ) ){
         RectF * rect = ( RectF * ) GP_GET( p2 );
         hb_retni( ( int ) o->GetBounds( rect, g ) );
      }else
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONGETDATA )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   int iParams = hb_pcount();
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      UINT bufferSize, sizeFilled;
      Status sta;
      GDIPLUS * pData = gdiplus_new( GP_IT_REGIONDATA );  
      PHB_ITEM pOut = hb_itemNew( NULL );
      if( iParams > 2 )
         bufferSize = ( UINT ) hb_parni( 3 );
      else 
         bufferSize = o->GetDataSize();
         
      pData->pObject = ( BYTE * ) hb_xgrab( bufferSize );
      
      sta = o->GetData( ( BYTE * )( pData->pObject ), bufferSize, &sizeFilled );
      
      GDIPLUSItemPut( pOut, pData );      
      GDIPLUS_StoreParam( 2, pOut );
      
      hb_storvni( sizeFilled, 4 );         
      hb_retni( ( Status ) sta );
         
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPREGIONGETDATASIZE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      hb_retni( ( int ) o->GetDataSize() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPREGIONGETHRGN )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) && GP_IS_GRAPHICS( p2 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Graphics * g = ( Graphics * ) GP_GET( p2 );
      HRGN hRegion;
      hRegion = o->GetHRGN( g );
      hb_retptr( hRegion );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONGETLASTSTATUS )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      hb_retni( ( int ) o->GetLastStatus() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( GPREGIONGETREGIONSCANS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) && GP_IS_MATRIX( p2 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Matrix * m = ( Matrix * ) GP_GET( p2 );
      int iCount = o->GetRegionScansCount( m );
      int j;
      Status sta = 0;
      PHB_ITEM pArray = hb_itemArrayNew( iCount );
      Rect * rects = ( Rect * ) hb_xgrab( sizeof( Rect ) * iCount );      
      o->GetRegionScans(m, rects, &iCount);  
      
      for( j = 0; j < iCount; j++ ){
      	 PHB_ITEM pitem = GPNewGDIPLUSObject( rects+j, GP_IT_RECT );
         hb_arraySet( pArray, j + 1, pitem );
         hb_itemRelease( pitem );
      }

     if( !hb_itemParamStoreRelease( 3, pArray ))
           hb_itemRelease( pArray );      
     
     hb_storvni( iCount, 4 );
     hb_xfree( rects );     
     hb_retni( ( int ) sta );
         
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONGETREGIONSCANSCOUNT )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) && GP_IS_MATRIX( p2 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Matrix * m = ( Matrix * ) GP_GET( p2 );      
      hb_retni( ( int ) o->GetRegionScansCount( m ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPREGIONINTERSECT )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      void * g = GP_GET( p2 );
      int iType = GP_OBJECT_TYPE( p2 );
      Status sta;
      BOOL lOk = true;

      switch( iType ){            	  
         case GP_IT_GRAPHICSPATH:
            sta = o->Intersect( ( GraphicsPath * ) g );
            break;
         case GP_IT_RECTF:
            sta = o->Intersect( *( ( RectF * ) g ) ) ;
            break;
         case GP_IT_RECT:
            sta = o->Intersect( *( ( Rect * ) g ));
            break;               
         case GP_IT_REGION:
            sta = o->Intersect( ( Region * ) g );
            break;                         
         default:
            lOk = false;
      }
      
      if( lOk )      
         hb_retni( ( int ) sta );
      else 
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONISEMPTY )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) && GP_IS_GRAPHICS( p2 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Graphics * g = ( Graphics * ) GP_GET( p2 );
      hb_retl( o->IsEmpty( g ) );     
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONISINFINITE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) && GP_IS_GRAPHICS( p2 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Graphics * g = ( Graphics * ) GP_GET( p2 );
      hb_retl( o->IsInfinite( g ) );     
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPREGIONISVISIBLE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      int iParam = hb_pcount();
      BOOL lRet;
      switch( iParam ){
         case 3:
         {
            GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
            GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
            Graphics * g = ( Graphics * ) GP_GET( p3 );
            int iType = GP_OBJECT_TYPE( p2 );
            void * u = GP_GET( p2 );
            switch( iType ){
               case GP_IT_RECT:
            	    lRet = o->IsVisible( *( ( Rect * )u ), g );
            	    break;
            	 case GP_IT_RECTF:
            	    lRet = o->IsVisible( *( ( RectF * )u ), g );
            	   break;
            	 case GP_IT_POINT:
            	    lRet = o->IsVisible( *( ( Point * )u ), g );
            	   break;            	   
            	 case GP_IT_POINTF:
            	    lRet = o->IsVisible( *( ( PointF * )u ), g );
            	   break;            	               	   
            }
            
         }
         break;
         case 4:
         {
         	  GDIPLUS * p3 = hb_GDIPLUS_par( 4 );
            Graphics * g = ( Graphics * ) GP_GET( p3 );
            if( HB_ISINTEGER( 2 ) )
               lRet = o->IsVisible( hb_parni( 2 ), hb_parni( 3 ), g );            	
            else 
               lRet = o->IsVisible( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), g );            	
         }
         break;
         
         case 6:
         {
         	  GDIPLUS * p3 = hb_GDIPLUS_par( 6 );
            Graphics * g = ( Graphics * ) GP_GET( p3 );
            if( HB_ISINTEGER( 2 ) )
               lRet = o->IsVisible( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ),  hb_parni( 5 ), g );            	
            else 
               lRet = o->IsVisible( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), g );            	
         }
         break;            
      }
      hb_retl( lRet );
         
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPREGIONMAKEEMPTY )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      hb_retni( ( int ) o->MakeEmpty() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONMAKEINFINITE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      hb_retni( ( int ) o->MakeInfinite() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONTRANSFORM )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_REGION( p ) && GP_IS_MATRIX( p2 ) ){
      Region * o = ( Region * ) GP_GET( p );
      Matrix * m = ( Matrix * ) GP_GET( p2 );
      Status sta;
      
      sta = o->Transform( m );
      hb_retni( ( int ) sta );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONTRANSLATE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      if( HB_ISINTEGER( 2 ) )
         sta = o->Translate( hb_parni( 2 ), hb_parni( 3 ) );
      else
         sta = o->Translate( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ) );
         
      hb_retni( ( int ) sta );      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPREGIONXOR )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
      void * g = GP_GET( p2 );
      int iType = GP_OBJECT_TYPE( p2 );
      Status sta;
      BOOL lOk = true;

      switch( iType ){            	  
         case GP_IT_GRAPHICSPATH:
            sta = o->Xor( ( GraphicsPath * ) g );
            break;
         case GP_IT_RECTF:
            sta = o->Xor( *( ( RectF * ) g ) ) ;
            break;
         case GP_IT_RECT:
            sta = o->Xor( *( ( Rect * ) g ));
            break;               
         case GP_IT_REGION:
            sta = o->Xor( ( Region * ) g );
            break;                         
         default:
            lOk = false;
      }
      
      if( lOk )      
         hb_retni( ( int ) sta );
      else 
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


/*
HB_FUNC( GPREGION... )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_REGION( p ) ){
      Region * o = ( Region * ) GP_GET( p );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}
*/



#pragma ENDDUMP




