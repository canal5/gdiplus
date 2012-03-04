#include "fivewin.ch"


function Size( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPSize():New()
         exit
      case 1
         oObj = GPSize():New( aParams[ 1 ] )
         exit
      case 2
         oObj = GPSize():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oObj

CLASS GPSize

  DATA handle
  DATA Height
  DATA Width

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//Size::Size()
//Size::Size(REAL,REAL)
//Size::Size(Size&)

  METHOD Empty()
  METHOD Equals()
  METHOD Substract OPERATOR "-"
  METHOD Add       OPERATOR "+"

//operator-(Size&)
//operator+(Size&)



ENDCLASS

*********************************************************************************************************
  METHOD New(p1, p2, p3, p4, p5, p6, p7) CLASS GPSize
*********************************************************************************************************

local iParams := PCount()


  switch( iParams )
     case 0
        ::handle := C5_GPSize()
        exit
     case 1
        ::handle := C5_GPSize( p1:handle )
        exit
     case 2
        ::handle := C5_GPSize( p1, p2 )
        exit
  endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPSize
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Empty() CLASS GPSize
*********************************************************************************************************

return C5GPSizeEmpty(::handle)

*********************************************************************************************************
  METHOD Equals( sz ) CLASS GPSize
*********************************************************************************************************

return C5GPSizeEquals(::handle, sz:handle )

*********************************************************************************************************
  METHOD Substract( sz ) CLASS GPSize
*********************************************************************************************************

return C5GPSizeSubstract( ::handle, sz:handle )

*********************************************************************************************************
  METHOD Add( sz ) CLASS GPSize
*********************************************************************************************************

return C5GPSizeAdd( ::handle, sz:handle )



//Constructors
//
//The Size class has the following constructors.
//
//Constructor                        Description
//Size::Size()                     Creates a Size object and initializes the members to zero. This is the default constructor.
//Size::Size(REAL,REAL)            Creates a Size object and initializes its Width and Height data members.
//Size::Size(Size&)               Creates a Size object and initializes its members by copying the members of another Size object.
//
//
//Methods
//
//The Size class has the following methods.
//
//Method                             Description
//Size::Empty                       The Size::Empty method determines whether a Size object is empty.
//Size::Equals                      The Size::Equals method determines whether two Size objects are equal.
//Size::operator-(Size&)           The Size::operator- method subtracts the Width and Height data members of two Size objects.
//Size::operator+(Size&)           The Size::operator+ method adds the Width and Height data members of two Size objects.
//
//
//Data Members
//
//The following table lists the members exposed by the Size object.
//
//Data Members    Type    Description
//Height          REAL    Vertical measurement of the Size object.
//Width           REAL    Horizontal measurement of the Size object.


#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( C5_GPSIZE )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_SIZE );
   Size * ptr;
   int iParams = hb_pcount();

   switch( iParams ){
      case 0:
         ptr = new Size();
         break;
      case 1:
       {
         GDIPLUS * p2 = hb_GDIPLUS_par( 1 );
         if( GP_IS_SIZE( p2 ) ){
            Size * point = ( Size * ) GP_GET( p2 );
            ptr =  new Size( *point );
         }
         break;
       }
      case 2:
         ptr = new Size( hb_parni( 1 ), hb_parni( 2 ) );
         break;
   }

   GP_SET( pObj, ptr );

   hb_GDIPLUS_ret( pObj );
}

HB_FUNC( C5GPSIZEEMPTY )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_SIZE( p ) ){
      Size * ptr = ( Size * ) GP_GET( p );

      hb_retl( ptr->Empty() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPSIZESUBSTRACT )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );

   if( GP_IS_SIZE( p1 ) && GP_IS_SIZE( p2 ) ){
      PHB_ITEM pitem;
      Size * ptr1 = ( Size * ) GP_GET( p1 );
      Size * ptr2 = ( Size * ) GP_GET( p2 );
      Size point3 = *ptr1 - *ptr2;
      pitem = GPNewGDIPLUSObject( &point3, GP_IT_SIZE );

      hb_itemReturnRelease( pitem );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPSIZEADD )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );

   if( GP_IS_SIZE( p1 ) && GP_IS_SIZE( p2 ) ){
      PHB_ITEM pitem;
      Size * ptr1 = ( Size * ) GP_GET( p1 );
      Size * ptr2 = ( Size * ) GP_GET( p2 );
      Size point3 = *ptr1 + *ptr2;
      pitem = GPNewGDIPLUSObject( &point3, GP_IT_SIZE );

      hb_itemReturnRelease( pitem );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPSIZEEQUALS )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );

   if( GP_IS_SIZE( p1 ) && GP_IS_SIZE( p2 ) ){
      PHB_ITEM pitem;
      Size * ptr1 = ( Size * ) GP_GET( p1 );
      Size * ptr2 = ( Size * ) GP_GET( p2 );

      hb_retl( ptr1->Equals( *ptr2 ) );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




