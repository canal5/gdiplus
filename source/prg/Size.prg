#include "fivewin.ch"


function Size()

return GPSize():New()


CLASS GPSize

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPSize
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPSize()
  elseif iParams == 1
     ::handle := _GPSize( p1 )                               //
  elseif iParams == 3
     ::handle := _GPSize( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPSize( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPSize( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPSize( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPSize( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSize
*********************************************************************************************************

  if !empty(::handle)
     DeleteSize( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPSize
//*********************************************************************************************************
//
//return GPSize(::handle)

//Constructors
//
//The Size class has the following constructors.
//
//Constructor                          Description
//Size::Size()                         Creates a new Size object and initializes the members to zero. This is the default constructor.
//Size::Size(INT,INT)                  Creates a Size object and initializes its Width and Height data members.
//Size::Size(Size&)                    Creates a Size object and initializes its members by copying the members of another Size object.
//
//
//Methods
//
//The Size class has the following methods.
//
//Method                               Description
//Size::Empty                          The Size::Empty method determines whether a Size object is empty.
//Size::Equals                         The Size::Equals method determines whether two Size objects are equal.
//Size::operator-(Size&)               The Size::operator- method subtracts the Width and Height data members of two Size objects.
//Size::operator+(Size&)               The Size::operator+ method adds the Width and Height data members of two Size objects.
//
//
//Data Members
//
//The following table lists the members exposed by the Size object.
//
//Data Members    Type    Description
//Height          INT     Vertical measurement of the Size object.
//Width           INT     Horizontal measurement of the Size object.



















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPSIZE )
{
   //Size* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new Size();
   //else if (iParams == 1 )
   //    ptr = new Size( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new Size( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new Size( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETESIZE )
{
   //Size* clr = (Size*) hb_parptr( 1 );
   //delete (Size*) clr;
   //hb_ret();
}

//HB_FUNC( GPSIZE... )
//{
//   Size* ptr = (Size*) hb_parptr( 1 );
//}

#pragma ENDDUMP




