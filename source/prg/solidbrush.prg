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

  ::handle := _GPSolidBrush( oColor:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSolidBrush
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD GetColor( oColor ) CLASS GPSolidBrush
*********************************************************************************************************

return _GPSolidBrushGetColor( ::handle, @oColor )

*********************************************************************************************************
  METHOD SetColor( oColor ) CLASS GPSolidBrush
*********************************************************************************************************

return _GPSolidBrushSetColor( ::handle, oColor:handle )



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
#include <hbapicls.h>

HB_FUNC( _GPSOLIDBRUSH )
{
   Color* c = hb_Color_par( 1 );
   SolidBrush* b = new SolidBrush( *c );
   hb_SolidBrush_ret( b );
}


HB_FUNC( _GPSOLIDBRUSHSETCOLOR )
{
  
  SolidBrush* b = hb_SolidBrush_par( 1 );
  Color * c =  hb_Color_par( 2 );
  
  if( b && c )
  {
     Color hColor( c->GetValue() );
     hb_retni( b->SetColor( hColor ) );
  
  }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
   

}


HB_FUNC( _GPSOLIDBRUSHGETCOLOR )
{
  
  SolidBrush* b = hb_SolidBrush_par( 1 );
  
  if( b )
  {  
     PHB_ITEM pitemColor;
     PHB_ITEM pHandle = hb_itemNew( NULL );
     Color c, *hColor;
     Status sta;
     sta = b->GetColor( &c );
     pitemColor = hb_itemDoC( "GPCOLOR", 0 );
     
     hColor = new Color( c.GetValue() ); 
     
     hb_itemPutPtr( pHandle, hColor );

     hb_objSendMsg( pitemColor, "CONVERTCOLORHANDLE", 1, pHandle );
     
     hb_itemRelease( pHandle );

     if( !hb_itemParamStoreRelease( 2, pitemColor ))
        hb_itemRelease( pitemColor );
     
     hb_retni( sta );
  
  }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
   

}

#pragma ENDDUMP
