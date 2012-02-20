#include "fivewin.ch"
#include "gdip.ch"

// Method                                Description
// OK, Pen::Clone                    The Pen::Clone method copies a Pen object.
// OK, Pen::GetAlignment             The Pen::GetAlignment method gets the alignment currently set for this Pen object.
// OK, Pen::GetBrush                 The Pen::GetBrush method gets the Brush object that is currently set for this Pen object.
// OK, Pen::GetColor                 The Pen::GetColor method gets the color currently set for this Pen object.
// OK, Pen::GetCompoundArray         The Pen::GetCompoundArray method gets the compound array currently set for this Pen object.
// OK, Pen::GetCompoundArrayCount    The Pen::GetCompoundArrayCount method gets the number of elements in a compound array.
// OK, Pen::GetCustomEndCap          The Pen::GetCustomEndCap method gets the custom end cap currently set for this Pen object.
// OK, Pen::GetCustomStartCap        The Pen::GetCustomStartCap method gets the custom start cap currently set for this Pen object.
// OK, Pen::GetDashCap               The Pen::GetDashCap method gets the dash cap style currently set for this Pen object.
// OK, Pen::GetDashOffset            The Pen::GetDashOffset method gets the distance from the start of the line to the start of the first space in a dashed line.
// OK, Pen::GetDashPattern           The Pen::GetDashPattern method gets an array of custom dashes and spaces currently set for this Pen object.
// OK, Pen::GetDashPatternCount      The Pen::GetDashPatternCount method gets the number of elements in a dash pattern array.
// OK, Pen::GetDashStyle             The Pen::GetDashStyle method gets the dash style currently set for this Pen object.
// OK, Pen::GetEndCap                The Pen::GetEndCap method gets the end cap currently set for this Pen object.
// OK, Pen::GetLastStatus            The Pen::GetLastStatus method returns a value that indicates the nature of this Pen object's most recent method failure.
// OK, Pen::GetLineJoin              The Pen::GetLineJoin method gets the line join style currently set for this Pen object.
// OK, Pen::GetMiterLimit            The Pen::GetMiterLimit method gets the miter length currently set for this Pen object.
// OK, Pen::GetPenType               The Pen::GetPenType method gets the type currently set for this Pen object.
// OK, Pen::GetStartCap              The Pen::GetStartCap method gets the start cap currently set for this Pen object.
// OK, Pen::GetTransform             The Pen::GetTransform method gets the world transformation matrix currently set for this Pen object.
// OK, Pen::GetWidth                 The Pen::GetWidth method gets the width currently set for this Pen object.
// OK, Pen::MultiplyTransform        The Pen::MultiplyTransform method updates the world transformation matrix of this Pen object with the product of itself and another matrix.
// OK, Pen::ResetTransform           The Pen::ResetTransform method sets the world transformation matrix of this Pen object to the identity matrix.
// OK, Pen::RotateTransform          The Pen::RotateTransform method updates the world transformation matrix of this Pen object with the product of itself and a rotation matrix.
// OK, Pen::ScaleTransform           The Pen::ScaleTransform method sets the Pen object's world transformation matrix equal to the product of itself and a scaling matrix.
// OK, Pen::SetAlignment             The Pen::SetAlignment method sets the alignment for this Pen object relative to the line.
// OK, Pen::SetBrush                 The Pen::SetBrush method sets the Brush object that a pen uses to fill a line.
// OK, Pen::SetColor                 The Pen::SetColor method sets the color for this Pen object.
// OK, Pen::SetCompoundArray         The Pen::SetCompoundArray method sets the compound array for this Pen object.
// OK, Pen::SetCustomEndCap          The Pen::SetCustomEndCap method sets the custom end cap for this Pen object.
// OK, Pen::SetCustomStartCap        The Pen::SetCustomStartCap method sets the custom start cap for this Pen object.
// OK, Pen::SetDashCap               The Pen::SetDashCap method sets the dash cap style for this Pen object.
// OK, Pen::SetDashOffset            The Pen::SetDashOffset method sets the distance from the start of the line to the start of the first dash in a dashed line.
// OK, Pen::SetDashPattern           The Pen::SetDashPattern method sets an array of custom dashes and spaces for this Pen object.
// OK, Pen::SetDashStyle             The Pen::SetDashStyle method sets the dash style for this Pen object.
// OK, Pen::SetEndCap                The Pen::SetEndCap method sets the end cap for this Pen object.
// OK, Pen::SetLineCap               The Pen::SetLineCap method sets the cap styles for the start, end, and dashes in a line drawn with this pen.
// OK, Pen::SetLineJoin              The Pen::SetLineJoin method sets the line join for this Pen object.
// OK, Pen::SetMiterLimit            The Pen::SetMiterLimit method sets the miter limit of this Pen object.
// OK, Pen::SetStartCap              The Pen::SetStartCap method sets the start cap for this Pen object.
// OK, Pen::SetTransform             The Pen::SetTransform method sets the world transformation of this Pen object.
// OK, Pen::SetWidth                 The Pen::SetWidth method sets the width for this Pen object.



