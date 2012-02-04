#include "fivewin.ch"


function Region()

return GPRegion():New()


CLASS GPRegion

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPRegion
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPRegion()
  elseif iParams == 1
     ::handle := _GPRegion( p1 )                               //
  elseif iParams == 3
     ::handle := _GPRegion( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPRegion( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPRegion( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPRegion( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPRegion( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRegion
*********************************************************************************************************

  if !empty(::handle)
     DeleteRegion( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPRegion
//*********************************************************************************************************
//
//return GPRegion(::handle)

//Constructors
//
//The Region class has the following constructors.
//
//Constructor                            Description
//Region::Region()                       Creates a region that is infinite. This is the default constructor.
//Region::Region(BYTE*,INT)              Creates a region that is defined by data obtained from another region.
//Region::Region(GraphicsPath*)          Creates a region that is defined by a path (a GraphicsPath object) and has a fill mode that is contained in the GraphicsPath object.
//Region::Region(HRGN)                   Creates a region that is identical to the region that is specified by a handle to a GDI region.
//Region::Region(Rect&)                  Creates a region that is defined by a rectangle.
//Region::Region(RectF&)                 Creates a region that is defined by a rectangle.
//
//Methods
//
//The Region class has the following methods.
//
//Method                                             Description
//Region::Clone                                      The Region::Clone method makes a copy of this Region object and returns the address of the new Region object.
//Region::Complement(GraphicsPath*)                  The Region::Complement method updates tis region to the portion of the specified path's interior that does not intersect this region.
//Region::Complement(Rect&)                          The Region::Complement method updates this region to the portion of the specified rectangle's interior that does not intersect this region.
//Region::Complement(RectF&)                         The Region::Complement method updates this region to the portion of the specified rectangle's interior that does not intersect this region.
//Region::Complement(Region*)                        The Region::Complement method updates this region to the portion of another region that does not intersect this region.
//Region::Equals                                     The Region::Equals method determines whether this region is equal to a specified region.
//Region::Exclude(GraphicsPath*)                     The Region::Exclude method updates this region to the portion of itself that does not intersect the specified path's interior.
//Region::Exclude(Rect&)                             The Region::Exclude method updates this region to the portion of itself that does not intersect the specified rectangle's interior.
//Region::Exclude(RectF&)                            The Region::Exclude method updates this region to the portion of itself that does not intersect the specified rectangle's interior.
//Region::Exclude(Region*)                           The Region::Exclude method updates this region to the portion of itself that does not intersect another region.
//Region::FromHRGN                                   The Region::FromHRGN method creates a GDI+Region object from a GDI  region.
//Region::GetBounds(Rect*,Graphics*)                 The Region::GetBounds method gets a recangle that encloses this region.
//Region::GetBounds(RectF*,Graphics*)                The Region::GetBounds method gets a recangle that encloses this region.
//Region::GetData                                    The Region::GetData method gets data that describes this region.
//Region::GetDataSize                                The Region::GetDataSize method gets the number of bytes of data that describes this region.
//Region::GetHRGN                                    The Region::GetHRGN method creates a GDI region from this region.
//Region::GetLastStatus                              The Region::GetLastStatus method returns a value that indicates the nature of this Region object's most recent method failure.
//Region::GetRegionScans(Matrix*,Rect*,INT*)         The Region::GetRegionScans method gets an array of rectangles that approximate this region. The region is transformed by a specified matrix before the rectangles are calculated.
//Region::GetRegionScans(Matrix*,RectF*,INT*)        The Region::GetRegionScans method gets an array of rectangles that approximate this region. The region is transformed by a specified matrix before the rectangles are calculated.
//Region::GetRegionScansCount                        The Region::GetRegionScansCount method gets the number of rectangles that approximate this region. The region is transformed by a specified matrix before the rectangles are calculated.
//Region::Intersect(GraphicsPath*)                   The Region::Intersect method updates this region to the portion of itself that intersects the specified path's interior.
//Region::Intersect(Rect&)                           The Region::Intersect method updates this region to the portion of itself that intersects the specified rectangle's interior.
//Region::Intersect(RectF&)                          The Region::Intersect method updates this region to the portion of itself that intersects the specified rectangle's interior.
//Region::Intersect(Region*)                         The Region::Intersect method updates this region to the portion of itself that intersects another region.
//Region::IsEmpty                                    The Region::IsEmpty method determines whether this region is empty.
//Region::IsInfinite                                 The Region::IsInfinite method determines whether this region is infinite.
//Region::IsVisible(INT,INT,Graphics*)               The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(INT,INT,INT,INT,Graphics*)       The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::IsVisible(Point&,Graphics*)                The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(PointF&,Graphics*)               The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(REAL,REAL,Graphics*)             The Region::IsVisible method determines whether a point is inside this region.
//Region::IsVisible(REAL,REAL,REAL,REAL,Graphics*)   The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::IsVisible(Rect&,Graphics*)                 The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::IsVisible(RectF&,Graphics*)                The Region::IsVisible method determines whether a rectangle intersects this region.
//Region::MakeEmpty                                  The Region::MakeEmpty method updates this region to an empty region. In other words, the region occupies no space on the display device.
//Region::MakeInfinite                               The Region::MakeInfinite method updates this region to an infinite region.
//Region::Transform                                  The Region::Transform method transforms this region by multiplying each of its data points by a specified matrix.
//Region::Translate(INT,INT)                         The Region::Translate method offsets this region by specified amounts in the horizontal and vertical directions.
//Region::Translate(REAL,REAL)                       The Region::Translate method offsets this region by specified amounts in the horizontal and vertical directions.
//Region::Union(GraphicsPath*)                       The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of the specified path's interior.
//Region::Union(Rect&)                               The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of the specified rectangle's interior.
//Region::Union(RectF&)                              The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of the specified rectangle's interior.
//Region::Union(Region*)                             The Region::Union method updates this region to all portions (intersecting and nonintersecting) of itself and all portions of another region.
//Region::Xor(GraphicsPath*)                         The Region::Xor method updates this region to the nonintersecting portions of itself and the specified path's interior.
//Region::Xor(Rect&)                                 The Region::Xor method updates this region to the nonintersecting portions of itself and the specified rectangle's interior.
//Region::Xor(RectF&)                                The Region::Xor method updates this region to the nonintersecting portions of itself and the specified rectangle's interior.
//Region::Xor(Region*)                               The Region::Xor method updates this region to the nonintersecting portions of itself and another region.













#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPREGION )
{
   //Region* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Region();
   //else if (iParams == 1 )
   //    ptr = new Region( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Region( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Region( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEREGION )
{
   //Region* clr = (Region*) hb_parptr( 1 );
   //delete (Region*) clr;
   //hb_ret();
}

//HB_FUNC( GPREGION... )
//{
//   Region* ptr = (Region*) hb_parptr( 1 );
//}

#pragma ENDDUMP




