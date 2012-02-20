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
   
return GPSizeFSubstract( ::handle, @sz )

*********************************************************************************************************
  METHOD Add( sz ) CLASS GPSizeF
*********************************************************************************************************

return GPSizeFAdd( ::handle, @sz )



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
#include <gc.h>

HB_FUNC( _GPSIZEF )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_SIZEF );   
   SizeF * ptr;
   int iParams = hb_pcount();

   switch( iParams ){
      case 0: 
         ptr = new SizeF();
         break;
      case 1:
       {
         GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
         if( GP_IS_SIZEF( p2 ) ){
            SizeF * point = ( SizeF * ) GP_GET( p2 );
            ptr =  new SizeF( *point ); 
         }
         break;
       }
      case 2:
         ptr = new SizeF( (REAL) hb_parnd( 1 ), (REAL) hb_parnd( 2 ) );
         break;       
   }

   GP_SET( pObj, ptr );

   hb_GDIPLUS_ret( pObj );
}

HB_FUNC( GPSIZEFEMPTY )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_SIZEF( p ) ){
      SizeF * ptr = ( SizeF * ) GP_GET( p );
         
      hb_retl( ptr->Empty() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPSIZEFSUBSTRACT )
{ 
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_SIZEF( p1 ) && GP_IS_SIZEF( p2 ) ){
      PHB_ITEM pitem;
      SizeF * ptr1 = ( SizeF * ) GP_GET( p1 );
      SizeF * ptr2 = ( SizeF * ) GP_GET( p2 );
      SizeF point3 = *ptr1 - *ptr2;
      pitem = GPNewSizeFObject( point3 );
      
      hb_itemReturnRelease( pitem );
              
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPSIZEFADD )
{ 
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_SIZEF( p1 ) && GP_IS_SIZEF( p2 ) ){
      PHB_ITEM pitem;
      SizeF * ptr1 = ( SizeF * ) GP_GET( p1 );
      SizeF * ptr2 = ( SizeF * ) GP_GET( p2 );
      SizeF point3 = *ptr1 + *ptr2;
      pitem = GPNewSizeFObject( point3 );
      
      hb_itemReturnRelease( pitem );
              
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPSIZEFEQUALS )
{ 
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_SIZEF( p1 ) && GP_IS_SIZEF( p2 ) ){
      PHB_ITEM pitem;
      SizeF * ptr1 = ( SizeF * ) GP_GET( p1 );
      SizeF * ptr2 = ( SizeF * ) GP_GET( p2 );
      
      hb_retl( ptr1->Equals( *ptr2 ) ); 
                     
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




