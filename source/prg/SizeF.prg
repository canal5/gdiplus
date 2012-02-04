#include "fivewin.ch"


function SizeF()

return GPSizeF():New()


CLASS GPSizeF

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPSizeF
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPSizeF()
  elseif iParams == 1
     ::handle := _GPSizeF( p1 )                               //
  elseif iParams == 3
     ::handle := _GPSizeF( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPSizeF( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPSizeF( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPSizeF( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPSizeF( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSizeF
*********************************************************************************************************

  if !empty( ::handle )
     DeleteSizeF( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPSizeF
//*********************************************************************************************************
//
//return GPSizeF(::handle)


//Constructors
//
//The SizeF class has the following constructors.
//
//Constructor                        Description
//SizeF::SizeF()                     Creates a SizeF object and initializes the members to zero. This is the default constructor.
//SizeF::SizeF(REAL,REAL)            Creates a SizeF object and initializes its Width and Height data members.
//SizeF::SizeF(SizeF&)               Creates a SizeF object and initializes its members by copying the members of another SizeF object.
//
//
//Methods
//
//The SizeF class has the following methods.
//
//Method                             Description
//SizeF::Empty                       The SizeF::Empty method determines whether a SizeF object is empty.
//SizeF::Equals                      The SizeF::Equals method determines whether two SizeF objects are equal.
//SizeF::operator-(SizeF&)           The SizeF::operator- method subtracts the Width and Height data members of two SizeF objects.
//SizeF::operator+(SizeF&)           The SizeF::operator+ method adds the Width and Height data members of two SizeF objects.
//
//
//Data Members
//
//The following table lists the members exposed by the SizeF object.
//
//Data Members    Type    Description
//Height          REAL    Vertical measurement of the SizeF object.
//Width           REAL    Horizontal measurement of the SizeF object.






#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPSIZEF )
{
   //SizeF* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new SizeF();
   //else if (iParams == 1 )
   //    ptr = new SizeF( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new SizeF( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new SizeF( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETESIZEF )
{
   //SizeF* clr = (SizeF*) hb_parptr( 1 );
   //delete (SizeF*) clr;
   //hb_ret();
}

//HB_FUNC( GPSIZEF... )
//{
//   SizeF* ptr = (SizeF*) hb_parptr( 1 );
//}

#pragma ENDDUMP




