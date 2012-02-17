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


  switch( iParams )
     case 4
        if p1:IsKindOf( "GPPoint" ) .and.  p2:IsKindOf( "GPPoint" ) .and.  p3:IsKindOf( "GPColor" ) .and. p4:IsKindOf( "GPColor" )
           ::handle := _GPLGB( p1:handle, p2:handle, p3:handle, p4:handle )
        elseif p1:IsKindOf( "GPPointF" ) .and.  p2:IsKindOf( "GPPointF" ) .and.  p3:IsKindOf( "GPColor" ) .and. p4:IsKindOf( "GPColor" )
           ::handle := _GPLGBF( p1:handle, p2:handle, p3:handle, p4:handle )
        elseif p1:IsKindOf( "GPRect" ) .and.  p2:IsKindOf( "GPColor" ) .and.  p3:IsKindOf( "GPColor" )
           ::handle := _GPLGBL( p1:handle, p2:handle, p3:handle, p4 )
        elseif p1:IsKindOf( "GPRectF" ) .and.  p2:IsKindOf( "GPColor" ) .and.  p3:IsKindOf( "GPColor" )
           ::handle := _GPLGBLF( p1:handle, p2:handle, p3:handle, p4 )
        endif
        exit
     case 5
         DEFAULT p4 := 0
         DEFAULT p5 := .F.
         if p1:IsKindOf( "GPRect" ) .and.  p2:IsKindOf( "GPColor" ) .and.  p3:IsKindOf( "GPColor" )
           ::handle := _GPLGBL2( p1:handle, p2:handle, p3:handle, p4, p5 )
         elseif  p1:IsKindOf( "GPRectF" ) .and.  p2:IsKindOf( "GPColor" ) .and.  p3:IsKindOf( "GPColor" )
           ::handle := _GPLGBLF2( p1:handle, p2:handle, p3:handle, p4, p5 )
        endif
        exit
  endswitch


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

