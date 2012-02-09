#include "fivewin.ch"
#include "gdip.ch"

//Constructor
//RectF::RectF()
//RectF::RectF(PointF&,SizeF&)
//RectF::RectF(REAL,REAL,REAL,REAL)

function RectF( ... )
   local aParams := hb_aparams()
   local oRect
   local nLen := Len( aParams )

   switch nLen
      case 0
         oRect = GPRectF():New()
         exit
      case 1
         oRect = GPRectF():New( aParams[ 1 ] )
         exit
      case 2
         oRect = GPRectF():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 4
         oRect = GPRectF():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

return oRect


CLASS GPRectF

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

ENDCLASS

*********************************************************************************************************
  METHOD New( p1, p2, p3, p4 ) CLASS GPRectF
*********************************************************************************************************

local iParams := PCount()

  if iParams == 0
     ::handle := _GPRectF()
  elseif iParams == 1
     ::handle := ::Clone( p1 )                      //
  elseif iParams == 2
     ::handle := _GPRectF( p1:handle, p2:handle )   // oPoint, oSize
  elseif iParams == 4
     ::handle := _GPRectF( p1, p2, p3, p4 )         //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRectF
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone( o ) CLASS GPRectF
*********************************************************************************************************

return GPRectFClone(o:handle)

*********************************************************************************************************
  METHOD Contains(x,y) CLASS GPRectF
*********************************************************************************************************

return GPRectFContains( ::handle, X, Y )

*********************************************************************************************************
  METHOD Contains2( pt ) CLASS GPRectF
*********************************************************************************************************

return GPRectFContains2( ::handle, pt:handle )

*********************************************************************************************************
  METHOD Contains3( rc ) CLASS GPRectF
*********************************************************************************************************

return GPRectFContains3( ::handle, rc:handle )

*********************************************************************************************************
  METHOD Equals(rc) CLASS GPRectF
*********************************************************************************************************

return GPRectFEquals(::handle,rc:handle)

*********************************************************************************************************
  METHOD GetBottom() CLASS GPRectF
*********************************************************************************************************

return GPRectFGetBottom(::handle)

*********************************************************************************************************
  METHOD GetBounds(rc) CLASS GPRectF
*********************************************************************************************************

return GPRectFGetBounds( ::handle, rc:handle )

*********************************************************************************************************
  METHOD GetLeft() CLASS GPRectF
*********************************************************************************************************

return GPRectFGetLeft(::handle)

*********************************************************************************************************
  METHOD GetLocation(pt) CLASS GPRectF
*********************************************************************************************************

return GPRectFGetLocation(::handle, pt:handle)

*********************************************************************************************************
  METHOD GetRight() CLASS GPRectF
*********************************************************************************************************

return GPRectFGetRight(::handle)

*********************************************************************************************************
  METHOD GetSize() CLASS GPRectF
*********************************************************************************************************

return 0 //GPRectFGetSize(::handle)

*********************************************************************************************************
  METHOD GetTop() CLASS GPRectF
*********************************************************************************************************

return GPRectFGetTop(::handle)

*********************************************************************************************************
  METHOD Inflate(x,y) CLASS GPRectF
*********************************************************************************************************

return GPRectFInflate(::handle, X, Y)

*********************************************************************************************************
  METHOD Inflate2(pt) CLASS GPRectF
*********************************************************************************************************

return GPRectFInflate2(::handle, pt:handle)

*********************************************************************************************************
  METHOD Intersect(rc) CLASS GPRectF
*********************************************************************************************************

return GPRectFIntersect(::handle, rc:handle )

*********************************************************************************************************
  METHOD Intersect2(rc1, rc2, rc3) CLASS GPRectF
*********************************************************************************************************

return GPRectFIntersect2(::handle, rc1:handle, rc2:handle, rc3:handle )

*********************************************************************************************************
  METHOD IntersectsWith(rc) CLASS GPRectF
*********************************************************************************************************

return GPRectFIntersectsWith(::handle, rc:handle )

*********************************************************************************************************
  METHOD IsEmptyArea() CLASS GPRectF
*********************************************************************************************************

return GPRectFIsEmptyArea(::handle)

*********************************************************************************************************
  METHOD Offset(x,y) CLASS GPRectF
*********************************************************************************************************

return GPRectFOffset(::handle,x,y)

