#include "fivewin.ch"


function RectF()

return GPRectF():New()


CLASS GPRectF

  DATA handle
  DATA X
  DATA Y
  DATA Width
  DATA Height

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//RectF::RectF()
//RectF::RectF(PointF&,SizeF&)
//RectF::RectF(REAL,REAL,REAL,REAL)

  METHOD Clone()
  METHOD Contains()
  METHOD Contains2()
  METHOD Contains3()
  METHOD Equals()
  METHOD GetBottom()
  METHOD GetBounds()
  METHOD GetLeft()
  METHOD GetLocation()
  METHOD GetRight()
  METHOD GetSize()
  METHOD GetTop()
  METHOD Inflate()
  METHOD Inflate2()
  METHOD Intersect()
  METHOD Intersect2()
  METHOD IntersectsWith()
  METHOD IsEmptyArea()
  METHOD Offset()
  METHOD Offset2()
  METHOD Union()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPRectF
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPRectF()
  elseif iParams == 1
     ::handle := _GPRectF( p1 )                               //
  elseif iParams == 3
     ::handle := _GPRectF( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPRectF( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPRectF( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPRectF( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPRectF( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRectF
*********************************************************************************************************

  if !empty(::handle)
     DeleteRectF( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD Clone() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Contains() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Contains2() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Contains3() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Equals() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetBottom() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetBounds() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLeft() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLocation() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetRight() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetSize() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetTop() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Inflate() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Inflate2() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Intersect() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Intersect2() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD IntersectsWith() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD IsEmptyArea() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Offset() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Offset2() CLASS GPRectF
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Union() CLASS GPRectF
*********************************************************************************************************

return 0



//Constructors
//
//The RectF class has the following constructors.
//
//Constructor                                     Description
//RectF::RectF()                                  Creates a RectF object and initializes the X and Y data members to zero. This is the default constructor.
//RectF::RectF(PointF&,SizeF&)                    Creates a RectF object by using a PointF object to initialize the X and Y data members and uses a SizeF object to initialize the Width and Height data members of this rectangle.
//RectF::RectF(REAL,REAL,REAL,REAL)               Creates a RectF object by using four integers to initialize the X, Y, Width, and Height data members.
//
//
//Methods
//
//The RectF class has the following methods.
//
//Method                                          Description
//RectF::Clone                                    The RectF::Clone method creates a new RectF object and initializes it with the contents of this RectF object.
//RectF::Contains(PointF&)                        The RectF::Contains method determines whether a point is inside this rectangle.
//RectF::Contains(REAL,REAL)                      The RectF::Contains method determines whether the point (x, y) is inside this rectangle.
//RectF::Contains(RectF&)                         The RectF::Contains method determines whether another rectangle is inside this rectangle.
//RectF::Equals                                   The RectF::Equals method determines whether two rectangles are the same.
//RectF::GetBottom                                The RectF::GetBottom method gets the y-coordinate of the bottom edge of the rectangle.
//RectF::GetBounds                                The RectF::GetBounds method makes a copy of this rectangle.
//RectF::GetLeft                                  The RectF::GetLeft method gets the x-coordinate of the left edge of the rectangle.
//RectF::GetLocation                              The RectF::GetLocation method gets the coordinates of the upper-left corner of this rectangle.
//RectF::GetRight                                 The RectF::GetRight method gets the x-coordinate of the right edge of the rectangle.
//RectF::GetSize                                  The RectF::GetSize method gets the width and height of this rectangle.
//RectF::GetTop                                   The RectF::GetTop method gets the y-coordinate of the top edge of the rectangle.
//RectF::Inflate(PointF&)                         The RectF::Inflate method expands the rectangle by the value of point.X on the left and right edges, and by the value of point.Y on the top and bottom edges.
//RectF::Inflate(REAL,REAL)                       The RectF::Inflate method expands the rectangle by dx on the left and right edges, and by dy on the top and bottom edges.
//RectF::Intersect(RectF&)                        The RectF::Intersect method replaces this rectangle with the intersection of itself and another rectangle.
//RectF::Intersect(RectF&,RectF&,RectF&)          The RectF::Intersect method determines the intersection of two rectangles and stores the result in a RectF object.
//RectF::IntersectsWith                           The RectF::IntersectsWith method determines whether this rectangle intersects another rectangle.
//RectF::IsEmptyArea                              The RectF::IsEmptyArea method determines whether this rectangle is empty.
//RectF::Offset(PointF&)                          The RectF::Offset method moves this rectangle horizontally a distance of point.X and vertically a distance of point.Y.
//RectF::Offset(REAL,REAL)                        The RectF::Offset method moves the rectangle by dx horizontally and by dx vertically.
//RectF::Union                                    The RectF::Union method determines the union of two rectangles and stores the result in a RectF object.
//
//Data Members
//
//The following table lists the members exposed by the RectF object.
//
//Data Members    Type    Description
//X               REAL    X-coordinate of the upper-left corner of the rectangle.
//Y               REAL    Y-coordinate of the upper-left corner of the rectangle.
//Width           REAL    Width of the rectangle.
//Height          REAL    Height of the rectangle.

















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPRECTF )
{
   //RectF* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new RectF();
   //else if (iParams == 1 )
   //    ptr = new RectF( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new RectF( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new RectF( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETERECTF )
{
   //RectF* clr = (RectF*) hb_parptr( 1 );
   //delete (RectF*) clr;
   //hb_ret();
}

//HB_FUNC( GPRECTF... )
//{
//   RectF* ptr = (RectF*) hb_parptr( 1 );
//}

#pragma ENDDUMP




