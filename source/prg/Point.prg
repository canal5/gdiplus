#include "fivewin.ch"


function Point()

return GPPoint():New()


CLASS GPPoint

  DATA handle
  DATA X
  DATA Y

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//Point::Point()
//Point::Point(INT,INT)
//Point::Point(Point&)
//Point::Point(Size&)

//Equals
//operator-(Point&)
//operator+(Point&)


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPoint
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPPoint()
  elseif iParams == 1
     ::handle := _GPPoint( p1 )                               //
  elseif iParams == 3
     ::handle := _GPPoint( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPPoint( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPPoint( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPPoint( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPPoint( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPoint
*********************************************************************************************************

  if !empty(::handle)
     DeletePoint( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPPoint
//*********************************************************************************************************
//
//return GPPoint(::handle)


//Constructors
//
//The Point class has the following constructors.
//
//Constructor                          Description
//Point::Point()                       Creates a Point object and initializes the X and Y data members to zero. This is the default constructor.
//Point::Point(INT,INT)                Creates a Point object using two integers to initialize the X and Y data members.
//Point::Point(Point&)                 Creates a new Point object and copies the data members from another Point object.
//Point::Point(Size&)                  Creates a Point object using a Size object to initialize the X and Y data members.
//
//
//Methods
//
//The Point class has the following methods.
//
//Method                               Description
//Point::Equals                        The Point::Equals method determines whether two Point objects are equal. Two points are considered equal if they have the same X and Y data members.
//Point::operator-(Point&)             The Point::operator- method subtracts the X and Y data members of two Point objects.
//Point::operator+(Point&)             The Point::operator+ method adds the X and Y data members of two Point objects.
//
//
//Data Members
//
//The following table lists the members exposed by the Point object.
//
//Data Members    Type    Description
//X               INT     Horizontal coordinate.
//Y               INT     Vertical coordinate.
//





#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPOINT )
{
   //Point* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Point();
   //else if (iParams == 1 )
   //    ptr = new Point( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Point( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Point( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEPOINT )
{
   //Point* clr = (Point*) hb_parptr( 1 );
   //delete (Point*) clr;
   //hb_ret();
}

//HB_FUNC( GPPOINT... )
//{
//   Point* ptr = (Point*) hb_parptr( 1 );
//}

#pragma ENDDUMP




