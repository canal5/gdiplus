#include "fivewin.ch"


function Rect()

return GPRect():New()


CLASS GPRect

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPRect
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPRect()
  elseif iParams == 1
     ::handle := _GPRect( p1 )                               //
  elseif iParams == 3
     ::handle := _GPRect( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPRect( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPRect( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPRect( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPRect( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRect
*********************************************************************************************************

  if !empty(::handle)
     DeleteRect( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPRect
//*********************************************************************************************************
//
//return GPRect(::handle)

//Constructors
//
//The Rect class has the following constructors.
//
//Constructor                                 Description
//Rect::Rect()                                Creates a Rect object whose x-coordinate, y-coordinate, width, and height are all zero. This is the default constructor.
//Rect::Rect(INT,INT,INT,INT)                 Creates a Rect object by using four integers to initialize the X, Y, Width, and Height data members.
//Rect::Rect(Point&,Size&)                    Creates a Rect object by using a Point object to initialize the X and Y data members and a Size object to initialize the Width and Height data members.
//
//
//Methods
//
//The Rect class has the following methods.
//
//Method                                      Description
//Rect::Clone                                 The Rect::Clone method creates a new Rect object and initializes it with the contents of this Rect object.
//Rect::Contains(INT,INT)                     The Rect::Contains method determines whether the point ( x, y) is inside this rectangle.
//Rect::Contains(Point&)                      The Rect::Contains method determines whether a point is inside this rectangle.
//Rect::Contains(Rect&)                       The Rect::Contains method determines whether another rectangle is inside this rectangle.
//Rect::Equals                                The Rect::Equals method determines whether two rectangles are the same.
//Rect::GetBottom                             The Rect::GetBottom method gets the y-coordinate of the bottom edge of the rectangle.
//Rect::GetBounds                             The Rect::GetBounds method makes a copy of this rectangle.
//Rect::GetLeft                               The Rect::GetLeft method gets the x-coordinate of the left edge of the rectangle.
//Rect::GetLocation                           The Rect::GetLocation method gets the coordinates of the upper-left corner of the rectangle.
//Rect::GetRight                              The Rect::GetRight method gets the x-coordinate of the right edge of the rectangle.
//Rect::GetSize                               The Rect::GetSize method gets the width and height of the rectangle.
//Rect::GetTop                                The Rect::GetTop method gets the y-coordinate of the top edge of the rectangle.
//Rect::Inflate(INT,INT)                      The Rect::Inflate method expands the rectangle by dx on the left and right edges, and by dy on the top and bottom edges.
//Rect::Inflate(Point&)                       The Rect::Inflate method expands the rectangle by the value of point.X on the left and right edges, and by the value of point.Y on the top and bottom edges.
//Rect::Intersect(Rect&)                      The Rect::Intersect method replaces this rectangle with the intersection of itself and another rectangle.
//Rect::Intersect(Rect&,Rect&,Rect&)          The Rect::Intersect method determines the intersection of two rectangles and stores the result in a Rect object.
//Rect::IntersectsWith                        The Rect::IntersectsWith method determines whether this rectangle intersects another rectangle.
//Rect::IsEmptyArea                           The Rect::IsEmptyArea method determines whether this rectangle is empty.
//Rect::Offset(INT,INT)                       The Rect::Offset method moves the rectangle by dx horizontally and by dy vertically.
//Rect::Offset(Point&)                        The Rect::Offset method moves this rectangle horizontally a distance of point.X and vertically a distance of point.Y.
//Rect::Union                                 The Rect::Union method determines the union of two rectangles and stores the result in a Rect object.


//Data Members
//
//The following table lists the members exposed by the Rect object.
//
//Data Members    Type    Description
//X               INT     X-coordinate of the upper-left corner of the rectangle.
//Y               INT     Y-coordinate of the upper-left corner of the rectangle.
//Width           INT     Width of the rectangle.
//Height          INT     Height of the rectangle.




















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPRECT )
{
   //Rect* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Rect();
   //else if (iParams == 1 )
   //    ptr = new Rect( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Rect( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Rect( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETERECT )
{
   //Rect* clr = (Rect*) hb_parptr( 1 );
   //delete (Rect*) clr;
   //hb_ret();
}

//HB_FUNC( GPRECT... )
//{
//   Rect* ptr = (Rect*) hb_parptr( 1 );
//}

#pragma ENDDUMP




