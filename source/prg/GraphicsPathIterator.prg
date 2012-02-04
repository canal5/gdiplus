#include "fivewin.ch"


function GraphicsPathIterator()

return GPGraphicsPathIterator():New()


CLASS GPGraphicsPathIterator

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD CopyData()
  METHOD Enumerate()
  METHOD GetCount()
  METHOD GetLastStatus()
  METHOD GetSubpathCount()
  METHOD HasCurve()
  METHOD NextMarker()
  METHOD NextMarker2()
  METHOD NextPathType()
  METHOD NextSubpath()
  METHOD NextSubpath2()
  METHOD Rewind()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPGraphicsPathIterator
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPGraphicsPathIterator()
  elseif iParams == 1
     ::handle := _GPGraphicsPathIterator( p1 )                               //
  elseif iParams == 3
     ::handle := _GPGraphicsPathIterator( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPGraphicsPathIterator( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPGraphicsPathIterator( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPGraphicsPathIterator( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPGraphicsPathIterator( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPGraphicsPathIterator
*********************************************************************************************************

  if !empty(::handle)
     DeleteGraphicsPathIterator( ::handle )
  endif

return nil

*********************************************************************************************************
  METHOD CopyData() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Enumerate() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetCount() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetSubpathCount() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD HasCurve() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD NextMarker() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD NextMarker2() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD NextPathType() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD NextSubpath() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD NextSubpath2() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Rewind() CLASS GPGraphicsPathIterator
*********************************************************************************************************

return 0






//Constructors
//
//The GraphicsPathIterator class has the following constructors.
//
//Constructor                                        Description
//GraphicsPathIterator::GraphicsPathIterator         Creates a new GraphicsPathIterator::GraphicsPathIterator object and associates it with a GraphicsPath object.
//
//
//Methods
//
//The GraphicsPathIterator class has the following methods.
//
//Method                                             Description
//GraphicsPathIterator::CopyData                     The GraphicsPathIterator::CopyData method copies a subset of the path's data points to a PointF array and copies a subset of the path's point types to a BYTE array.
//GraphicsPathIterator::Enumerate                    The GraphicsPathIterator::Enumerate method copies the path's data points to a PointF array and copies the path's point types to a BYTE array.
//GraphicsPathIterator::GetCount                     The GraphicsPathIterator::GetCount method returns the number of data points in the path.
//GraphicsPathIterator::GetLastStatus                The GraphicsPathIterator::GetLastStatus method returns a value that indicates the nature of this GraphicsPathIterator object's most recent method failure.
//GraphicsPathIterator::GetSubpathCount              The GraphicsPathIterator::GetSubpathCount method returns the number of subpaths (also called figures) in the path.
//GraphicsPathIterator::HasCurve                     The GraphicsPathIterator::HasCurve method determines whether the path has any curves.
//GraphicsPathIterator::NextMarker(GraphicsPath*)    The GraphicsPathIterator::NextMarker method gets the next marker-delimited section of this iterator's associated path.
//GraphicsPathIterator::NextMarker(INT*,INT*)        The GraphicsPathIterator::NextMarker method gets the starting index and the ending index of the next marker-delimited section in this iterator's associated path.
//GraphicsPathIterator::NextPathType                 The GraphicsPathIterator::NextPathType method gets the starting index and the ending index of the next group of data points that all have the same type.
//GraphicsPathIterator::NextSubpath(GraphicsPath*,BOOL*) The GraphicsPathIterator::NextSubpath method gets the next figure (subpath) from this iterator's associated path.
//GraphicsPathIterator::NextSubpath(INT*,INT*,BOOL*) The GraphicsPathIterator::NextSubpath method gets the starting index and the ending index of the next subpath (figure) in this iterator's associated path.
//GraphicsPathIterator::Rewind                       The GraphicsPathIterator::Rewind method rewinds this iterator to the beginning of its associated path.
//
//



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPGRAPHICSPATHITERATOR )
{
   //GraphicsPathIterator* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new GraphicsPathIterator();
   //else if (iParams == 1 )
   //    ptr = new GraphicsPathIterator( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new GraphicsPathIterator( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new GraphicsPathIterator( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEGRAPHICSPATHITERATOR )
{
   //GraphicsPathIterator* clr = (GraphicsPathIterator*) hb_parptr( 1 );
   //delete (GraphicsPathIterator*) clr;
   //hb_ret();
}

//HB_FUNC( GPGRAPHICSPATHITERATOR... )
//{
//   GraphicsPathIterator* ptr = (GraphicsPathIterator*) hb_parptr( 1 );
//}

#pragma ENDDUMP




