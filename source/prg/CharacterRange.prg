#include "fivewin.ch"


function CharacterRange( A, B )
   
   local o

   if A != NIL 
      o = GPCharacterRange():New( A, B ) 
   else 
      o = GPCharacterRange():New() 
   endif

return o 


CLASS GPCharacterRange

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()
  
  METHOD First( nValue )  SETGET
  METHOD Length( nValue ) SETGET

  METHOD Assigment( p )  OPERATOR "="


ENDCLASS

*********************************************************************************************************
  METHOD New( A, B ) CLASS GPCharacterRange
*********************************************************************************************************

  if A != 0
     ::handle := _GPCharacterRange()
  else
     ::handle := _GPCharacterRange( A, B )                               
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPCharacterRange
*********************************************************************************************************

  ::handle := nil

return nil

//*********************************************************************************************************
  METHOD First( nValue ) CLASS GPCharacterRange
//*********************************************************************************************************

   if pcount() > 0
      return GPCharacterFirst(::handle, nValue)
   endif

return GPCharacterFirst(::handle)

//*********************************************************************************************************
  METHOD Length( nValue ) CLASS GPCharacterRange
//*********************************************************************************************************

   if pcount() > 0
      return GPCharacterLength(::handle, nValue)
   endif

return GPCharacterLength(::handle)

//*********************************************************************************************************
  METHOD Assigment( p ) CLASS GPCharacterRange
//*********************************************************************************************************

return GPCharacterAssigment( ::handle, p )


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
#include <gc.h>

HB_FUNC( _GPCHARACTERRANGE )
{
   CharacterRange * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_CHARACTERRANGE );
   int iParams = hb_pcount();
   BOOL lOk = true;   
   
   switch( iParams ){
   	   case 0:
   	      o = new CharacterRange();
   	      break;
   	   case 2:
   	      o = new CharacterRange( hb_parni( 1 ), hb_parni( 2 ) );
   	      break;
   }
   
   GP_SET( pObj, ( void * ) o );
   hb_GDIPLUS_ret( pObj );   
   
}

HB_FUNC( GPCHARACTERFIRST ){
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_CHARACTERRANGE( p ) ){
      CharacterRange * o = ( CharacterRange * ) GP_GET( p );
      
      if( hb_pcount() > 1 )
         o->First = hb_parni( 2 );
         
      hb_retni( o->First );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}

HB_FUNC( GPCHARACTERLENGTH ){
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_CHARACTERRANGE( p ) ){
      CharacterRange * o = ( CharacterRange * ) GP_GET( p );
      
      if( hb_pcount() > 1 )
         o->Length = hb_parni( 2 );
         
      hb_retni( o->Length );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}


HB_FUNC( GPCHARACTERASSIGMENT ){
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_CHARACTERRANGE( p ) ){
      CharacterRange * o  = ( CharacterRange * ) GP_GET( p );
      CharacterRange * o2 = ( CharacterRange * ) GP_GET( p2 );
      *o = *o2;      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  
}



//HB_FUNC( GPCharacterRange... )
//{
//   CharacterRange* ptr = (CharacterRange*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP




