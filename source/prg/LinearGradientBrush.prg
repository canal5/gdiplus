#include "fivewin.ch"

function LinearGradientBrush( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 4
         oObj = GPLinearGradientBrush():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
         exit
      case 5
         oObj = GPLinearGradientBrush():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
         exit
   endswitch

return oObj



CLASS GPLinearGradientBrush

   DATA handle

   METHOD New( rc, color1, color2, mode ) CONSTRUCTOR

   METHOD     Destroy()
   DESTRUCTOR Destroy()

//Constructors
//
//The LinearGradientBrush class has the following constructors.
//
//Constructor
//LinearGradientBrush::LinearGradientBrush(Point&,Point&,Color&,Color&)
//LinearGradientBrush::LinearGradientBrush(PointF&,PointF&,Color&,Color&)
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,LinearGradientMode)
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)
//LinearGradientBrush::LinearGradientBrush(RectF&,Color&,Color&,LinearGradientMode)

  METHOD GetBlend()
  METHOD GetBlendCount()
  METHOD GetGammaCorrection()
  METHOD GetInterpolationColorCount()
  METHOD GetInterpolationColors()
  METHOD GetLinearColors()
  METHOD GetRectangle()
  METHOD GetRectangle2()
  METHOD GetTransform()
  METHOD GetWrapMode()
  METHOD MultiplyTransform()
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetBlend()
  METHOD SetBlendBellShape()
  METHOD SetBlendTriangularShape()
  METHOD SetGammaCorrection()
  METHOD SetInterpolationColors()
  METHOD SetLinearColors()
  METHOD SetTransform()
  METHOD SetWrapMode()
  METHOD TranslateTransform()



ENDCLASS

**************************************************************************************************************
  METHOD New( p1, p2, p3, p4, p5 ) CLASS GPLinearGradientBrush
**************************************************************************************************************
   local iParams := PCount()

   if p5 != NIL 
      ::handle = _GPLGB( p1:handle, p2:handle, p3:handle, p4, p5 )
   elseif valType( p4 ) == "O"
      ::handle = _GPLGB( p1:handle, p2:handle, p3:handle, p4:handle )
   else 
      ::handle = _GPLGB( p1:handle, p2:handle, p3:handle, p4 )
   endif

return self

**************************************************************************************************************
   METHOD Destroy() CLASS GPLinearGradientBrush
**************************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD GetBlend( aFactor, aPosition ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGETBLEND( ::handle, @aFactor, @aPosition )

*********************************************************************************************************
  METHOD GetBlendCount() CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGETBLENDCOUNT( ::handle )

*********************************************************************************************************
  METHOD GetGammaCorrection() CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetGammaCorrection( ::handle )

*********************************************************************************************************
  METHOD GetInterpolationColorCount() CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetInterpolationColorCount( ::handle )

*********************************************************************************************************
  METHOD GetInterpolationColors( apresetColors, ablendPositions ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetInterpolationColors( ::handle, @apresetColors, @ablendPositions )

*********************************************************************************************************
  METHOD GetLinearColors( apresetColors ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetLinearColors( ::handle, @apresetColors )

*********************************************************************************************************
  METHOD GetRectangle( oRect ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetRectangle( ::handle, @oRect:handle )

*********************************************************************************************************
  METHOD GetRectangle2() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetTransform( oMatrix ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetTransform( ::handle, @oMatrix )


*********************************************************************************************************
  METHOD GetWrapMode() CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBGetWrapMode( ::handle )

*********************************************************************************************************
  METHOD MultiplyTransform( oMatrix, nOrder ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBMultiplyTransform( ::handle, oMatrix:handle, nOrder )

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBResetTransform( ::handle )

*********************************************************************************************************
  METHOD RotateTransform( nAngle, nOrder ) CLASS GPLinearGradientBrush
*********************************************************************************************************

   DEFAULT nAngle := 0
   DEFAULT nOrder := 0


return _GPLGBRotateTransform( ::handle, nAngle, nOrder )

*********************************************************************************************************
  METHOD ScaleTransform( nX, nY, nOrder ) CLASS GPLinearGradientBrush
*********************************************************************************************************

   DEFAULT nX := 0
   DEFAULT nY := 0
   DEFAULT nOrder := 0

return _GPLGBScaleTransform( ::handle, nX, nY, nOrder )

*********************************************************************************************************
  METHOD SetBlend( aFactor, aPosition ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBSETBLEND( ::handle, aFactor, aPosition )

*********************************************************************************************************
  METHOD SetBlendBellShape( nFocus, nScale ) CLASS GPLinearGradientBrush
*********************************************************************************************************
   DEFAULT nFocus := 0
   DEFAULT nScale := 0

return _GPLGBSetBlendBellShape( ::handle, nFocus, nScale )

*********************************************************************************************************
  METHOD SetBlendTriangularShape( nFocus, nScale ) CLASS GPLinearGradientBrush
*********************************************************************************************************
   DEFAULT nFocus := 0
   DEFAULT nScale := 0

return _GPLGBSetBlendTriangularShape( ::handle, nFocus, nScale )

*********************************************************************************************************
  METHOD SetGammaCorrection( useGamma ) CLASS GPLinearGradientBrush
*********************************************************************************************************
   DEFAULT useGamma := .T.

return _GPLGBSetGammaCorrection( ::handle, useGamma )

*********************************************************************************************************
  METHOD SetInterpolationColors( aColor, ablendPositions ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBSetInterpolationColors( ::handle, aColor, ablendPositions )

*********************************************************************************************************
  METHOD SetLinearColors( oColor1, oColor2 ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBSetLinearColors( ::handle, oColor1:handle, oColor2:handle )

*********************************************************************************************************
  METHOD SetTransform( oMatrix ) CLASS GPLinearGradientBrush
*********************************************************************************************************

return _GPLGBSetTransform( ::handle, oMatrix:handle )

*********************************************************************************************************
  METHOD SetWrapMode( nwrapMode ) CLASS GPLinearGradientBrush
*********************************************************************************************************

   DEFAULT nwrapMode := 0

return _GPLGBSetWrapMode( ::handle, nwrapMode )


*********************************************************************************************************
  METHOD TranslateTransform( nX, nY, nOrder ) CLASS GPLinearGradientBrush
*********************************************************************************************************

   DEFAULT nX := 0
   DEFAULT nY := 0
   DEFAULT nOrder := 0

return _GPLGBTranslateTransform( ::handle, nX, nY, nOrder )


//Constructors
//
//The LinearGradientBrush class has the following constructors.
//
//Constructor                                                                       Description
//LinearGradientBrush::LinearGradientBrush(Point&,Point&,Color&,Color&)             Creates a LinearGradientBrush::LinearGradientBrush object from a set of boundary points and boundary colors.
//LinearGradientBrush::LinearGradientBrush(PointF&,PointF&,Color&,Color&)           Creates a LinearGradientBrush::LinearGradientBrush object from a set of boundary points and boundary colors.
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,LinearGradientMode)  Creates a LinearGradientBrush::LinearGradientBrush object based on a rectangle and mode of direction.
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)           Creates a LinearGradientBrush::LinearGradientBrush object from a rectangle and angle of direction.
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)           Creates a LinearGradientBrush::LinearGradientBrush object from a rectangle and angle of direction.
//LinearGradientBrush::LinearGradientBrush(RectF&,Color&,Color&,LinearGradientMode) Creates a LinearGradientBrush::LinearGradientBrush object based on a rectangle and mode of direction.
//
//
//Methods
//
//The LinearGradientBrush class has the following methods.
//
//Method                                                  Description
//LinearGradientBrush::GetBlend                           The LinearGradientBrush::GetBlend method gets the blend factors and their corresponding blend positions from a LinearGradientBrush object.
//LinearGradientBrush::GetBlendCount                      The LinearGradientBrush::GetBlendCount method gets the number of blend factors currently set for this LinearGradientBrush object.
//LinearGradientBrush::GetGammaCorrection                 The LinearGradientBrush::GetGammaCorrection method determines whether gamma correction is enabled for this LinearGradientBrush object.
//LinearGradientBrush::GetInterpolationColorCount         The LinearGradientBrush::GetInterpolationColorCount method gets the number of colors currently set to be interpolated for this linear gradient brush.
//LinearGradientBrush::GetInterpolationColors             The LinearGradientBrush::GetInterpolationColors method gets the colors currently set to be interpolated for this linear gradient brush and their corresponding blend positions.
//LinearGradientBrush::GetLinearColors                    The LinearGradientBrush::GetLinearColors method gets the starting color and ending color of this linear gradient brush.
//LinearGradientBrush::GetRectangle(Rect*)                The LinearGradientBrush::GetRectangle method gets the rectangle that defines the boundaries of the gradient.
//LinearGradientBrush::GetRectangle(RectF*)               The LinearGradientBrush::GetRectangle method gets the rectangle that defines the boundaries of the gradient.
//LinearGradientBrush::GetTransform                       The LinearGradientBrush::GetTransform method gets the transformation matrix of this linear gradient brush.
//LinearGradientBrush::GetWrapMode                        The LinearGradientBrush::GetWrapMode method gets the wrap mode for this brush. The wrap mode determines how an area is tiled when it is painted with a brush.
//LinearGradientBrush::MultiplyTransform                  The LinearGradientBrush::MultiplyTransform method updates this brush's transformation matrix with the product of itself and another matrix.
//LinearGradientBrush::ResetTransform                     The LinearGradientBrush::ResetTransform method resets the transformation matrix of this linear gradient brush to the identity matrix. This means that no transformation takes place.
//LinearGradientBrush::RotateTransform                    The LinearGradientBrush::RotateTransform method updates this brush's current transformation matrix with the product of itself and a rotation matrix.
//LinearGradientBrush::ScaleTransform                     The LinearGradientBrush::ScaleTransform method updates this brush's current transformation matrix with the product of itself and a scaling matrix.
//LinearGradientBrush::SetBlend                           The LinearGradientBrush::SetBlend method sets the blend factors and the blend positions of this linear gradient brush to create a custom blend.
//LinearGradientBrush::SetBlendBellShape                  The LinearGradientBrush::SetBlendBellShape method sets the blend shape of this linear gradient brush to create a custom blend based on a bell-shaped curve.
//LinearGradientBrush::SetBlendTriangularShape            The LinearGradientBrush::SetBlendTriangularShape method sets the blend shape of this linear gradient brush to create a custom blend based on a triangular shape.
//LinearGradientBrush::SetGammaCorrection                 The LinearGradientBrush::SetGammaCorrection method specifies whether gamma correction is enabled for this linear gradient brush.
//LinearGradientBrush::SetInterpolationColors             The LinearGradientBrush::SetInterpolationColors method sets the colors to be interpolated for this linear gradient brush and their corresponding blend positions.
//LinearGradientBrush::SetLinearColors                    The LinearGradientBrush::SetLinearColors method sets the starting color and ending color of this linear gradient brush.
//LinearGradientBrush::SetTransform                       The LinearGradientBrush::SetTransform method sets the transformation matrix of this linear gradient brush.
//LinearGradientBrush::SetWrapMode                        The LinearGradientBrush::SetWrapMode method sets the wrap mode of this linear gradient brush.
//LinearGradientBrush::TranslateTransform                 The LinearGradientBrush::TranslateTransform method updates this brush's current transformation matrix with the product of itself and a translation matrix.



#pragma BEGINDUMP
#include <hbvm.h>
#include <gc.h>
#include <hbapicls.h>

HB_FUNC( _GPLGB )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_LINEARGRADIENTBRUSH );  
   LinearGradientBrush * pLGB;
   int iParams = hb_pcount();
   BOOL lOk = true;
   
   if( iParams == 4 ){
      GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
      GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
      GDIPLUS * p3 = hb_GDIPLUS_par( 3 );      	 
      if( HB_ISINTEGER( 4 ) ){
      	 LinearGradientMode  mode = ( LinearGradientMode  ) hb_parni( 4 );
      	 void * u;
      	 u = GP_GET( p1 );
      	 if( GP_IS_RECTF( p1 ) ) {      	 	  
      	    if( GP_IS_COLOR( p2 ) && GP_IS_COLOR( p3 ) ){
      	    	Color * color1 = ( Color * ) GP_GET( p2 );
      	    	Color * color2 = ( Color * ) GP_GET( p3 );
      	    	pLGB = new LinearGradientBrush( *( ( RectF * ) u ), *color1, *color2, mode );      	    	
      	    }else 
      	       lOk = false;      	 
      	 }else if( GP_IS_RECT( p1 ) ){
      	    if( GP_IS_COLOR( p2 ) && GP_IS_COLOR( p3 ) ){
      	    	Color * color1 = ( Color * ) GP_GET( p2 );
      	    	Color * color2 = ( Color * ) GP_GET( p3 );
      	    	pLGB = new LinearGradientBrush( *( ( Rect * ) u ), *color1, *color2, mode );      	    	
      	    }else 
      	       lOk = false;      	      	 	      	 	
      	 }
      }else if( HB_ISPOINTER( 4 ) ){
      	 GDIPLUS * p4 = hb_GDIPLUS_par( 4 );      	 
         void * u1 = GP_GET( p1 );
         void * u2 = GP_GET( p2 );
         Color * color1 = ( Color * ) GP_GET( p3 );
      	 Color * color2 = ( Color * ) GP_GET( p4 );
      	 if( GP_IS_POINT( p1 ) && GP_IS_POINT( p2 ) ){
      	    pLGB = new LinearGradientBrush( *( ( Point * ) u1 ), *( ( Point * ) u2 ), *color1, *color2 );
      	 }else if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
      	 	  pLGB = new LinearGradientBrush( *( ( PointF * ) u1 ), *( ( PointF * ) u2 ), *color1, *color2 );
      	 }
      }   	
   }else if( iParams == 5 ){
      GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
      GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
      GDIPLUS * p3 = hb_GDIPLUS_par( 3 );   
      REAL angle = ( REAL ) hb_parnd( 4 );
      BOOL is    = hb_parl( 5 );
   	  if( ( GP_IS_RECTF( p1 ) || GP_IS_RECT( p1 ) ) && GP_IS_COLOR( p2 ) && GP_IS_COLOR( p3 ) ){
         void * u1 = GP_GET( p1 );
         Color * color1 = ( Color * ) GP_GET( p2 );
      	 Color * color2 = ( Color * ) GP_GET( p3 );   	  	
      	 if( GP_IS_RECT( p1 ) )
      	    pLGB = new LinearGradientBrush( *( ( RectF * ) u1 ), *color1, *color2, angle, is );
      	 else 
      	    pLGB = new LinearGradientBrush( *( ( Rect * ) u1 ), *color1, *color2, angle, is );
   	  }else 
   	     lOk = false;   	  
   }
   
   if( lOk ){
      GP_SET( pObj, pLGB );
      hb_GDIPLUS_ret( pObj );
   }
      
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBGETBLEND )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      REAL * factors  ;
      REAL * positions;
      PHB_ITEM itemFactor, itemPositions;
      int blendCount = linGrBrush->GetBlendCount();
      if( blendCount > 0 ){
      	 
         int j;
         Status sta;
         factors   = ( REAL * ) hb_xgrab( sizeof( REAL ) * blendCount );
         positions = ( REAL * ) hb_xgrab( sizeof( REAL ) * blendCount );

         itemFactor = hb_itemArrayNew( blendCount );
         itemPositions = hb_itemArrayNew( blendCount );

         sta = linGrBrush->GetBlend(factors, positions, blendCount);

         for( j=0; j<blendCount; j++ ){
            hb_arraySetND( itemFactor, j+1, ( double )factors[ j ] );
            hb_arraySetND( itemPositions, j+1, ( double )positions[ j ] );
         }
         if( !hb_itemParamStoreRelease( 2, itemFactor ) && itemFactor )
              hb_itemRelease( itemFactor );
         
         if( !hb_itemParamStoreRelease( 3, itemPositions ) && itemPositions )
              hb_itemRelease( itemPositions );
         
         hb_xfree( factors );
         hb_xfree( positions );
         
         hb_retni( sta );
      }      
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( _GPLGBGETBLENDCOUNT )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      hb_retni( linGrBrush->GetBlendCount() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( _GPLGBGETGAMMACORRECTION )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      hb_retl( linGrBrush->GetGammaCorrection() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}



HB_FUNC( _GPLGBSETBLEND )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) && HB_ISARRAY( 2 ) && HB_ISARRAY( 3 ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );

      PHB_ITEM itemFactor = hb_param( 2, HB_IT_ARRAY );
      PHB_ITEM itemPositions = hb_param( 3, HB_IT_ARRAY );
      int iLen = hb_arrayLen( itemFactor );
      int j;
      REAL * factors = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );
      REAL * positions = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );
      Status sta;
      
      for( j = 0; j < iLen; j++ ){      
         if( hb_arrayGetType( itemFactor, j + 1 ) == HB_IT_DOUBLE )
            factors[ j ] = ( REAL ) hb_arrayGetND( itemFactor, j + 1 );
         else
            factors[ j ] = ( REAL ) hb_arrayGetNI( itemFactor, j + 1 );
         
         if( hb_arrayGetType( itemPositions, j + 1 ) == HB_IT_DOUBLE )
            positions[ j ] = ( REAL ) hb_arrayGetND( itemPositions, j + 1 );
         else
            positions[ j ] = ( REAL ) hb_arrayGetNI( itemPositions, j + 1 );
      }
      sta = linGrBrush->SetBlend( factors, positions, iLen );
      hb_xfree( factors );
      hb_xfree( positions );
      
      hb_retni( sta );

     }else
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBGETINTERPOLATIONCOLORCOUNT )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      hb_retni( linGrBrush->GetInterpolationColorCount() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBSETINTERPOLATIONCOLORS )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) && HB_ISARRAY( 2 ) && HB_ISARRAY( 3 ) && hb_arrayLen( hb_param( 2, HB_IT_ARRAY ) ) == hb_arrayLen( hb_param( 3, HB_IT_ARRAY ) ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      PHB_ITEM aColor = hb_param( 2, HB_IT_ARRAY );
      PHB_ITEM aReal = hb_param( 3, HB_IT_ARRAY );
      int iLen = hb_arrayLen( aColor );
      int n;
      Status sta;
      if( iLen > 0 ) {
         Color * color1 = ( Color * ) hb_xgrab( sizeof( Color ) * iLen );
         REAL * blendPositions = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );
         PHB_ITEM pObj, pHandle;
         for( n = 0; n < iLen; n++ ){
         	 GDIPLUS * hHandle;
         	 Color * c;
         	 pObj = hb_arrayGetItemPtr( aColor, n + 1);         	 
         	 hb_objSendMsg( pObj, "HANDLE", 0 );
         	 hHandle = hb_GDIPLUS_par( -1 );
         	 c = ( Color * ) GP_GET( hHandle );
         	 color1[ n ] = *c;
           if( hb_arrayGetType( aReal, n + 1 ) == HB_IT_DOUBLE )
              blendPositions[ n ] = ( REAL ) hb_arrayGetND( aReal, n + 1 );
           else
              blendPositions[ n ] = ( REAL ) hb_arrayGetNI( aReal, n + 1 );
              
              
        }
        sta = linGrBrush->SetInterpolationColors( color1, blendPositions, iLen );

        hb_xfree( (void*) color1 );
        hb_xfree( (void*) blendPositions );
        hb_retni( sta );
      }else
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBGETINTERPOLATIONCOLORS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      int j;
      Status sta = Ok;
      int colorCount = linGrBrush->GetInterpolationColorCount();
      if( colorCount > 0 )
      {

         Color * colors = ( Color * ) hb_xgrab( sizeof( Color ) * colorCount );
         REAL * positions = ( REAL * ) hb_xgrab( sizeof( REAL ) * colorCount );
         PHB_ITEM aColor, aposition;
         PHB_ITEM pitemColor;
         
         sta = linGrBrush->GetInterpolationColors( colors, positions, colorCount );
         aColor = hb_itemArrayNew( colorCount );
         aposition = hb_itemArrayNew( colorCount );
         
         for( j = 0; j < colorCount; j++ ){

             pitemColor = GPNewGDIPLUSObject( &colors[ j ], GP_IT_COLOR );
             hb_arraySet( aColor, j + 1, pitemColor );
             hb_itemRelease( pitemColor );         	
             hb_arraySetND( aposition, j + 1, ( double ) positions[ j ] );

         }
         
         if( !hb_itemParamStoreRelease( 2, aColor ) && aColor )
              hb_itemRelease( aColor );
         
         if( !hb_itemParamStoreRelease( 3, aposition ) && aposition )
              hb_itemRelease( aposition );
         
         hb_xfree( ( void * ) colors );
         hb_xfree( ( void * ) positions );

      }
      hb_retni( sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBGETLINEARCOLORS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );

      int j;
      Status sta;
      PHB_ITEM pitemColor;
      PHB_ITEM aColor = hb_itemArrayNew( 2 );
      Color * colors = ( Color * ) hb_xgrab( sizeof( Color ) * 2 );

      sta = linGrBrush->GetLinearColors( colors );

      for( j = 0; j < 2; j++ ){
          pitemColor = GPNewGDIPLUSObject( &colors[ j ], GP_IT_COLOR );
          hb_arraySet( aColor, j + 1, pitemColor );
          hb_itemRelease( pitemColor );
      }


     if( !hb_itemParamStoreRelease( 2, aColor ) && aColor )
          hb_itemRelease( aColor );

     hb_xfree( ( void * ) colors );
     hb_retni( sta );

  }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBGETRECTANGLE  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) && ( GP_IS_RECT( p2 ) || GP_IS_RECTF( p2 ) ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      int j;
      Status sta;      
      void * uRect = GP_GET( p2 );     
       
      if( GP_IS_RECT( p2 ) ){
         sta = linGrBrush->GetRectangle( ( Rect * ) uRect );	
      }else
         sta = linGrBrush->GetRectangle( ( RectF * ) uRect );	

     hb_retni( sta );

  }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBGETTRANSFORM  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      int j;
      Status sta;
      PHB_ITEM pitem;
      Matrix * matrix;
      
      pitem = GPCreateObjectToFill( ( void**)&matrix, GP_IT_MATRIX );

      sta = linGrBrush->GetTransform( matrix );

      if( !hb_itemParamStoreRelease( 2, pitem ) && pitem )
          hb_itemRelease( pitem );

      hb_retni( sta );

  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETTRANSFORM  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) && GP_IS_MATRIX( p2 ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      Matrix * matrix = ( Matrix * ) GP_GET( p2 );
      Status sta;
      sta = linGrBrush->SetTransform( matrix );
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETWRAPMODE  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );                 
      Status sta;
      sta = linGrBrush->SetWrapMode( ( WrapMode ) hb_parni( 2 ) );
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBGETWRAPMODE  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );                 
      WrapMode wrapmode;
      wrapmode = linGrBrush->GetWrapMode();
      hb_retni( wrapmode );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETGAMMACORRECTION  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );                 
      Status sta;
      sta = linGrBrush->SetGammaCorrection( hb_parl( 2 ) );
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBMULTIPLYTRANSFORM  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) && GP_IS_MATRIX( p2 ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );                 
      Matrix * matrix = ( Matrix * ) GP_GET( p2 );
      MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );
      Status sta;
      sta = linGrBrush->MultiplyTransform(matrix, order);
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBRESETTRANSFORM )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      Status sta;
      sta = linGrBrush->ResetTransform();
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBROTATETRANSFORM  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      REAL angle = ( REAL ) hb_parnd( 2 );
      MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );
      Status sta;
      sta = linGrBrush->RotateTransform(angle, order);
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSCALETRANSFORM  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      REAL sx = ( REAL ) hb_parnd( 2 );
      REAL sy = ( REAL ) hb_parnd( 3 );
      MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );
      Status sta;
      sta = linGrBrush->ScaleTransform(sx, sy, order);
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETBLENDBELLSHAPE  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );                         
      REAL focus = ( REAL ) hb_parnd( 2 );
      REAL scale = ( REAL ) hb_parnd( 3 );
      Status sta;
      sta = linGrBrush->SetBlendBellShape(focus, scale );
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETBLENDTRIANGULARSHAPE  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      REAL focus = ( REAL ) hb_parnd( 2 );
      REAL scale = ( REAL ) hb_parnd( 3 );
      Status sta;
      sta = linGrBrush->SetBlendTriangularShape(focus, scale );
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETLINEARCOLORS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) && GP_IS_COLOR( p2 ) && GP_IS_COLOR( p3 ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      Color * color1 = ( Color * ) GP_GET( p2 );
      Color * color2 = ( Color * ) GP_GET( p3 );
      Status sta;
      sta = linGrBrush->SetLinearColors( *color1, *color2 );
      hb_retni( sta );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBTRANSLATETRANSFORM  )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
      REAL sx = ( REAL ) hb_parnd( 2 );
      REAL sy = ( REAL ) hb_parnd( 3 );
      MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );
      Status sta;
      sta = linGrBrush->TranslateTransform(sx, sy, order);
      hb_retni( sta );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


#pragma ENDDUMP

/*
HB_FUNC( _GPLGB... )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_LINEARGRADIENTBRUSH( p ) ){
      LinearGradientBrush * linGrBrush = ( LinearGradientBrush * ) GP_GET( p );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}
*/