function Pen( o, nWidth )
return GPPen():New( o, nWidth )

CLASS GPPen

  DATA handle

  METHOD New( o, nWidth )  CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD Clone( oPen )          CONSTRUCTOR
  METHOD GetAlignment()
  METHOD GetBrush()
  METHOD GetColor( oColor )        // Se le pasa un objeto Color y el método le dá valor
  METHOD GetCompoundArray( aDistances )
  METHOD GetCompoundArrayCount()
  METHOD GetCustomEndCap( oCustomLineCap )
  METHOD GetCustomStartCap( oCustomLineCap )
  METHOD GetDashCap()
  METHOD GetDashOffset()
  METHOD GetDashPattern( aDashPattern )
  METHOD GetDashPatternCount()
  METHOD GetDashStyle()
  METHOD GetEndCap()
  METHOD GetLastStatus()
  METHOD GetLineJoin()
  METHOD GetMiterLimit()
  METHOD GetPenType()
  METHOD GetStartCap()
  METHOD GetTransform(matrix)
  METHOD GetWidth()
  METHOD MultiplyTransform(matrix, order)
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetAlignment( PenAlignament )
  METHOD SetBrush( oBrush )
  METHOD SetColor( )
  METHOD SetCompoundArray()
  METHOD SetCustomEndCap()
  METHOD SetCustomStartCap()
  METHOD SetDashCap()
  METHOD SetDashOffset()
  METHOD SetDashPattern(dasharray)
  METHOD SetDashStyle()
  METHOD SetEndCap( linecap )
  METHOD SetLineCap()
  METHOD SetLineJoin()
  METHOD SetMiterLimit()
  METHOD SetStartCap( linecap )
  METHOD SetTransform()
  METHOD SetWidth( nWidth )

ENDCLASS

*********************************************************************************************************
  METHOD New( o, nWidth ) CLASS GPPen
*********************************************************************************************************

local iParams := pcount()

  if o:isKindOf( GPPen() )
     ::handle := ::Clone( o )                // Clonar un Pen
  else
     ::handle := _GPPen( o:handle, nWidth ) 
  endif

return self

*********************************************************************************************************
  METHOD Clone( oPen ) CLASS GPPen
