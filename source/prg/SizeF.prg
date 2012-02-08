#include "fivewin.ch"


function SizeF( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPSizeF():New()
         exit
      case 1
         oObj = GPSizeF():New( aParams[ 1 ] )
         exit
      case 2
         oObj = GPSizeF():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oObj

CLASS GPSizeF

  DATA handle
  DATA Height
  DATA Width

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//SizeF::SizeF()
//SizeF::SizeF(REAL,REAL)
//SizeF::SizeF(SizeF&)

  METHOD Empty()
  METHOD Equals()
  METHOD Substract OPERATOR "-"
  METHOD Add       OPERATOR "+"

//operator-(SizeF&)
//operator+(SizeF&)



ENDCLASS

*********************************************************************************************************
  METHOD New(p1, p2, p3, p4, p5, p6, p7) CLASS GPSizeF
*********************************************************************************************************

local iParams := PCount()


  switch( iParams )
     case 0
        ::handle := _GPSizeF()
        exit
     case 1
        ::handle := _GPSizeF( p1 )
        exit
     case 2
        ::handle := _GPSizeF( p1, p2 )
        exit
  endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSizeF
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Empty() CLASS GPSizeF
*********************************************************************************************************

return GPSizeFEmpty(::handle)

*********************************************************************************************************
  METHOD Equals( sz ) CLASS GPSizeF
*********************************************************************************************************

return GPSizeFEquals(::handle, sz:handle )

*********************************************************************************************************
  METHOD Substract( sz ) CLASS GPSizeF
*********************************************************************************************************

   local h := GPSizeFSubstract( ::handle, sz:handle )
   local oSizeF := SizeF( h )
   
   GPSIZEFDELETE( h );
   
return oSizeF

*********************************************************************************************************
  METHOD Add( sz ) CLASS GPSizeF
*********************************************************************************************************

   local h := GPSizeFAdd( ::handle, sz:handle )
   local oSizeF := SizeF( h )
   
   GPSIZEFDELETE( h );
   
return oSizeF



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
   SizeF* ptr;
   int iParams = hb_pcount();

   switch( iParams )
   {
      case 0:
         ptr = new SizeF();
         break;
      case 1:
         {
           SizeF * par_Size = ( SizeF * ) hb_parptr( 1 );
           SizeF sz( par_Size->Width, par_Size->Height );
           ptr = new SizeF( sz );
         }
         break;
      case 2:
         ptr = new SizeF( ( REAL ) hb_parnd( 1 ), ( REAL ) hb_parnd( 2 ) );
         break;
   }

   hb_retptr( (void*) ptr );
}

HB_FUNC( GPSIZEFDELETE )
{
	SizeF* ptr = (SizeF*) hb_parptr( 1 );
	delete ( SizeF * ) ptr;
}

HB_FUNC( GPSIZEFEMPTY )
{
   SizeF* ptr = (SizeF*) hb_parptr( 1 );
   hb_retl( ptr->Empty() );
}

HB_FUNC( GPSIZEFEQUALS )
{
   SizeF* ptr = (SizeF*) hb_parptr( 1 );
   SizeF *p_sz1 = ( SizeF * ) hb_parptr( 2 );

   SizeF sz1( p_sz1->Width, p_sz1->Height );
   hb_retl(ptr->Equals( sz1 ));
}

HB_FUNC( GPSIZEFSUBSTRACT )
{
   SizeF* ptr;
   SizeF* ptr1 = (SizeF*) hb_parptr( 1 );
   SizeF* ptr2 = (SizeF*) hb_parptr( 2 );
   
   SizeF s1( ptr1->Width, ptr1->Height );
   SizeF s2( ptr2->Width, ptr2->Height );
   SizeF s3 = s1 - s2;
   
   ptr = new SizeF( s3 );
   
   hb_retptr( (void*) ptr );
}

HB_FUNC( GPSIZEFADD )
{
   SizeF* ptr;
   SizeF* ptr1 = (SizeF*) hb_parptr( 1 );
   SizeF* ptr2 = (SizeF*) hb_parptr( 2 );
   
   SizeF s1( ptr1->Width, ptr1->Height );
   SizeF s2( ptr2->Width, ptr2->Height );
   SizeF s3 = s1 + s2;
   
   ptr = new SizeF( s3 );
   
   hb_retptr( (void*) ptr );
   
}


//solo para pruebas
HB_FUNC( GPSIZEFWIDTH )
{
   SizeF* ptr = (SizeF*) hb_parptr( 1 );
   
   hb_retnd( (double) ptr->Width );
   
}



//HB_FUNC( GPSIZEF... )
//{
//   SizeF* ptr = (SizeF*) hb_parptr( 1 );
//}

#pragma ENDDUMP




