#include "fivewin.ch"
#include "gdip.ch"

//Constructor
//Rect::Rect()
//Rect::Rect(PointF&,SizeF&)
//Rect::Rect(REAL,REAL,REAL,REAL)

function Rect( ... )
   local aParams := hb_aparams()
   local oRect
   local nLen := Len( aParams )

   switch nLen
      case 0
         oRect = GPRect():New()
         exit
      case 1
         oRect = GPRect():New( aParams[ 1 ] )
         exit
      case 2
         oRect = GPRect():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 4
         oRect = GPRect():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

return oRect


CLASS GPRect

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD X()
  METHOD Y()
  METHOD Width()
  METHOD Height()


  METHOD Clone()     HIDDEN
  METHOD Contains(x,y)
  METHOD Contains2(pt)
  METHOD Contains3(rc)
  METHOD Equals(rc)
  METHOD GetBottom()
  METHOD GetBounds(rc)
  METHOD GetLeft()
  METHOD GetLocation(pt)
  METHOD GetRight()
  METHOD GetSize()
  METHOD GetTop()
  METHOD Inflate(x,y)
  METHOD Inflate2(pt)
  METHOD Intersect(rc)
  METHOD Intersect2(rc1,rc2,rc3)
  METHOD IntersectsWith()
  METHOD IsEmptyArea()
  METHOD Offset()
  METHOD Offset2()
  METHOD Union()
  
  METHOD convertRectHandle( h )

ENDCLASS

*********************************************************************************************************
  METHOD New( p1, p2, p3, p4 ) CLASS GPRect
*********************************************************************************************************

local iParams := PCount()

  if iParams == 0
     ::handle := _GPRect()
  elseif iParams == 1
     ::handle := ::Clone( p1 )                      //
  elseif iParams == 2
     ::handle := _GPRect( p1:handle, p2:handle )   // oPoint, oSize
  elseif iParams == 4
     ::handle := _GPRect( p1, p2, p3, p4 )         //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRect
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone( o ) CLASS GPRect
*********************************************************************************************************

return GPRectClone(o:handle)

*********************************************************************************************************
  METHOD Contains(x,y) CLASS GPRect
*********************************************************************************************************

return GPRectContains( ::handle, X, Y )

*********************************************************************************************************
  METHOD Contains2( pt ) CLASS GPRect
*********************************************************************************************************

return GPRectContains2( ::handle, pt:handle )

*********************************************************************************************************
  METHOD Contains3( rc ) CLASS GPRect
*********************************************************************************************************

return GPRectContains3( ::handle, rc:handle )

*********************************************************************************************************
  METHOD Equals(rc) CLASS GPRect
*********************************************************************************************************

return GPRectEquals(::handle,rc:handle)

*********************************************************************************************************
  METHOD GetBottom() CLASS GPRect
*********************************************************************************************************

return GPRectGetBottom(::handle)

*********************************************************************************************************
  METHOD GetBounds(rc) CLASS GPRect
*********************************************************************************************************

return GPRectGetBounds( ::handle, rc:handle )

*********************************************************************************************************
  METHOD GetLeft() CLASS GPRect
*********************************************************************************************************

return GPRectGetLeft(::handle)

*********************************************************************************************************
  METHOD GetLocation(pt) CLASS GPRect
*********************************************************************************************************

return GPRectGetLocation(::handle, pt:handle)

*********************************************************************************************************
  METHOD GetRight() CLASS GPRect
*********************************************************************************************************

return GPRectGetRight(::handle)

*********************************************************************************************************
  METHOD GetSize() CLASS GPRect
*********************************************************************************************************

return 0 //GPRectGetSize(::handle)

*********************************************************************************************************
  METHOD GetTop() CLASS GPRect
*********************************************************************************************************

return GPRectGetTop(::handle)

*********************************************************************************************************
  METHOD Inflate(x,y) CLASS GPRect
*********************************************************************************************************

return GPRectInflate(::handle, X, Y)

*********************************************************************************************************
  METHOD Inflate2(pt) CLASS GPRect
*********************************************************************************************************

return GPRectInflate2(::handle, pt:handle)

*********************************************************************************************************
  METHOD Intersect(rc) CLASS GPRect
*********************************************************************************************************

return GPRectIntersect(::handle, rc:handle )