return _GPLGBGetRectangle( ::handle, @oRect )

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
   LinearGradientBrush * pLGB;
   Point * point1 = hb_Point_par( 1 );
   Point * point2 = hb_Point_par( 2 );
   Color * color1 = hb_Color_par( 3 );
   Color * color2 = hb_Color_par( 4 );

   if( point1 && point2 &&color1 && color2 ){
      Point oPoint1( point1->X, point1->Y );
      Point oPoint2( point2->X, point2->Y );
      Color oColor1( color1->GetValue() );
      Color oColor2( color2->GetValue() );

      pLGB = new LinearGradientBrush( oPoint1, oPoint2, oColor1, oColor2 );
      hb_LGB_ret( pLGB );

   } else
        hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBF )
{
   LinearGradientBrush * pLGB ;
   PointF * point1 = hb_PointF_par( 1 );
   PointF * point2 = hb_PointF_par( 2 );
   Color * color1 = hb_Color_par( 3 );
   Color * color2 = hb_Color_par( 4 );

   if( point1 && point2 &&color1 && color2 ){
       PointF oPoint1( point1->X, point1->Y );
       PointF oPoint2( point2->X, point2->Y );
       Color oColor1( color1->GetValue() );
       Color oColor2( color2->GetValue() );

       pLGB = new LinearGradientBrush( oPoint1, oPoint2, oColor1, oColor2 );
       hb_LGB_ret( pLGB );

   }else
       hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( _GPLGBL )
{
   LinearGradientBrush * pLGB;
   Rect * rect = hb_Rect_par( 1 );
   Color * color1 = hb_Color_par( 2 );
   Color * color2 = hb_Color_par( 3 );
   LinearGradientMode mode = ( LinearGradientMode ) hb_parni( 4 );


   if( rect && color1 && color2 ){
       Rect oRect( rect->X, rect->Y, rect->Width, rect->Height );
       Color oColor1( color1->GetValue() );
       Color oColor2( color2->GetValue() );

       pLGB = new LinearGradientBrush( oRect, oColor1, oColor2, mode );
       hb_LGB_ret( pLGB );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( _GPLGBLF )
{
         LinearGradientBrush * pLGB;
   RectF * rect = hb_RectF_par( 1 );
   Color * color1 = hb_Color_par( 2 );
   Color * color2 = hb_Color_par( 3 );
   LinearGradientMode mode = (LinearGradientMode ) hb_parni( 4 );


   if( rect && color1 && color2 ){
      RectF oRect( rect->X, rect->Y, rect->Width, rect->Height );
      Color oColor1( color1->GetValue() );
          Color oColor2( color2->GetValue() );

          pLGB = new LinearGradientBrush( oRect, oColor1, oColor2, mode );

      hb_LGB_ret( pLGB );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}


HB_FUNC( _GPLGBL2 )
{
         LinearGradientBrush * pLGB;
   Rect * rect = hb_Rect_par( 1 );
   Color * color1 = hb_Color_par( 2 );
   Color * color2 = hb_Color_par( 3 );
   REAL angle = hb_parnd( 4 );
   BOOL isAngleScalable = hb_parl( 5 );

   if( rect && color1 && color2 ){
      Rect oRect( rect->X, rect->Y, rect->Width, rect->Height );
      Color oColor1( color1->GetValue() );
          Color oColor2( color2->GetValue() );

          pLGB = new LinearGradientBrush( oRect, oColor1, oColor2, angle, isAngleScalable );
      hb_LGB_ret( pLGB );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBLF2 )
{
         LinearGradientBrush * pLGB;
   RectF * rect = hb_RectF_par( 1 );
   Color * color1 = hb_Color_par( 2 );
   Color * color2 = hb_Color_par( 3 );
   REAL angle = hb_parnd( 4 );
   BOOL isAngleScalable = hb_parl( 5 );

   if( rect && color1 && color2 ){
      RectF oRect( rect->X, rect->Y, rect->Width, rect->Height );
      Color oColor1( color1->GetValue() );
          Color oColor2( color2->GetValue() );

          pLGB = new LinearGradientBrush( oRect, oColor1, oColor2, angle, isAngleScalable );
      hb_LGB_ret( pLGB );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}



HB_FUNC( _GPLGBGETBLEND )
{

        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );

        if( linGrBrush ){
                int blendCount = linGrBrush->GetBlendCount();
    REAL * factors  ;
    REAL * positions;
    PHB_ITEM itemFactor, itemPositions;

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

HB_FUNC( _GPLGBGETGAMMACORRECTION )
{

        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );

        if( linGrBrush ){
       hb_retl( linGrBrush->GetGammaCorrection() );
        }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBGETBLENDCOUNT )
{

        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );

        if( linGrBrush ){
       hb_retni( linGrBrush->GetBlendCount() );
        }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBSETBLEND )
{

     LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );

     if( linGrBrush && HB_ISARRAY( 2 ) && HB_ISARRAY( 3 ) ) {

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

        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );

        if( linGrBrush ){
       hb_retni( linGrBrush->GetInterpolationColorCount() );
        }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBSETINTERPOLATIONCOLORS )
{

        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );

        if( linGrBrush && HB_ISARRAY( 2 ) && HB_ISARRAY( 3 ) && hb_arrayLen( hb_param( 2, HB_IT_ARRAY ) ) == hb_arrayLen( hb_param( 3, HB_IT_ARRAY ) ) ) {

      PHB_ITEM aColor = hb_param( 2, HB_IT_ARRAY );
      PHB_ITEM aReal = hb_param( 3, HB_IT_ARRAY );
                  int iLen = hb_arrayLen( aColor );
                  int n;
                  Status sta;

                  if( iLen > 0 ) {
                         Color * color1 = ( Color * ) hb_xgrab( sizeof( Color ) * iLen );
                         REAL * blendPositions = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );
         for( n = 0; n < iLen; n++ ){
                 PHB_ITEM pItem = hb_arrayGetItemPtr( aColor, n + 1 );
           hb_vmPushSymbol( hb_dynsymGetSymbol( "HANDLE" ) );
           hb_vmPush( pItem );
           hb_vmFunction( 0 );
           Color * pColor = hb_Color_par( -1 );
           Color oColor1( pColor->GetValue() );
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
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        if( linGrBrush ){
                 int j;
           int colorCount = linGrBrush->GetInterpolationColorCount();
           Status sta = Ok;
           if( colorCount > 0 )
           {

           Color * colors = ( Color * ) hb_xgrab( sizeof( Color ) * colorCount );
           REAL * positions = ( REAL * ) hb_xgrab( sizeof( REAL ) * colorCount );
           PHB_ITEM aColor, aposition;
           PHB_ITEM pitemColor;
           PHB_ITEM pHandle = hb_itemNew( NULL );

           sta = linGrBrush->GetInterpolationColors( colors, positions, colorCount );
              aColor = hb_itemArrayNew( colorCount );
              aposition = hb_itemArrayNew( colorCount );

                 for( j = 0; j < colorCount; j++ ){
                          Color * hColor = new Color( colors[ j ].GetValue() );
                    pitemColor = hb_itemDoC( "GPCOLOR", 0 );

                    hb_itemPutPtr( pHandle, hColor );

                    hb_objSendMsg( pitemColor, "CONVERTCOLORHANDLE", 1, pHandle );

            hb_arraySet( aColor, j + 1, pitemColor );
            hb_arraySetND( aposition, j + 1, ( double ) positions[ j ] );
            hb_itemRelease( pitemColor );
                 }

         hb_itemRelease( pHandle );

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
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        if( linGrBrush ){

                 int j;
     Status sta;
     PHB_ITEM pitemColor;
     PHB_ITEM aColor = hb_itemArrayNew( 2 );
                 Color * colors = ( Color * ) hb_xgrab( sizeof( Color ) * 2 );
     PHB_ITEM pHandle = hb_itemNew( NULL );

                 sta = linGrBrush->GetLinearColors( colors );

     for( j = 0; j < 2; j++ ){
          Color * hColor = new Color( colors[ j ].GetValue() );

          hb_itemPutPtr( pHandle, hColor );
        pitemColor = hb_itemDoC( "GPCOLOR", 0 );
        hb_objSendMsg( pitemColor, "CONVERTCOLORHANDLE", 1, pHandle );
        hb_arraySet( aColor, j + 1, pitemColor );
        hb_itemRelease( pitemColor );
     }

     hb_itemRelease( pHandle );

     if( !hb_itemParamStoreRelease( 2, aColor ) && aColor )
          hb_itemRelease( aColor );

     hb_xfree( ( void * ) colors );
     hb_retni( sta );

  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBGETRECTANGLE2 )
{
   LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
   if( linGrBrush )
   {
       int j;
       Status sta;
       PHB_ITEM pitemRect;
       Rect * rect = ( Rect * ) hb_xgrab( sizeof( Rect ) * 2 );
       PHB_ITEM pHandle = hb_itemNew( NULL );
       sta = linGrBrush->GetRectangle( rect );

       Rect * hRect = new Rect( rect->X, rect->Y, rect->Width, rect->Height );

       hb_itemPutPtr( pHandle, hRect );
       pitemRect = hb_itemDoC( "GPRECT", 0 );
       hb_objSendMsg( pitemRect, "CONVERTRECTHANDLE", 1, pHandle );

       hb_itemRelease( pHandle );

       if( !hb_itemParamStoreRelease( 2, pitemRect ) && pitemRect )
            hb_itemRelease( pitemRect );

       hb_xfree( ( void * ) rect );
       hb_retni( sta );

   } else
       hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBGETRECTANGLE  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        if( linGrBrush ){

                 int j;
     Status sta;
     PHB_ITEM pitemRect;
                 RectF * rect = ( RectF * ) hb_xgrab( sizeof( RectF )  );
     PHB_ITEM pHandle = hb_itemNew( NULL );

                 sta = linGrBrush->GetRectangle( rect );
     RectF * hRect = new RectF( rect->X, rect->Y, rect->Width, rect->Height );

     hb_itemPutPtr( pHandle, hRect );
     pitemRect = hb_itemDoC( "GPRECTF", 0 );
     hb_objSendMsg( pitemRect, "CONVERTRECTFHANDLE", 1, pHandle );

     hb_itemRelease( pHandle );

     if( !hb_itemParamStoreRelease( 2, pitemRect ) && pitemRect )
          hb_itemRelease( pitemRect );

     hb_xfree( ( void * ) rect );
     hb_retni( sta );

  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBGETTRANSFORM  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        if( linGrBrush ){

                 int j;
     Status sta;
     PHB_ITEM pitemRect;
                 Matrix matrix;
     PHB_ITEM pHandle = hb_itemNew( NULL );
     REAL * m = ( REAL * ) hb_xgrab( sizeof( REAL ) * 6 );

                 sta = linGrBrush->GetTransform( &matrix );

                 matrix.GetElements( m );

     Matrix * hMatrix = new Matrix( m[ 0 ], m[ 1 ], m[ 2 ], m[ 3 ], m[ 4 ], m[ 5 ]  );

     hb_xfree( m );

     hb_itemPutPtr( pHandle, hMatrix );
     pitemRect = hb_itemDoC( "GPMATRIX", 0 );
     hb_objSendMsg( pitemRect, "CONVERTMATRIXHANDLE", 1, pHandle );

     hb_itemRelease( pHandle );

     if( !hb_itemParamStoreRelease( 2, pitemRect ) && pitemRect )
          hb_itemRelease( pitemRect );

     hb_retni( sta );

  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETTRANSFORM  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        Matrix * matrix = hb_Matrix_par( 2 );
        if( linGrBrush && matrix ){
                 Status sta;
     REAL * m = ( REAL * ) hb_xgrab( sizeof( REAL ) * 6 );
                 matrix->GetElements( m );
                 Matrix oMatrix( m[ 0 ], m[ 1 ], m[ 2 ], m[ 3 ], m[ 4 ], m[ 5 ] );
                 hb_xfree( m );
                 sta = linGrBrush->SetTransform( &oMatrix );
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETWRAPMODE  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        WrapMode wrapmode  = ( WrapMode ) hb_parni( 2 );
        if( linGrBrush  ){
                 Status sta;
                 sta = linGrBrush->SetWrapMode( wrapmode );
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBGETWRAPMODE  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        if( linGrBrush  ){
                 WrapMode wrapmode;
                 wrapmode = linGrBrush->GetWrapMode();
                 hb_retni( wrapmode );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETGAMMACORRECTION  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        BOOL useGammaCorrection  = hb_parl( 2 );
        if( linGrBrush  ){
                 Status sta;
                 sta = linGrBrush->SetGammaCorrection( useGammaCorrection );
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( _GPLGBMULTIPLYTRANSFORM  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        Matrix * matrix = hb_Matrix_par( 2 );
        MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );
        if( linGrBrush && matrix ){
                 Status sta;
                 sta = linGrBrush->MultiplyTransform(matrix, order);
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBRESETTRANSFORM )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        if( linGrBrush ){
                 Status sta;
                 sta = linGrBrush->ResetTransform();
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBROTATETRANSFORM  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        REAL angle = ( REAL ) hb_parnd( 2 );
        MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );
        if( linGrBrush ){
                 Status sta;
                 sta = linGrBrush->RotateTransform(angle, order);
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSCALETRANSFORM  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        REAL sx = ( REAL ) hb_parnd( 2 );
        REAL sy = ( REAL ) hb_parnd( 3 );

        MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );

        if( linGrBrush ){
                 Status sta;
                 sta = linGrBrush->ScaleTransform(sx, sy, order);
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETBLENDBELLSHAPE  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        REAL focus = ( REAL ) hb_parnd( 2 );
        REAL scale = ( REAL ) hb_parnd( 3 );

        if( linGrBrush ){
                 Status sta;
                 sta = linGrBrush->SetBlendBellShape(focus, scale );
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETBLENDTRIANGULARSHAPE  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        REAL focus = ( REAL ) hb_parnd( 2 );
        REAL scale = ( REAL ) hb_parnd( 3 );

        if( linGrBrush ){
                 Status sta;
                 sta = linGrBrush->SetBlendTriangularShape(focus, scale );
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBSETLINEARCOLORS )
{
         LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
   Color * color1 = hb_Color_par( 2 );
   Color * color2 = hb_Color_par( 3 );

         if( linGrBrush && color1 && color2 ){

      Color oColor1( color1->GetValue() );
          Color oColor2( color2->GetValue() );
      Status sta;
                  sta = linGrBrush->SetLinearColors(oColor1, oColor2 );
                  hb_retni( sta );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( _GPLGBTRANSLATETRANSFORM  )
{
        LinearGradientBrush * linGrBrush = hb_LGB_par( 1 );
        REAL sx = ( REAL ) hb_parnd( 2 );
        REAL sy = ( REAL ) hb_parnd( 3 );

        MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );

        if( linGrBrush ){
                 Status sta;
                 sta = linGrBrush->TranslateTransform(sx, sy, order);
                 hb_retni( sta );
  }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


#pragma ENDDUMP