*********************************************************************************************************
  METHOD Offset2(pt) CLASS GPRectF
*********************************************************************************************************

return GPRectFOffset2(::handle, pt:handle)

*********************************************************************************************************
  METHOD Union(rc1,rc2,rc3) CLASS GPRectF
*********************************************************************************************************

return GPRectFUnion(::handle, rc1:handle, rc2:handle, rc3:handle )

*********************************************************************************************************
  METHOD X() CLASS GPRectF
*********************************************************************************************************

return GPRectFX(::handle)

*********************************************************************************************************
  METHOD Y() CLASS GPRectF
*********************************************************************************************************

return GPRectFY(::handle)

*********************************************************************************************************
  METHOD Width() CLASS GPRectF
*********************************************************************************************************

return GPRectFWidth(::handle)

*********************************************************************************************************
  METHOD Height() CLASS GPRectF
*********************************************************************************************************

return GPRectFHeight(::handle)





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

#include <gc.h>

HB_FUNC( _GPRECTF )
{
    RectF * ptr = NULL;
    int iParams = hb_pcount();

    if( iParams == 0 )
       ptr = new RectF();
    else if( iParams == 2 )
    {
       PointF * p_pt = hb_PointF_par( 1 );
       SizeF * p_sz = hb_SizeF_par( 2 );

       PointF pt( p_pt->X, p_pt->Y ) ;

       SizeF sz( p_sz->Width, p_sz->Height );

       ptr = new RectF( pt, sz );

    }
    else if( iParams == 4 )
       ptr = new RectF( (REAL) hb_parnd( 1 ), (REAL) hb_parnd(2 ), (REAL) hb_parnd(3 ), (REAL) hb_parnd(4 ) );

    hb_RectF_ret( ptr );
}

HB_FUNC( GPRECTFCLONE )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_RectF_ret( ptr->Clone() );
}

HB_FUNC( GPRECTFCONTAINS )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retl( ptr->Contains( (REAL) hb_parnd( 2 ), (REAL) hb_parnd( 3 )) );
}

extern "C"
{
LPSTR LToStr( LONG );
}

HB_FUNC( GPRECTFCONTAINS2 )
{
   RectF* ptr = hb_RectF_par( 1 );
   PointF * p_pt = hb_PointF_par( 2 );
   PointF pt1( p_pt->X, p_pt->Y );

   hb_retl( ptr->Contains( pt1 ) );
}

HB_FUNC( GPRECTFCONTAINS3 )
{
   RectF* ptr = hb_RectF_par( 1 );
   RectF *p_rc = hb_RectF_par( 2 );

   RectF rc1( p_rc->X, p_rc->Y, p_rc->Width, p_rc->Height );

   hb_retl( ptr->Contains( rc1 ) );
}

HB_FUNC( GPRECTFEQUALS )
{
   RectF* ptr = hb_RectF_par( 1 );
   RectF *p_rc = hb_RectF_par( 2 );

   RectF rc1( p_rc->X, p_rc->Y, p_rc->Width, p_rc->Height );

   hb_retl(ptr->Equals(rc1));
}

HB_FUNC( GPRECTFGETBOTTOM )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni(ptr->GetBottom());
}

HB_FUNC( GPRECTFGETBOUNDS )
{
   RectF* ptr = hb_RectF_par( 1 );
   RectF *p_rc = hb_RectF_par( 2 );
   ptr->GetBounds( p_rc );
   hb_ret();
}

HB_FUNC( GPRECTFGETLEFT )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni(ptr->GetLeft());
}

HB_FUNC( GPRECTFGETLOCATION )
{
   RectF* ptr = hb_RectF_par( 1 );
   PointF *p_pt = hb_PointF_par( 2 );
   ptr->GetLocation( p_pt );
   hb_ret();
}

HB_FUNC( GPRECTFGETRIGHT )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni(ptr->GetRight());
}

HB_FUNC( GPRECTFGETTOP )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni(ptr->GetTop());
}

HB_FUNC( GPRECTFINFLATE )
{
   RectF* ptr = hb_RectF_par( 1 );
   ptr->Inflate( (REAL)hb_parnd(2), (REAL)hb_parnd(3) );

   hb_ret();
}