*********************************************************************************************************
  METHOD Intersect2(rc1, rc2, rc3) CLASS GPRect
*********************************************************************************************************

return GPRectIntersect2(::handle, rc1:handle, rc2:handle, rc3:handle )

*********************************************************************************************************
  METHOD IntersectsWith(rc) CLASS GPRect
*********************************************************************************************************

return GPRectIntersectsWith(::handle, rc:handle )

*********************************************************************************************************
  METHOD IsEmptyArea() CLASS GPRect
*********************************************************************************************************

return GPRectIsEmptyArea(::handle)

*********************************************************************************************************
  METHOD Offset(x,y) CLASS GPRect
*********************************************************************************************************

return GPRectOffset(::handle,x,y)

*********************************************************************************************************
  METHOD Offset2(pt) CLASS GPRect
*********************************************************************************************************

return GPRectOffset2(::handle, pt:handle)

*********************************************************************************************************
  METHOD Union(rc1,rc2,rc3) CLASS GPRect
*********************************************************************************************************

return GPRectUnion(::handle, rc1:handle, rc2:handle, rc3:handle )

*********************************************************************************************************
  METHOD X() CLASS GPRect
*********************************************************************************************************

return GPRectX(::handle)

*********************************************************************************************************
  METHOD Y() CLASS GPRect
*********************************************************************************************************

return GPRectY(::handle)

*********************************************************************************************************
  METHOD Width() CLASS GPRect
*********************************************************************************************************

return GPRectWidth(::handle)

*********************************************************************************************************
  METHOD Height() CLASS GPRect
*********************************************************************************************************

return GPRectHeight(::handle)

*********************************************************************************************************
METHOD convertRectHandle( h ) CLASS GPRect
*********************************************************************************************************
   ::handle = _getRectHandle( h )
return nil




//Constructors
//
//The Rect class has the following constructors.
//
//Constructor                                     Description
//Rect::Rect()                                  Creates a Rect object and initializes the X and Y data members to zero. This is the default constructor.
//Rect::Rect(PointF&,SizeF&)                    Creates a Rect object by using a PointF object to initialize the X and Y data members and uses a SizeF object to initialize the Width and Height data members of this rectangle.
//Rect::Rect(REAL,REAL,REAL,REAL)               Creates a Rect object by using four integers to initialize the X, Y, Width, and Height data members.
//
//
//Methods
//
//The Rect class has the following methods.
//
//Method                                          Description
//Rect::Clone                                    The Rect::Clone method creates a new Rect object and initializes it with the contents of this Rect object.
//Rect::Contains(PointF&)                        The Rect::Contains method determines whether a point is inside this rectangle.
//Rect::Contains(REAL,REAL)                      The Rect::Contains method determines whether the point (x, y) is inside this rectangle.
//Rect::Contains(Rect&)                         The Rect::Contains method determines whether another rectangle is inside this rectangle.
//Rect::Equals                                   The Rect::Equals method determines whether two rectangles are the same.
//Rect::GetBottom                                The Rect::GetBottom method gets the y-coordinate of the bottom edge of the rectangle.
//Rect::GetBounds                                The Rect::GetBounds method makes a copy of this rectangle.
//Rect::GetLeft                                  The Rect::GetLeft method gets the x-coordinate of the left edge of the rectangle.
//Rect::GetLocation                              The Rect::GetLocation method gets the coordinates of the upper-left corner of this rectangle.
//Rect::GetRight                                 The Rect::GetRight method gets the x-coordinate of the right edge of the rectangle.
//Rect::GetSize                                  The Rect::GetSize method gets the width and height of this rectangle.
//Rect::GetTop                                   The Rect::GetTop method gets the y-coordinate of the top edge of the rectangle.
//Rect::Inflate(PointF&)                         The Rect::Inflate method expands the rectangle by the value of point.X on the left and right edges, and by the value of point.Y on the top and bottom edges.
//Rect::Inflate(REAL,REAL)                       The Rect::Inflate method expands the rectangle by dx on the left and right edges, and by dy on the top and bottom edges.
//Rect::Intersect(Rect&)                        The Rect::Intersect method replaces this rectangle with the intersection of itself and another rectangle.
//Rect::Intersect(Rect&,Rect&,Rect&)          The Rect::Intersect method determines the intersection of two rectangles and stores the result in a Rect object.
//Rect::IntersectsWith                           The Rect::IntersectsWith method determines whether this rectangle intersects another rectangle.
//Rect::IsEmptyArea                              The Rect::IsEmptyArea method determines whether this rectangle is empty.
//Rect::Offset(PointF&)                          The Rect::Offset method moves this rectangle horizontally a distance of point.X and vertically a distance of point.Y.
//Rect::Offset(REAL,REAL)                        The Rect::Offset method moves the rectangle by dx horizontally and by dx vertically.
//Rect::Union                                    The Rect::Union method determines the union of two rectangles and stores the result in a Rect object.
//
//Data Members
//
//The following table lists the members exposed by the Rect object.
//
//Data Members    Type    Description
//X               REAL    X-coordinate of the upper-left corner of the rectangle.
//Y               REAL    Y-coordinate of the upper-left corner of the rectangle.
//Width           REAL    Width of the rectangle.
//Height          REAL    Height of the rectangle.

















