#include "fivewin.ch"


function Point( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPPoint():New()
         exit
      case 1
         oObj = GPPoint():New( aParams[ 1 ] )
         exit
      case 2
         oObj = GPPoint():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oObj


CLASS GPPoint

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
  METHOD New( p1, p2 ) CLASS GPPoint
*********************************************************************************************************

local iParams := PCount()

  switch( iParams )
     case 0
        ::handle := _GPPoint()
        exit
     case 1
        ::handle = _GPPoint( p1 )
        exit
     case 2
        ::handle := _GPPoint( p1, p2 )
  endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPoint
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD X( nValue ) CLASS GPPoint
*********************************************************************************************************

if pcount() > 0
   return GPPointX(::handle, nValue)
endif

return GPPointX(::handle)


*********************************************************************************************************
  METHOD Y( nValue ) CLASS GPPoint
*********************************************************************************************************

if pcount() > 0
   return GPPointY(::handle, nValue)
endif

return GPPointY(::handle)

*********************************************************************************************************
  METHOD Substract( p ) CLASS GPPoint
*********************************************************************************************************
   
return GPPointSubstract( ::handle, p:handle )

*********************************************************************************************************
  METHOD Add( p ) CLASS GPPoint
*********************************************************************************************************

return GPPointAdd( ::handle, p:handle )

*********************************************************************************************************
  METHOD Equals( p ) CLASS GPPoint
*********************************************************************************************************

return GPPointEquals( ::handle, p:handle )


//*********************************************************************************************************
//  METHOD () CLASS GPPoint
//*********************************************************************************************************
//
//return GPPoint(::handle)


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


HB_FUNC( _GPPOINT )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_POINT );   
   Point* ptr;
   int iParams = hb_pcount();

   switch( iParams ){
      case 0: 
         ptr = new Point();
         break;
      case 1:
       {
         GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
         if( GP_IS_POINT( p2 ) ){
            Point * point = ( Point * ) GP_GET( p2 );
            ptr =  new Point( *point ); 
         } else if( GP_IS_SIZE( p2 ) ){
            Size * size = ( Size * ) GP_GET( p2 );
            ptr =  new Point( *size );            
         }
         break;
       }
      case 2:
         ptr = new Point( hb_parni( 1 ), hb_parni( 2 ) );
         break;
      
   }

   GP_SET( pObj, ptr );

   hb_GDIPLUS_ret( pObj );
}


HB_FUNC( GPPOINTX )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_POINT( p ) ){
      Point * ptr = ( Point * ) GP_GET( p );
      
      if( hb_pcount() > 1 )
         ptr->X = hb_parni( 2 );
         
      hb_retni( ptr->X );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPPOINTY )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_POINT( p ) ){
      Point * ptr = ( Point * ) GP_GET( p );

      if( hb_pcount() > 1 )
         ptr->Y = hb_parni( 2 );

       hb_retni( ptr->Y );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPOINTSUBSTRACT )
{ 
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_POINT( p1 ) && GP_IS_POINT( p2 ) ){
      PHB_ITEM pitem;
      Point * ptr1 = ( Point * ) GP_GET( p1 );
      Point * ptr2 = ( Point * ) GP_GET( p2 );
      Point point3 = *ptr1 - *ptr2;
      pitem = GPNewPointObject( point3 );
      
      hb_itemReturnRelease( pitem );
              
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPOINTADD )
{ 
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_POINT( p1 ) && GP_IS_POINT( p2 ) ){
      PHB_ITEM pitem;
      Point * ptr1 = ( Point * ) GP_GET( p1 );
      Point * ptr2 = ( Point * ) GP_GET( p2 );
      Point point3 = *ptr1 + *ptr2;
      pitem = GPNewPointObject( point3 );
      
      hb_itemReturnRelease( pitem );
              
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPOINTEQUALS )
{ 
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_POINT( p1 ) && GP_IS_POINT( p2 ) ){
      PHB_ITEM pitem;
      Point * ptr1 = ( Point * ) GP_GET( p1 );
      Point * ptr2 = ( Point * ) GP_GET( p2 );
      
      hb_retl( ptr1->Equals( *ptr2 ) ); 
                     
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