HB_FUNC( GPRECTFINFLATE2 )
{
   RectF* ptr = hb_RectF_par( 1 );
   PointF * p_pt = hb_PointF_par( 2 );
   PointF pt1( p_pt->X, p_pt->Y );
   ptr->Inflate( pt1 );
   hb_ret();
}

HB_FUNC( GPRECTFINTERSECT )
{
   RectF* ptr = hb_RectF_par( 1 );
   RectF *p_rc = hb_RectF_par( 2 );

   RectF rc1( p_rc->X, p_rc->Y, p_rc->Width, p_rc->Height );

   hb_retl( ptr->Intersect( rc1 ));
}

HB_FUNC( GPRECTFINTERSECT2 )
{
   RectF *ptr = hb_RectF_par( 1 );
   RectF *p_rc1 = hb_RectF_par( 2 );
   RectF *p_rc2 = hb_RectF_par( 3 );
   RectF *p_rc3 = hb_RectF_par( 4 );
   BOOL l;

   RectF rc1( p_rc1->X, p_rc1->Y, p_rc1->Width, p_rc1->Height );
   RectF rc2( p_rc2->X, p_rc2->Y, p_rc2->Width, p_rc2->Height );
   RectF rc3( p_rc3->X, p_rc3->Y, p_rc3->Width, p_rc3->Height );
   l = ptr->Intersect( rc1, rc2, rc3 );

   p_rc1->X = rc1.X;
   p_rc1->Y = rc1.Y;
   p_rc1->Width = rc1.Width;
   p_rc1->Height = rc1.Height;

   hb_retl(l);
}

HB_FUNC( GPRECTFINTERSECTSWITH )
{
   RectF* ptr = hb_RectF_par( 1 );
   RectF *p_rc1 = hb_RectF_par( 2 );

   RectF rc1( p_rc1->X, p_rc1->Y, p_rc1->Width, p_rc1->Height );

   hb_retl(ptr->IntersectsWith( rc1 ));
}

HB_FUNC( GPRECTFISEMPTYAREA )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retl(ptr->IsEmptyArea());
}


HB_FUNC( GPRECTFOFFSET )
{
   RectF* ptr = hb_RectF_par( 1 );
   ptr->Offset( (REAL)hb_parnd(2), (REAL)hb_parnd(3) );
   hb_ret();
}

HB_FUNC( GPRECTFOFFSET2 )
{
   RectF* ptr = hb_RectF_par( 1 );
   PointF *p_pt = hb_PointF_par( 2 );

   PointF pt1( p_pt->X, p_pt->Y );

   ptr->Offset( pt1 );

   hb_ret();
}


HB_FUNC( GPRECTFSETX )
{
   RectF* ptr = hb_RectF_par( 1 );
   ptr->X = (REAL) hb_parnd( 2 );
   hb_ret();
}

HB_FUNC( GPRECTFSETY )
{
   RectF* ptr = hb_RectF_par( 1 );
   ptr->Y = (REAL) hb_parnd( 2 );
   hb_ret();
}

HB_FUNC( GPRECTFX )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni( (int) ptr->X );
}

HB_FUNC( GPRECTFY )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni( (int) ptr->Y );
}

HB_FUNC( GPRECTFWIDTH )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni( (int) ptr->Width );
}

HB_FUNC( GPRECTFHEIGHT )
{
   RectF* ptr = hb_RectF_par( 1 );
   hb_retni( (int) ptr->Height );
}

HB_FUNC( GPRECTFUNION )
{
   RectF* ptr = hb_RectF_par( 1 );
   RectF *p_rc1 = hb_RectF_par( 2 );
   RectF *p_rc2 = hb_RectF_par( 3 );
   RectF *p_rc3 = hb_RectF_par( 4 );
   BOOL l;

   RectF rc1( p_rc1->X, p_rc1->Y, p_rc1->Width, p_rc1->Height );
   RectF rc2( p_rc2->X, p_rc2->Y, p_rc2->Width, p_rc2->Height );
   RectF rc3( p_rc3->X, p_rc3->Y, p_rc3->Width, p_rc3->Height );

   l = ptr->Union( rc1, rc2, rc3 );

   p_rc1->X = rc1.X;
   p_rc1->Y = rc1.Y;
   p_rc1->Width = rc1.Width;
   p_rc1->Height = rc1.Height;

   hb_retl(l);
}

#pragma ENDDUMP
