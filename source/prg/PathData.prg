#include "fivewin.ch"


function PathData()

return GPPathData():New()


CLASS GPPathData

  DATA handle
  DATA xCount
  DATA xPoints
  DATA xTypes


  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()
  
  METHOD Points() SETGET
  METHOD Count()  SETGET
  METHOD Types()  SETGET

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPathData
*********************************************************************************************************

  ::handle = _GPPathData()

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPathData
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD Count() CLASS GPPathData
*********************************************************************************************************

   if ::xCount == NIL 
      ::xCount = GPPathDataCount(::handle)
   endif

return ::xCount

*********************************************************************************************************
  METHOD Points() CLASS GPPathData
*********************************************************************************************************

   if ::xPoints == NIL 
      ::xPoints = GPPathDataPoint(::handle)
   endif

return ::xPoints


*********************************************************************************************************
  METHOD Types() CLASS GPPathData
*********************************************************************************************************

   if ::xTypes == NIL 
      ::xTypes = GPPathDataTypes(::handle)
   endif

return ::xTypes

//*********************************************************************************************************
//  METHOD () CLASS GPPathData
//*********************************************************************************************************
//
//return GPPathData(::handle)

//Constructors
//
//The PathData class has the following constructors.
//
//Constructor                   Description
//PathData::PathData()          Creates a PathData::PathData object. The Count data member is initialized to 0. The Points and Types data members are initialized to NULL.
//
//
//Data Members
//
//The following table lists the members exposed by the PathData object.
//
//Data Members    Type      Description
//Count           INT       Number of PointF objects in the Points array. This is the same as the number of bytes in the Types array.
//Points          PointF *  Pointer to an array of path data points.
//Types           BYTE *    Pointer to an array of bytes. Each byte holds the point type and a set of flags for the corresponding point in the Points array. Possible point types and flags are listed in the PathPointType enumeration.


#pragma BEGINDUMP
#include <gc.h>
#include <hbapiitm.h>

HB_FUNC( _GPPATHDATA )
{

   GDIPLUS * pObj = gdiplus_new( GP_IT_PATHDATA );  
   PathData* ptr;
   ptr = new PathData();
   
   GP_SET( pObj, ptr );
   hb_GDIPLUS_ret( pObj );

}

HB_FUNC( GPPATHDATACOUNT )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PATHDATA( p ) ){
      PathData * o = ( PathData * ) GP_GET( p );
      hb_retni( o->Count );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPPATHDATAPOINT )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PATHDATA( p ) ){
      PathData * o = ( PathData * ) GP_GET( p );
      PHB_ITEM pArray = hb_itemArrayNew( o->Count );
      int j;
      
      for( j = 0; j < o->Count; j++ ){
         PHB_ITEM pitem = GPNewGDIPLUSObject( &o->Points[ j ], GP_IT_POINTF );
         hb_arraySet( pArray, j + 1, pitem );
         hb_itemRelease( pitem );
      }
      
      hb_itemReturnRelease( pArray );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPPATHDATATYPES )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PATHDATA( p ) ){
      PathData * o = ( PathData * ) GP_GET( p );
      PHB_ITEM pArray = hb_itemArrayNew( o->Count );
      int j;
      
      for( j = 0; j < o->Count; j++ ){
         hb_arraySetNI( pArray, j + 1, o->Types[ j ] );
      }
      
      hb_itemReturnRelease( pArray );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


/*
HB_FUNC( GPPATHDATA... )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PATHDATA( p ) ){
      PathData * o = ( PathData * ) GP_GET( p );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}
*/
#pragma ENDDUMP