*********************************************************************************************************

  ::handle := GPPenClone( oPen:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPen
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetAlignment() CLASS GPPen
*********************************************************************************************************

return GPPenGetAlignment( ::handle )

*********************************************************************************************************
  METHOD GetBrush( oBrush ) CLASS GPPen
*********************************************************************************************************

return GPPenGetBrush( ::handle, @oBrush )

*********************************************************************************************************
  METHOD GetColor( oColor ) CLASS GPPen
*********************************************************************************************************

return GPPenGetColor(::handle, @oColor )

*********************************************************************************************************
  METHOD GetCompoundArray( compoundarray ) CLASS GPPen
*********************************************************************************************************

return GPPenGetCompoundArray( ::handle, compoundarray )

*********************************************************************************************************
  METHOD GetCompoundArrayCount() CLASS GPPen
*********************************************************************************************************

return GPPenGetCompoundArrayCount(::handle)

*********************************************************************************************************
  METHOD GetCustomEndCap( oCustomLineCap ) CLASS GPPen
*********************************************************************************************************

return GPPenGetCustomEndCap(::handle, oCustomLineCap:handle )

*********************************************************************************************************
  METHOD GetCustomStartCap( oCustomLineCap ) CLASS GPPen
*********************************************************************************************************

return GPPenGetCustomStartCap(::handle, oCustomLineCap:handle )

*********************************************************************************************************
  METHOD GetDashCap() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashCap(::handle)

*********************************************************************************************************
  METHOD GetDashOffset() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashOffset(::handle)

*********************************************************************************************************
  METHOD GetDashPattern( adashArray ) CLASS GPPen
*********************************************************************************************************
local nElements := ::GetDashPatternCount()
local nStatus := Status.GenericError  // ??

if nElements > 0
   adashArray := afill(array(nElements),0)
   nStatus := GPPenGetDashPattern( ::handle, @adashArray, nElements )
endif

return nStatus

*********************************************************************************************************
  METHOD GetDashPatternCount() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashPatternCount(::handle)

*********************************************************************************************************
  METHOD GetDashStyle() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashStyle(::handle)

*********************************************************************************************************
  METHOD GetEndCap() CLASS GPPen
*********************************************************************************************************

return GPPenGetEndCap(::handle)

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPPen
*********************************************************************************************************

return GPPenGetLastStatus(::handle)

*********************************************************************************************************
  METHOD GetLineJoin() CLASS GPPen
*********************************************************************************************************

return GPPenGetLineJoin(::handle)

*********************************************************************************************************
  METHOD GetMiterLimit() CLASS GPPen
*********************************************************************************************************

return GPPenGetMiterLimit(::handle)

*********************************************************************************************************
  METHOD GetPenType() CLASS GPPen
*********************************************************************************************************

return GPPenGetPenType(::handle)

*********************************************************************************************************
  METHOD GetStartCap() CLASS GPPen
*********************************************************************************************************

return GPPenGetStartCap(::handle)

*********************************************************************************************************
  METHOD GetTransform(matrix) CLASS GPPen
*********************************************************************************************************

return GPPenGetTransform(::handle, matrix:handle)

*********************************************************************************************************
  METHOD GetWidth() CLASS GPPen
*********************************************************************************************************

return GPPenGetWidth(::handle)

*********************************************************************************************************
  METHOD MultiplyTransform(matrix, order) CLASS GPPen
*********************************************************************************************************

return GPPenMultiplyTransform(::handle,matrix:handle,order)

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPPen
*********************************************************************************************************

return GPPenResetTransform(::handle)

*********************************************************************************************************
  METHOD RotateTransform() CLASS GPPen
*********************************************************************************************************

return GPPenRotateTransform(::handle)

*********************************************************************************************************
  METHOD ScaleTransform() CLASS GPPen
*********************************************************************************************************

return GPPenScaleTransform(::handle)

*********************************************************************************************************
  METHOD SetAlignment( PenAlignment ) CLASS GPPen
*********************************************************************************************************

return GPPenSetAlignment( ::handle, PenAlignment )

*********************************************************************************************************
  METHOD SetBrush( oBrush ) CLASS GPPen
*********************************************************************************************************

return GPPenSetBrush( ::handle, oBrush:handle )

*********************************************************************************************************
  METHOD SetColor( oColor ) CLASS GPPen
*********************************************************************************************************

return GPPenSetColor( ::handle, oColor:handle )

*********************************************************************************************************
  METHOD SetCompoundArray() CLASS GPPen
*********************************************************************************************************

return GPPenSetCompoundArray(::handle)

*********************************************************************************************************
  METHOD SetCustomEndCap( customlinecap ) CLASS GPPen
*********************************************************************************************************

return GPPenSetCustomEndCap(::handle, customlinecap:handle)

*********************************************************************************************************
  METHOD SetCustomStartCap( customlinecap ) CLASS GPPen
*********************************************************************************************************

return GPPenSetCustomStartCap(::handle, customlinecap:handle )

*********************************************************************************************************
  METHOD SetDashCap( dashcap ) CLASS GPPen
*********************************************************************************************************

return GPPenSetDashCap( ::handle, dashcap )

*********************************************************************************************************
  METHOD SetDashOffset() CLASS GPPen
*********************************************************************************************************

return GPPenSetDashOffset(::handle)

*********************************************************************************************************
  METHOD SetDashPattern( dasharray ) CLASS GPPen
*********************************************************************************************************

return GPPenSetDashPattern( ::handle, dasharray )

*********************************************************************************************************
  METHOD SetDashStyle( dashStyle ) CLASS GPPen
*********************************************************************************************************

return GPPenSetDashStyle( ::handle, dashStyle )

*********************************************************************************************************
  METHOD SetEndCap( linecap ) CLASS GPPen
*********************************************************************************************************

return GPPenSetEndCap( ::handle, linecap )

*********************************************************************************************************
  METHOD SetLineCap( startCap, dashCap, endCap) CLASS GPPen
*********************************************************************************************************

return 0//GPPenSetLineCap( ::handle, startCap, endCap, dashCap )

*********************************************************************************************************
  METHOD SetLineJoin( linejoin ) CLASS GPPen
*********************************************************************************************************

return GPPenSetLineJoin( ::handle, linejoin )

*********************************************************************************************************
  METHOD SetMiterLimit() CLASS GPPen
*********************************************************************************************************

return 0//GPPenSetMiterLimit(::handle)

*********************************************************************************************************
  METHOD SetStartCap( linecap ) CLASS GPPen
*********************************************************************************************************

return GPPenStartCap( ::handle, linecap )

*********************************************************************************************************
  METHOD SetTransform(matrix) CLASS GPPen
*********************************************************************************************************

return GPPenSetTransform(::handle, matrix:handle)

*********************************************************************************************************
  METHOD SetWidth( nWidth ) CLASS GPPen
*********************************************************************************************************

return GPPenSetWidth( ::handle, nWidth )






#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( _GPPEN )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_PEN ); 
   GDIPLUS * p = hb_GDIPLUS_par( 1 );

   switch( GP_OBJECT_TYPE( p ) ){
      Pen* pen ;
      case GP_IT_COLOR:{
         Color* c = (Color*) GP_GET( p );
         pen = new Pen( *c, (REAL)hb_parnd( 2 ));
         GP_SET( pObj, pen );
         break;
      }
      //TODO colocar el resto de los brush posibles
      case GP_IT_SOLIDBRUSH:{
         Brush* b = (Brush*) p->pObject;
         pen = new Pen( b, (REAL)hb_parnd( 2 ));
         GP_SET( pObj, pen );
         break;   
      }
   }
   
   hb_GDIPLUS_ret( pObj );   
}

