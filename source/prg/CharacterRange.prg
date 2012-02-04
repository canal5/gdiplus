#include "fivewin.ch"


function CharacterRange()

return GPCharacterRange():New()


CLASS GPCharacterRange

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPCharacterRange
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPCharacterRange()
  elseif iParams == 1
     ::handle := _GPCharacterRange( p1 )                               //
  elseif iParams == 3
     ::handle := _GPCharacterRange( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPCharacterRange( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPCharacterRange( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPCharacterRange( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPCharacterRange( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPCharacterRange
*********************************************************************************************************

  if !empty(::handle)
     DeleteCharacterRange( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPCharacterRange
//*********************************************************************************************************
//
//return GPCharacterRange(::handle)


//Constructors
//
//The CharacterRange class has the following constructors.
//
//Constructor                                  Description
//CharacterRange::CharacterRange()             Creates a CharacterRange::CharacterRange object with the data members set to zero.
//CharacterRange::CharacterRange(INT,INT)      Creates a CharacterRange::CharacterRange object and initializes the data members to the values specified.
//
//
//Methods
//
//The CharacterRange class has the following methods.
//
//Method                                       Description
//CharacterRange::operator=                    The CharacterRange::operator= method sets this CharacterRange object equal to the specified CharacterRange object.
//
//
//Data Members
//
//The following table lists the members exposed by the CharacterRange object.
//
//Data Members    Type    Description
//First           INT     Specifies the first position of this range.
//Length          INT     Specifies the number of positions in this range.
//



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPCHARACTERRANGE )
{
   //CharacterRange* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new CharacterRange();
   //else if (iParams == 1 )
   //    clr = new CharacterRange( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new CharacterRange( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new CharacterRange( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( DELETECHARACTERRANGE )
{
   //CharacterRange* clr = (CharacterRange*) hb_parptr( 1 );
   //delete (CharacterRange*) clr;
   //hb_ret();
}

//HB_FUNC( GPCharacterRange... )
//{
//   CharacterRange* ptr = (CharacterRange*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