#pragma BEGINDUMP

#include <gc.h>

HB_FUNC( _GETRECTHANDLE )
{
	Rect * c = ( Rect * ) hb_parptr( 1 );
	hb_Rect_ret( c );	
}


HB_FUNC( _GPRECT )
{
    Rect * ptr = NULL;
    int iParams = hb_pcount();

    if( iParams == 0 )
       ptr = new Rect();
    else if( iParams == 2 )
    {
       Point * p_pt = hb_Point_par( 1 );
       Size * p_sz = hb_Size_par( 2 );

       Point pt( p_pt->X, p_pt->Y ) ;

       Size sz( p_sz->Width, p_sz->Height );

       ptr = new Rect( pt, sz );

    }
    else if( iParams == 4 )
       ptr = new Rect( hb_parni( 1 ), hb_parni(2 ), hb_parni(3 ), hb_parni(4 ) );

    hb_Rect_ret( ptr );
}

HB_FUNC( GPRECTCLONE )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_Rect_ret( ptr->Clone() );
}

HB_FUNC( GPRECTCONTAINS )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retl( ptr->Contains( hb_parni( 2 ), hb_parni( 3 )) );
}

extern "C"
{
LPSTR LToStr( LONG );
}

HB_FUNC( GPRECTCONTAINS2 )
{
   Rect * ptr = hb_Rect_par( 1 );
   Point * p_pt = hb_Point_par( 2 );
   Point pt1( p_pt->X, p_pt->Y );

   hb_retl( ptr->Contains( pt1 ) );
}

HB_FUNC( GPRECTCONTAINS3 )
{
   Rect * ptr = hb_Rect_par( 1 );
   Rect *p_rc = hb_Rect_par( 2 );

   Rect rc1( p_rc->X, p_rc->Y, p_rc->Width, p_rc->Height );

   hb_retl( ptr->Contains( rc1 ) );
}

HB_FUNC( GPRECTEQUALS )
{
   Rect * ptr = hb_Rect_par( 1 );
   Rect *p_rc = hb_Rect_par( 2 );

   Rect rc1( p_rc->X, p_rc->Y, p_rc->Width, p_rc->Height );

   hb_retl(ptr->Equals(rc1));
}

HB_FUNC( GPRECTGETBOTTOM )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni(ptr->GetBottom());
}

HB_FUNC( GPRECTGETBOUNDS )
{
   Rect * ptr = hb_Rect_par( 1 );
   Rect *p_rc = hb_Rect_par( 2 );
   ptr->GetBounds( p_rc );
   hb_ret();
}

HB_FUNC( GPRECTGETLEFT )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni(ptr->GetLeft());
}

HB_FUNC( GPRECTGETLOCATION )
{
   Rect * ptr = hb_Rect_par( 1 );
   Point *p_pt = hb_Point_par( 2 );
   ptr->GetLocation( p_pt );
   hb_ret();
}

HB_FUNC( GPRECTGETRIGHT )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni(ptr->GetRight());
}

HB_FUNC( GPRECTGETTOP )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni(ptr->GetTop());
}

HB_FUNC( GPRECTINFLATE )
{
   Rect * ptr = hb_Rect_par( 1 );
   ptr->Inflate( hb_parni(2), hb_parni(3) );

   hb_ret();
}

