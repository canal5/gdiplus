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
        ::handle := _GPPointF()
        exit
     case 1
        ::handle = _GPPointF( p1 )
        exit
     case 2
        ::handle := _GPPointF( p1, p2 )
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
   return GPPointFX(::handle, nValue)
endif

return GPPointFX(::handle)


*********************************************************************************************************
  METHOD Y( nValue ) CLASS GPPointF
*********************************************************************************************************

if pcount() > 0
   return GPPointFY(::handle, nValue)
endif

return GPPointFY(::handle)

*********************************************************************************************************
  METHOD Substract( p ) CLASS GPPointF
*********************************************************************************************************
   
return GPPointFSubstract( ::handle, p:handle )

*********************************************************************************************************
  METHOD Add( p ) CLASS GPPointF
*********************************************************************************************************

return GPPointFAdd( ::handle, p:handle )

*********************************************************************************************************
  METHOD Equals( p ) CLASS GPPointF
*********************************************************************************************************

return GPPointFEquals( ::handle, p:handle )


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


HB_FUNC( _GPPOINTF )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_RECTF ); 	
   PointF* ptr;
   int iParams = hb_pcount();

   switch( iParams ){
      case 0:	
   	     ptr = new PointF();
   	     break;
   	  case 1:
   	   {
   	     GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
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


HB_FUNC( GPPOINTFX )
{
	
	 GDIPLUS * p = hb_GDIPLUS_par( 1 );
	 if( GP_IS_POINTF( p ) ){
      Point * ptr = ( Point * ) GP_GET( p );
      
      if( hb_pcount() > 1 )
	       ptr->X = (REAL) hb_parnd( 2 );
	       
	    hb_retnd( ( double ) ptr->X );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPPOINTFY )
{
	
	 GDIPLUS * p = hb_GDIPLUS_par( 1 );
	 if( GP_IS_POINTF( p ) ){
      Point * ptr = ( Point * ) GP_GET( p );

      if( hb_pcount() > 1 )
	       ptr->Y = (REAL) hb_parnd( 2 );

	     hb_retnd( ( double ) ptr->Y );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPOINTFSUBSTRACT )
{	
	 GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
	 GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
	 
	 if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
	 	  PHB_ITEM pitem;
      Point * ptr1 = ( Point * ) GP_GET( p1 );
      Point * ptr2 = ( Point * ) GP_GET( p2 );
      Point point3 = *ptr1 - *ptr2;
      pitem = GPNewPointObject( point3 );
      
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );
              
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPOINTFADD )
{	
	 GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
	 GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
	 
	 if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
	 	  PHB_ITEM pitem;
      Point * ptr1 = ( Point * ) GP_GET( p1 );
      Point * ptr2 = ( Point * ) GP_GET( p2 );
      Point point3 = *ptr1 + *ptr2;
      pitem = GPNewPointObject( point3 );
      
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );
              
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPOINTFEQUALS )
{	
	 GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
	 GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
	 
	 if( GP_IS_POINTF( p1 ) && GP_IS_POINTF( p2 ) ){
	 	  PHB_ITEM pitem;
      Point * ptr1 = ( Point * ) GP_GET( p1 );
      Point * ptr2 = ( Point * ) GP_GET( p2 );
      
      hb_retl( ptr1->Equals( *ptr2 ) ); 
                     
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




