#include "fivewin.ch"


function InstalledFontCollection()

return GPInstalledFontCollection():New()


CLASS GPInstalledFontCollection FROM GPFontCollection

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor
//InstalledFontCollection::InstalledFontCollection



ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPInstalledFontCollection
*********************************************************************************************************

   ::handle := _GPInstalledFontCollection()
   
return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPInstalledFontCollection
*********************************************************************************************************

  ::handle := nil

return nil


//Constructors
//
//The InstalledFontCollection class has the following constructors.
//
//Constructor                                            Description
//InstalledFontCollection::InstalledFontCollection       Creates an InstalledFontCollection::InstalledFontCollection object.


#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( _GPINSTALLEDFONTCOLLECTION )
{
	 InstalledFontCollection * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_INSTALLEDFONTCOLLECTION );
   
   o = new InstalledFontCollection();
    
   GP_SET( pObj, ( void * ) o );
   hb_GDIPLUS_ret( pObj ); 
}
#pragma ENDDUMP




