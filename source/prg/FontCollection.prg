#include "fivewin.ch"


function FontCollection()

return GPFontCollection():New()


CLASS GPFontCollection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetFamilies()
  METHOD GetFamilyCount()
  METHOD GetLastStatus()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPFontCollection
*********************************************************************************************************

   ::handle := _GPFontCollection()

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPFontCollection
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD GetFamilies( A, B, C ) CLASS GPFontCollection
*********************************************************************************************************

return GPFontColGetFamilies( ::handle, A, @B, @C )

*********************************************************************************************************
  METHOD GetFamilyCount() CLASS GPFontCollection
*********************************************************************************************************

return GPFontColGetFamilyCount( ::handle )

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPFontCollection
*********************************************************************************************************

return 0




//Constructors
//
//The FontCollection class has the following constructors.
//
//Constructor                                      Description
//FontCollection::FontCollection                   Creates an empty FontCollection::FontCollection object.
//
//
//Methods
//
//The FontCollection class has the following methods.
//
//Method                                           Description
//FontCollection::GetFamilies                      The FontCollection::GetFamilies method gets the font families contained in this font collection.
//FontCollection::GetFamilyCount                   The FontCollection::GetFamilyCount method gets the number of font families contained in this font collection.
//FontCollection::GetLastStatus                    The FontCollection::GetLastStatus method returns a value that indicates the result of this FontCollection object's previous method call.






#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( _GPFONTCOLLECTION )
{
   FontCollection * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_FONTCOLLECTION );
   
   o = new FontCollection();
    
   GP_SET( pObj, ( void * ) o );
   hb_GDIPLUS_ret( pObj ); 
   
}

HB_FUNC( GPFONTCOLGETFAMILIES )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONTCOLLECTION( pObj ) )
   {
      FontCollection * o = ( FontCollection * ) GP_GET( pObj );
      int numFamilies = hb_parni( 2 );
      int numFound, j;
      PHB_ITEM pArray;
      PHB_ITEM pItem = hb_itemNew( NULL );
      FontFamily * families = ( FontFamily * ) hb_xgrab( sizeof( FontFamily ) * numFamilies );
      sta = o->GetFamilies( numFamilies, families, &numFound );
      pArray = hb_itemArrayNew( numFound );
      for( j = 0; j < numFound; j++ ){
         hb_arraySet( pArray, j + 1, GPNewGDIPLUSObject( families+j, GP_IT_FONTCOLLECTION ) );         
      }
      
      hb_itemPutNI( pItem, numFound );
      
      if( !hb_itemParamStoreRelease( 3, pArray ))
           hb_itemRelease( pArray );      

      if( !hb_itemParamStoreRelease( 4, pItem ))
           hb_itemRelease( pItem );     
      
      hb_retni( ( Status ) sta );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPFONTCOLGETFAMILYCOUNT  )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONTCOLLECTION( pObj ) )
   {
      FontCollection * o = ( FontCollection * ) GP_GET( pObj );
      hb_retni( o->GetFamilyCount() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( GPFONTCOLGETLASTSTATUS  )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_FONTCOLLECTION( pObj ) )
   {
      FontCollection * o = ( FontCollection * ) GP_GET( pObj );
      hb_retni( ( Status ) o->GetLastStatus() );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




