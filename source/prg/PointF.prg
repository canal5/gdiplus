#include "fivewin.ch"


function PointF( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPPointF():New()
         exit
      case 1
         oObj = GPPointF():New( aParams[ 1 ] )
         exit
      case 2
         oObj = GPPointF():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oObj


CLASS GPPointF

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD X( nValue ) SETGET
  METHOD Y( nValue ) SETGET
  METHOD Equals( p ) OPERATOR "=="

  METHOD Substract OPERATOR "-"
  METHOD Add       OPERATOR "+"

//Constructor
//Point::Point()
//Point::Point(Point&)
//Point::Point(REAL,REAL)
//Point::Point(Size&)


//Equals
//operator-(Point&)
//operator+(Point&)


ENDCLASS

*********************************************************************************************************
  METHOD New( p1, p2 ) CLASS GPPointF
*********************************************************************************************************

local iParams := PCount()

  switch( iParams )
     case 0
        ::handle := C5_GPPointF()
        exit
     case 1
        ::handle = C5_GPPointF( p1:handle )
        exit
     case 2
        ::handle := C5_GPPointF( p1, p2 )
  endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPointF
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD X( nValue ) CLASS GPPointF
*********************************************************************************************************

if pcount() > 0
   return C5GPPointFX(::handle, nValue)
endif

return C5GPPointFX(::handle)


*********************************************************************************************************
  METHOD Y( nValue ) CLASS GPPointF
*********************************************************************************************************

if pcount() > 0
   return C5GPPointFY(::handle, nValue)
endif

return C5GPPointFY(::handle)

*********************************************************************************************************
  METHOD Substract( p ) CLASS GPPointF
*********************************************************************************************************

return C5GPPointFSubstract( ::handle, p:handle )

*********************************************************************************************************
  METHOD Add( p ) CLASS GPPointF
*********************************************************************************************************

return C5GPPointFAdd( ::handle, p:handle )

*********************************************************************************************************
  METHOD Equals( p ) CLASS GPPointF
*********************************************************************************************************

return C5GPPointFEquals( ::handle, p:handle )


//*********************************************************************************************************
//  METHOD () CLASS GPPointF
//*********************************************************************************************************
//
//return GPPointF(::handle)


//Constructors
//
//The Point class has the following constructors.
//
//Constructor                             Description
//Point::Point()                        Creates a Point object and initializes the X and Y data members to zero. This is the default constructor.
//Point::Point(Point&)                 Creates a new Point object and copies the data from another Point object.
//Point::Point(REAL,REAL)               Creates a Point object using two real numbers to specify the X and Y data members.
//Point::Point(Size&)                  Creates a Point object using a Size object to specify the X and Y data members.
//
//
//Methods
//
//The Point class has the following methods.
//
//Method                                  Description
//Point::Equals                          The Point::Equals method determines whether two Point objects are equal. Two points are considered equal if they have the same X and Y data members.
//Point::operator-(Point&)              The Point::operator- method subtracts the X and Y data members of two Point objects.
//Point::operator+(Point&)              The Point::operator+ method adds the X and Y data members of two Point objects.


#pragma BEGINDUMP
#include <gc.h>


HB_FUNC( C5_GPPOINTF )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_POINTF );
   PointF* ptr;
   int iParams = hb_pcount();

   switch( iParams ){
      case 0:
         ptr = new PointF();
         break;
      case 1:
       {
         GDIPLUS * p2 = hb_GDIPLUS_par( 1 );
         if( GP_IS_POINTF( p2 ) ){
            PointF * point = ( PointF * ) GP_GET( p2 );
            ptr =  new PointF( *point );
         } else if( GP_IS_SIZE( p2 ) ){
            SizeF * size = ( SizeF * ) GP_GET( p2 );
            ptr =  new PointF( *size );
         }
         break;
       }
      case 2:
         ptr = new PointF( (REAL) hb_parnd( 1 ), (REAL) hb_parnd( 2 ) );
         break;
   }

   GP_SET( pObj, ptr );

   hb_GDIPLUS_ret( pObj );
}


HB_FUNC( C5GPPOINTFX )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_POINTF( p ) ){
      PointF * ptr = ( PointF * ) GP_GET( p );

      if( hb_pcount() > 1 )
         ptr->X = (REAL) hb_parnd( 2 );

      hb_retnd( ( double ) ptr->X );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPOINTFY )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_POINTF( p ) ){
      PointF * ptr = ( PointF * ) GP_GET( p );

      if( hb_pcount() > 1 )
         ptr->Y = (REAL) hb_parnd( 2 );

       hb_retnd( ( double ) ptr->Y );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPOINTFSUBSTRACT )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );

   if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
      PHB_ITEM pitem;
      PointF * ptr1 = ( PointF * ) GP_GET( p1 );
      PointF * ptr2 = ( PointF * ) GP_GET( p2 );
      PointF point3 = *ptr1 - *ptr2;
      pitem = GPNewGDIPLUSObject( &point3, GP_IT_POINTF );

      hb_itemReturnRelease( pitem );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPOINTFADD )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );

   if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
      PHB_ITEM pitem;
      PointF * ptr1 = ( PointF * ) GP_GET( p1 );
      PointF * ptr2 = ( PointF * ) GP_GET( p2 );
      PointF point3 = *ptr1 + *ptr2;
      pitem = GPNewGDIPLUSObject( &point3, GP_IT_POINTF );

      hb_itemReturnRelease( pitem );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPOINTFEQUALS )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );

   if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
      PHB_ITEM pitem;
      PointF * ptr1 = ( PointF * ) GP_GET( p1 );
      PointF * ptr2 = ( PointF * ) GP_GET( p2 );

      hb_retl( ptr1->Equals( *ptr2 ) );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