HB_FUNC( GPRECTINFLATE2 )
{
   Rect * ptr = hb_Rect_par( 1 );
   Point * p_pt = hb_Point_par( 2 );
   Point pt1( p_pt->X, p_pt->Y );
   ptr->Inflate( pt1 );
   hb_ret();
}

HB_FUNC( GPRECTINTERSECT )
{
   Rect * ptr = hb_Rect_par( 1 );
   Rect *p_rc = hb_Rect_par( 2 );

   Rect rc1( p_rc->X, p_rc->Y, p_rc->Width, p_rc->Height );

   hb_retl( ptr->Intersect( rc1 ));
}

HB_FUNC( GPRECTINTERSECT2 )
{
   Rect *ptr = hb_Rect_par( 1 );
   Rect *p_rc1 = hb_Rect_par( 2 );
   Rect *p_rc2 = hb_Rect_par( 3 );
   Rect *p_rc3 = hb_Rect_par( 4 );
   BOOL l;

   Rect rc1( p_rc1->X, p_rc1->Y, p_rc1->Width, p_rc1->Height );
   Rect rc2( p_rc2->X, p_rc2->Y, p_rc2->Width, p_rc2->Height );
   Rect rc3( p_rc3->X, p_rc3->Y, p_rc3->Width, p_rc3->Height );
   l = ptr->Intersect( rc1, rc2, rc3 );

   p_rc1->X = rc1.X;
   p_rc1->Y = rc1.Y;
   p_rc1->Width = rc1.Width;
   p_rc1->Height = rc1.Height;

   hb_retl(l);
}

HB_FUNC( GPRECTINTERSECTSWITH )
{
   Rect * ptr = hb_Rect_par( 1 );
   Rect *p_rc1 = hb_Rect_par( 2 );

   Rect rc1( p_rc1->X, p_rc1->Y, p_rc1->Width, p_rc1->Height );

   hb_retl(ptr->IntersectsWith( rc1 ));
}

HB_FUNC( GPRECTISEMPTYAREA )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retl(ptr->IsEmptyArea());
}


HB_FUNC( GPRECTOFFSET )
{
   Rect * ptr = hb_Rect_par( 1 );
   ptr->Offset( hb_parni(2), hb_parni(3) );
   hb_ret();
}

HB_FUNC( GPRECTOFFSET2 )
{
   Rect * ptr = hb_Rect_par( 1 );
   Point *p_pt = hb_Point_par( 2 );

   Point pt1( p_pt->X, p_pt->Y );

   ptr->Offset( pt1 );

   hb_ret();
}


HB_FUNC( GPRECTSETX )
{
   Rect * ptr = hb_Rect_par( 1 );
   ptr->X = hb_parni( 2 );
   hb_ret();
}

HB_FUNC( GPRECTSETY )
{
   Rect * ptr = hb_Rect_par( 1 );
   ptr->Y = hb_parni( 2 );
   hb_ret();
}

HB_FUNC( GPRECTX )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni( (int) ptr->X );
}

HB_FUNC( GPRECTY )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni( (int) ptr->Y );
}

HB_FUNC( GPRECTWIDTH )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni( (int) ptr->Width );
}

HB_FUNC( GPRECTHEIGHT )
{
   Rect * ptr = hb_Rect_par( 1 );
   hb_retni( (int) ptr->Height );
}

HB_FUNC( GPRECTUNION )
{
   Rect * ptr = hb_Rect_par( 1 );
   Rect * p_rc1 = hb_Rect_par( 2 );
   Rect * p_rc2 = hb_Rect_par( 3 );
   Rect * p_rc3 = hb_Rect_par( 4 );
   BOOL l;

   Rect rc1( p_rc1->X, p_rc1->Y, p_rc1->Width, p_rc1->Height );
   Rect rc2( p_rc2->X, p_rc2->Y, p_rc2->Width, p_rc2->Height );
   Rect rc3( p_rc3->X, p_rc3->Y, p_rc3->Width, p_rc3->Height );

   l = ptr->Union( rc1, rc2, rc3 );

   p_rc1->X = rc1.X;
   p_rc1->Y = rc1.Y;
   p_rc1->Width = rc1.Width;
   p_rc1->Height = rc1.Height;

   hb_retl(l);
}

#pragma ENDDUMP
