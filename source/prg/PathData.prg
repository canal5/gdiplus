#include "fivewin.ch"


function PathData()

return GPPathData():New()


CLASS GPPathData

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPathData
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPPathData()
  elseif iParams == 1
     ::handle := _GPPathData( p1 )                               //
  elseif iParams == 3
     ::handle := _GPPathData( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPPathData( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPPathData( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPPathData( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPPathData( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPathData
*********************************************************************************************************

  if !empty(::handle)
     DeletePathData( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPPathData
//*********************************************************************************************************
//
//return GPPathData(::handle)

//Constructors
//
//The PathData class has the following constructors.
//
//Constructor                   Description
//PathData::PathData()          Creates a PathData::PathData object. The Count data member is initialized to 0. The Points and Types data members are initialized to NULL.
//
//
//Data Members
//
//The following table lists the members exposed by the PathData object.
//
//Data Members    Type      Description
//Count           INT       Number of PointF objects in the Points array. This is the same as the number of bytes in the Types array.
//Points          PointF *  Pointer to an array of path data points.
//Types           BYTE *    Pointer to an array of bytes. Each byte holds the point type and a set of flags for the corresponding point in the Points array. Possible point types and flags are listed in the PathPointType enumeration.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPATHDATA )
{
   //PathData* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new PathData();
   //else if (iParams == 1 )
   //    ptr = new PathData( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new PathData( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new PathData( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEPATHDATA )
{
   //PathData* clr = (PathData*) hb_parptr( 1 );
   //delete (PathData*) clr;
   //hb_ret();
}

//HB_FUNC( GPPATHDATA... )
//{
//   PathData* ptr = (PathData*) hb_parptr( 1 );
//}

#pragma ENDDUMP




