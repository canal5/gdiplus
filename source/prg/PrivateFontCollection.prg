#include "fivewin.ch"


function PrivateFontCollection()

return GPPrivateFontCollection():New()


CLASS GPPrivateFontCollection FROM GPFontCollection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD AddFontFile()
  METHOD AddMemoryFont()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPrivateFontCollection
*********************************************************************************************************

local iParams := PCount()

     ::handle := _GPPrivateFontCollection()

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPrivateFontCollection
*********************************************************************************************************

  ::handle := nil

return nil


*********************************************************************************************************
  METHOD AddFontFile( cFilename ) CLASS GPPrivateFontCollection
*********************************************************************************************************

return GPPrivateAddFontFile( ::handle, cFilename )

*********************************************************************************************************
  METHOD AddMemoryFont( ptr, nLen ) CLASS GPPrivateFontCollection
*********************************************************************************************************

return GPPrivateAddMemoryFont( ::handle, ptr, nLen )



//*********************************************************************************************************
//  METHOD () CLASS GPPrivateFontCollection
//*********************************************************************************************************
//
//return GPPrivateFontCollection(::handle)

//Constructors
//
//The PrivateFontCollection class has the following constructors.
//
//Constructor                                        Description
//PrivateFontCollection::PrivateFontCollection       Creates an empty PrivateFontCollection object.
//
//
//Methods
//
//The PrivateFontCollection class has the following methods.
//
//Method                                             Description
//PrivateFontCollection::AddFontFile                 The PrivateFontCollection::AddFontFile method adds a font file to this private font collection.
//PrivateFontCollection::AddMemoryFont               The PrivateFontCollection::AddMemoryFont method adds a font that is contained in system memory to a GDI+ font collection.





#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( _GPPRIVATEFONTCOLLECTION )
{
	 PrivateFontCollection * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_PRIVATEFONTCOLLECTION );
   
   o = new PrivateFontCollection();
    
   GP_SET( pObj, ( void * ) o );
   hb_GDIPLUS_ret( pObj ); 
}

HB_FUNC( GPPRIVATEADDFONTFILE  )
{
	 GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
	 Status sta;
	 if( GP_IS_PRIVATEFONTCOLLECTION( pObj ) )
	 {
	    PrivateFontCollection * o = ( PrivateFontCollection * ) GP_GET( pObj );
	    WCHAR* filename = hb_GDIPLUS_parw( 2 ) ;
      sta = o->AddFontFile( filename );
      hb_xfree( filename );
	    hb_retni( ( Status ) sta );
	 }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPPRIVATEADDMEMORYFONT )
{
	 GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
	 Status sta;
	 if( GP_IS_PRIVATEFONTCOLLECTION( pObj ) )
	 {
	    PrivateFontCollection * o = ( PrivateFontCollection * ) GP_GET( pObj );
      sta = o->AddMemoryFont( hb_parptr( 2 ), hb_parni( 3 ) );
	    hb_retni( ( Status ) sta );
	 }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

#pragma ENDDUMP




