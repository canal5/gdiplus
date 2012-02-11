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
        if p1:IsKindOf( "GPPoint" )
           ::handle := _GPPointFromPoint( p1 )
        elseif p1:IsKindOf( "GPSize" )
           ::handle := _GPPointFromSize( p1 )
        endif
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
   Point* ptr;
   int iParams = hb_pcount();

   if( iParams == 0 )
       ptr = new Point();

   else if (iParams == 2 )
       ptr = new Point( (REAL) hb_parni( 1 ), (REAL) hb_parni( 2 ) );

   hb_Point_ret( ptr );
}

HB_FUNC( _GPPOINTFROMPOINT )
{
   Point * ptr;
   Point * par_Point = hb_Point_par( 1 );
   Point pf( par_Point->X, par_Point->Y );

   ptr = new Point( pf );

   hb_Point_ret( ptr );
}

HB_FUNC( _GPPOINTFROMSIZE )
{
   Point * ptr;
   Size * par_Size = hb_Size_par( 1 );
   Size sz( par_Size->Width, par_Size->Height );

   ptr = new Point( sz );

   hb_Point_ret( ptr );
}

HB_FUNC( GPPOINTX )
{
   Point * ptr = hb_Point_par( 1 );

   if( hb_pcount() > 1 )
   {
      ptr->X = (REAL) hb_parni( 2 );
   }

   hb_retni( ptr->X );
}

HB_FUNC( GPPOINTY )
{
   Point * ptr = hb_Point_par( 1 );

   if( hb_pcount() > 1 )
   {
      ptr->Y = (REAL) hb_parni( 2 );
   }

   hb_retni( ptr->Y );
}





HB_FUNC( DELETEPoint )
{
   //Point* clr = (Point*) hb_parptr( 1 );
   //delete (Point*) clr;
   //hb_ret();
}

//HB_FUNC( GPPoint... )
//{
//   Point* ptr = (Point*) hb_parptr( 1 );
//}

#pragma ENDDUMP