HB_FUNC( GPPENCLONE )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( p ) ){
      Pen* pen = (Pen*) GP_GET( p );
      Pen * clone;
      GDIPLUS * pObj = gdiplus_new( GP_IT_PEN ); 
      clone = pen->Clone();
      GP_SET( pObj, clone );
      hb_GDIPLUS_ret( pObj );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPENGETALIGNMENT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      PenAlignment pa = p->GetAlignment();
      hb_retni( pa );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
          
}

HB_FUNC( GPPENGETBRUSH )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      BrushType type;
      Pen* p = (Pen*) GP_GET( pObj );
      Brush * b = p->GetBrush();
      PHB_ITEM pitem;
      
      type = b->GetType();
      switch( type ){
         case BrushTypeSolidColor:
            pitem = GPNewGDIPLUSObject( b, GP_IT_SOLIDBRUSH );
//            pitem = GPNewSolidBrushObject( *(( SolidBrush *) b) );
            if( !hb_itemParamStoreRelease( 2, pitem ))
               hb_itemRelease( pitem );
            break;                  
      }
      
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
}

HB_FUNC( GPPENGETCOLOR )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      BrushType type;
      Pen* p = (Pen*) GP_GET( pObj );
      Color c;
      PHB_ITEM pitem;
      Status sta;
      
      p->GetColor( &c );
      pitem = GPNewGDIPLUSObject( &c, GP_IT_COLOR );
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );
        
      hb_retni( sta );      
      
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPPENGETCOMPOUNDARRAY )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   int iLen;
   REAL * pReal;
   PHB_ITEM aCompoundArray = hb_param( 2, HB_IT_ARRAY );
   INT j;
   iLen = hb_arrayLen( aCompoundArray );
   pReal = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );

   for( j = 0; j < iLen; j++ )
   {
      pReal[ j ] = ( REAL ) hb_arrayGetND( aCompoundArray, j + 1 );
   }

   hb_retni( (int) p->GetCompoundArray( pReal, iLen ) );
   hb_xfree( ( void *) pReal );

}

