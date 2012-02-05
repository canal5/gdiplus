#include "fivewin.ch"


function PointF()

return GPPointF():New()


CLASS GPPointF

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//PointF::PointF()
//PointF::PointF(PointF&)
//PointF::PointF(REAL,REAL)
//PointF::PointF(SizeF&)


//Equals
//operator-(PointF&)
//operator+(PointF&)


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPointF
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPPointF()
  elseif iParams == 1
     ::handle := _GPPointF( p1 )                               //
  elseif iParams == 3
     ::handle := _GPPointF( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPPointF( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPPointF( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPPointF( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPPointF( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPointF
*********************************************************************************************************

  ::handle := nil

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPPointF
//*********************************************************************************************************
//
//return GPPointF(::handle)


//Constructors
//
//The PointF class has the following constructors.
//
//Constructor                             Description
//PointF::PointF()                        Creates a PointF object and initializes the X and Y data members to zero. This is the default constructor.
//PointF::PointF(PointF&)                 Creates a new PointF object and copies the data from another PointF object.
//PointF::PointF(REAL,REAL)               Creates a PointF object using two real numbers to specify the X and Y data members.
//PointF::PointF(SizeF&)                  Creates a PointF object using a SizeF object to specify the X and Y data members.
//
//
//Methods
//
//The PointF class has the following methods.
//
//Method                                  Description
//PointF::Equals                          The PointF::Equals method determines whether two PointF objects are equal. Two points are considered equal if they have the same X and Y data members.
//PointF::operator-(PointF&)              The PointF::operator- method subtracts the X and Y data members of two PointF objects.
//PointF::operator+(PointF&)              The PointF::operator+ method adds the X and Y data members of two PointF objects.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPOINTF )
{
   //PointF* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new PointF();
   //else if (iParams == 1 )
   //    ptr = new PointF( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new PointF( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new PointF( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEPOINTF )
{
   //PointF* clr = (PointF*) hb_parptr( 1 );
   //delete (PointF*) clr;
   //hb_ret();
}

//HB_FUNC( GPPOINTF... )
//{
//   PointF* ptr = (PointF*) hb_parptr( 1 );
//}

#pragma ENDDUMP




