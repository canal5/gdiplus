#include "fivewin.ch"

function SolidBrush( oColor )
return GPSolidBrush():New( oColor )


CLASS GPSolidBrush

  DATA handle

  METHOD New( oColor ) CONSTRUCTOR

  METHOD     Destroy()
  DESTRUCTOR Destroy()

  METHOD GetColor()
  METHOD SetColor()

ENDCLASS

*********************************************************************************************************
  METHOD New( oColor ) CLASS GPSolidBrush
*********************************************************************************************************

  ::handle := C5_GPSolidBrush( oColor:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSolidBrush
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD GetColor( oColor ) CLASS GPSolidBrush
*********************************************************************************************************

return C5_GPSolidBrushGetColor( ::handle, @oColor )

*********************************************************************************************************
  METHOD SetColor( oColor ) CLASS GPSolidBrush
*********************************************************************************************************

return C5_GPSolidBrushSetColor( ::handle, oColor:handle )



//Constructors
//
//The SolidBrush class has the following constructors.
//
//Constructor                       Description
//SolidBrush::SolidBrush            Creates a SolidBrush object based on a color.
//
//
//Methods
//
//The SolidBrush class has the following methods.
//
//Method                            Description
//SolidBrush::GetColor              The SolidBrush::GetColor method gets the color of this solid brush.
//SolidBrush::SetColor              The SolidBrush::SetColor method sets the color of this solid brush.





#pragma BEGINDUMP
#include <hbvm.h>
#include <gc.h>

HB_FUNC( C5_GPSOLIDBRUSH )
{

   GDIPLUS * pObj = gdiplus_new( GP_IT_SOLIDBRUSH );
   GDIPLUS * pObjClr = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObjClr ) ){
      Color * c = ( Color * ) pObjClr->pObject;
      Color c2( c->GetValue() );
      SolidBrush* b = new SolidBrush( c2 );
      GP_SET( pObj, b );
      hb_GDIPLUS_ret( pObj );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5_GPSOLIDBRUSHSETCOLOR )
{
   GDIPLUS * pBrush = hb_GDIPLUS_par( 1 );
   GDIPLUS * pColor = hb_GDIPLUS_par( 2 );

   if( GP_IS_COLOR( pColor ) && GP_IS_SOLIDBRUSH( pBrush ) ){
     Color * c = ( Color * ) pColor->pObject;
     Color hColor( c->GetValue() );
     SolidBrush* b = ( SolidBrush * ) GP_GET( pBrush);
     hb_retni( b->SetColor( hColor ) );

  }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5_GPSOLIDBRUSHGETCOLOR )
{
   GDIPLUS * pBrush = hb_GDIPLUS_par( 1 );

   if( GP_IS_SOLIDBRUSH( pBrush ) )
   {
     PHB_ITEM pitemColor;
     Color c, *hColor;
     Status sta;
     SolidBrush* b = ( SolidBrush * ) GP_GET( pBrush);
     sta = b->GetColor( &c );

     pitemColor = GPNewGDIPLUSObject( &c, GP_IT_COLOR );

     GDIPLUS_StoreParam( 2, pitemColor );

     hb_retni( sta );

  }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );



}

#pragma ENDDUMP