HB_FUNC( GPPENGETCOMPOUNDARRAYCOUNT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetCompoundArrayCount() );

}

HB_FUNC( GPPENGETCUSTOMENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* ccp = (CustomLineCap*) hb_parptr( 2 );
   hb_parni( (int) p->GetCustomEndCap( ccp ));
}


HB_FUNC( GPPENGETCUSTOMSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* clc = (CustomLineCap*) hb_parptr( 2 );
   hb_parni( (int) p->GetCustomStartCap( clc ));
}


HB_FUNC( GPPENGETDASHCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_parni( (int) p->GetDashCap());
}

HB_FUNC( GPPENGETDASHOFFSET )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetDashOffset() );
}

HB_FUNC( GPPENGETDASHPATTERN )
{
  Pen* p = (Pen*) hb_parptr( 1 );
  int iCount = hb_parni( 3 );
  PHB_ITEM pArray = hb_param( 2, HB_IT_ARRAY );
  REAL * real = ( REAL * ) hb_xgrab( sizeof( REAL ) * iCount );
  int j, iStatus;
  iStatus = p->GetDashPattern( real, iCount );
  for( j = 0; j < iCount; j ++ )
  {
     hb_arraySetND( pArray, j + 1, ( DOUBLE ) real[j] );
  }
  hb_xfree( real );
  hb_storvptr( pArray, 2 );
  hb_itemRelease( pArray );
  hb_retni( iStatus );
}

// INT GetDashPatternCount();
HB_FUNC( GPPENGETDASHPATTERNCOUNT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetDashPatternCount() );
}

// DashStyle GetDashStyle();
HB_FUNC( GPPENGETDASHSTYLE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetDashStyle() );
}

// LineCap GetEndCap();
HB_FUNC( GPPENGETENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetEndCap() );
}

// Status GetLastStatus();
HB_FUNC( GPPENGETLASTSTATUS )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetLastStatus() );
}

// LineJoin GetLineJoin();
HB_FUNC( GPPENGETLINEJOIN )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetLineJoin() );
}

// REAL GetMiterLimit();
HB_FUNC( GPPENGETMITERLIMIT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retnd( (int) p->GetMiterLimit() );
}

// PenType GetPenType();
HB_FUNC( GPPENGETPENTYPE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetPenType() );
}

HB_FUNC( GPPENGETSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetStartCap() );
}

HB_FUNC( GPPENGETTRANSFORM )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Matrix* m = (Matrix*) hb_parptr( 2 );
   hb_retni( (int) p->GetTransform(m) );
}

HB_FUNC( GPPENGETWIDTH )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetWidth() );
}

HB_FUNC( GPPENMULTIPLYTRANSFORM )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Matrix* m = (Matrix*) hb_parptr( 2 );
   MatrixOrder mo = (MatrixOrder) hb_parni( 3 );

   hb_retni( (int) p->MultiplyTransform(m, mo) );
}


