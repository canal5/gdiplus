#include "fivewin.ch"


function PointF( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPPointF():New()
         exit
      case 1
         oObj = GPPointF():New( aParams[ 1 ] )
         exit
      case 2
         oObj = GPPointF():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oObj


CLASS GPPointF

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD X( nValue ) SETGET
  METHOD Y( nValue ) SETGET

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
  METHOD New( p1, p2 ) CLASS GPPointF
*********************************************************************************************************

local iParams := PCount()

  switch( iParams )
     case 0
        ::handle := _GPPointF()
        exit
     case 1
        if p1:IsKindOf( "GPPOINTF" )
           ::handle := _GPPointFFromPoint( p1 )
        elseif p1:IsKindOf( "GPSIZEF" )
           ::handle := _GPPointFFromSize( p1 )
        endif
        exit
     case 2
        ::handle := _GPPointF( p1, p2 )
  endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPointF
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD X( nValue ) CLASS GPPointF
*********************************************************************************************************

if pcount() > 0
   return GPPointFX(::handle, nValue)
endif

return GPPointFX(::handle)


*********************************************************************************************************
  METHOD Y( nValue ) CLASS GPPointF
*********************************************************************************************************

if pcount() > 0
   return GPPointFY(::handle, nValue)
endif

return GPPointFY(::handle)



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
#include <gc.h>


HB_FUNC( _GPPOINTF )
{
   PointF* ptr;
   int iParams = hb_pcount();

   if( iParams == 0 )
       ptr = new PointF();

   else if (iParams == 2 )
       ptr = new PointF( (REAL) hb_parnd( 1 ), (REAL) hb_parnd( 2 ) );

   hb_PointF_ret( ptr );
}

HB_FUNC( _GPPOINTFFROMPOINT )
{
   PointF * ptr;
   PointF * par_Point = hb_PointF_par( 1 );
   PointF pf( par_Point->X, par_Point->Y );

   ptr = new PointF( pf );

   hb_PointF_ret( ptr );
}

HB_FUNC( _GPPOINTFFROMSIZE )
{
   PointF * ptr;
   SizeF * par_Size = hb_SizeF_par( 1 );
   SizeF sz( par_Size->Width, par_Size->Height );

   ptr = new PointF( sz );

   hb_PointF_ret( ptr );
}

HB_FUNC( GPPOINTFX )
{
   PointF * ptr = hb_PointF_par( 1 );

   if( hb_pcount() > 1 )
   {
      ptr->X = (REAL) hb_parnd( 2 );
   }

   hb_retni( ptr->X );
}

HB_FUNC( GPPOINTFY )
{
   PointF * ptr = hb_PointF_par( 1 );

   if( hb_pcount() > 1 )
   {
      ptr->Y = (REAL) hb_parnd( 2 );
   }

   hb_retni( ptr->Y );
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