HB_FUNC( GPPENRESETTRANSFORM )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->ResetTransform() );
}

HB_FUNC( GPPENROTATETRANSFORM )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->RotateTransform((REAL)hb_parnd(2),(MatrixOrder)hb_parnl(3)) );
}


HB_FUNC( GPPENSCALETRANSFORM )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->ScaleTransform((REAL)hb_parnd(2),(REAL)hb_parnd(3),(MatrixOrder)hb_parni(4)) );   
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );   
      
}

HB_FUNC( GPPENSETALIGNMENT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      PenAlignment pa = (PenAlignment) hb_parni( 2 );
      hb_retni( (int) p->SetAlignment( pa ) );
   
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}

HB_FUNC( GPPENSETBRUSH )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pB   = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_PEN( pObj ) && GP_IS_BRUSH( pB ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      Brush * b = ( Brush * ) GP_GET( pB );
      hb_retni( p->SetBrush( b ) );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

HB_FUNC( GPPENSETCOLOR )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pB   = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_PEN( pObj ) && GP_IS_COLOR( pB ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      Color * b = ( Color * ) GP_GET( pB );
      hb_retni( p->SetColor( *b ) );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPPENSETCOMPOUNDARRAY )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   int iLen;
   REAL * pReal;
   PHB_ITEM aCompoundArray = hb_param( 2, HB_IT_ARRAY );
   INT j;
   iLen = hb_arrayLen( aCompoundArray );
   pReal = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );

   for( j = 0; j < iLen; j++ )
   {
      pReal[ j ] = ( REAL ) hb_arrayGetND( aCompoundArray, j + 1 );
   }

   hb_retni( (int) p->SetCompoundArray( pReal, iLen ) );
   hb_xfree( ( void *) pReal );
}


HB_FUNC( GPPENSETCUSTOMENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* clc = (CustomLineCap*)hb_parptr( 2 );
   hb_retni( (int) p->SetCustomEndCap(clc) );
}

HB_FUNC( GPPENSETCUSTOMSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* clc = (CustomLineCap*)hb_parptr( 2 );
   hb_retni( (int) p->SetCustomStartCap( clc ) );
}

HB_FUNC( GPPENSETDASHCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetDashCap( (DashCap) hb_parni( 2 ) ) );
}

HB_FUNC( GPPENSETDASHOFFSET )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetDashOffset( (REAL) hb_parnd( 2 ) ) );
}

HB_FUNC( GPPENSETDASHPATTERN )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   int iLen;
   REAL * pReal;
   PHB_ITEM aDashVals = hb_param( 2, HB_IT_ARRAY );
   INT j;
   iLen = hb_arrayLen( aDashVals );
   pReal = ( REAL * ) hb_xgrab( sizeof( REAL )* iLen );

   for( j = 0; j < iLen; j++ )
   {
      pReal[ j ] = ( REAL ) hb_arrayGetND( aDashVals, j + 1 );
   }

   hb_retni( (int) p->SetDashPattern( pReal, iLen ) );
   hb_xfree( ( void *) pReal );
}

HB_FUNC( GPPENSETDASHSTYLE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetDashStyle( (DashStyle) hb_parni( 2 ) ) );
}

HB_FUNC( GPPENSETENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetEndCap( (LineCap) hb_parni( 2 ) ) );
}


HB_FUNC( GPPENSETLINEJOIN )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetLineJoin( (LineJoin) hb_parni( 2 ) ) );
}

HB_FUNC( GPPENSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetStartCap( (LineCap) hb_parni( 2 ) ) );
}

HB_FUNC( GPPENSETTRANSFORM )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Matrix* m = (Matrix*) hb_parptr( 2 );
   hb_retni( (int) p->SetTransform( m ) );
}





// Status SetWidth(
//   [in]  REAL width
// );
HB_FUNC( GPPENSETWIDTH )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetWidth( (REAL) hb_parnd( 2 ) ) );
}


#pragma ENDDUMP
