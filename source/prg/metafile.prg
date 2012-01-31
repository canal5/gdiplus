#include "fivewin.ch"

function Metafile( cFileName )
return GPMetafile():New( cFileName )


CLASS GPMetafile

  DATA handle

  METHOD New( cFileName ) CONSTRUCTOR

  METHOD ConvertToEmfPlus()
  METHOD ConvertToEmfPlus2()
  METHOD ConvertToEmfPlus3()
  METHOD EmfToWmfBits()
  METHOD GetDownLevelRasterizationLimit()
  METHOD GetHENHMETAFILE()
  METHOD GetMetafileHeader()
  METHOD GetMetafileHeader2()
  METHOD GetMetafileHeader3()
  METHOD GetMetafileHeader4()
  METHOD GetMetafileHeader5()
  METHOD PlayRecord()
  METHOD SetDownLevelRasterizationLimit()

  METHOD Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*******************************************************************************
  METHOD New( cFileName ) CLASS GPMetafile
*******************************************************************************

  ::handle := GPMetafile( cFileName )

return self

*******************************************************************************
  METHOD ConvertToEmfPlus()              CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD ConvertToEmfPlus2()              CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD ConvertToEmfPlus3()              CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD EmfToWmfBits()                  CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetDownLevelRasterizationLimit() CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetHENHMETAFILE()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetMetafileHeader()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetMetafileHeader2()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetMetafileHeader3()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetMetafileHeader4()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetMetafileHeader5()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD PlayRecord()CLASS GPMetafile
*******************************************************************************

return 0

*******************************************************************************
  METHOD SetDownLevelRasterizationLimit()CLASS GPMetafile
*******************************************************************************

return 0

*********************************************************************************************************
  METHOD Destroy() CLASS GPMetafile
*********************************************************************************************************

  GPDeleteMetafile( ::handle )

return nil



//Metafile::ConvertToEmfPlus                  The Metafile::ConvertToEmfPlus method converts this Metafile object to the EMF+ format.
//Metafile::ConvertToEmfPlus	            The Metafile::ConvertToEmfPlus method converts this Metafile object to the EMF+ format.
//Metafile::ConvertToEmfPlus	            The Metafile::ConvertToEmfPlus method converts this Metafile object to the EMF+ format.
//Metafile::EmfToWmfBits	                    Converts an enhanced-format metafile to a WMF metafile and stores the converted records in a specified buffer.
//Metafile::GetDownLevelRasterizationLimit    Gets the rasterization limit currently set for this metafile. The rasterization limit is the resolution used for certain brush bitmaps that are stored in the metafile. For a detailed explanation of the rasterization limit, see Metafile::SetDownLevelRasterizationLimit.
//Metafile::GetHENHMETAFILE	            The Metafile::GetHENHMETAFILE method gets a Windows handle to an Enhanced Metafile (EMF) file.
//Metafile::GetMetafileHeader                 The Metafile::GetMetafileHeader method gets the header.
//Metafile::GetMetafileHeader                 The Metafile::GetMetafileHeader method gets the metafile header of this metafile.
//Metafile::GetMetafileHeader                 The Metafile::GetMetafileHeader method gets the header.
//Metafile::GetMetafileHeader	            The Metafile::GetMetafileHeader method gets the header.
//Metafile::GetMetafileHeader                 The Metafile::GetMetafileHeader method gets the header.
//Metafile::PlayRecord	                    The Metafile::PlayRecord method plays a metafile record.
//Metafile::SetDownLevelRasterizationLimit    Sets the resolution for certain brush bitmaps that are stored in this metafile.
//



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( GPMETAFILE )
{
   //Metafile(
   //  [in]  const WCHAR *filename
   //);

   LPWSTR cFileName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   Metafile * mf = new Metafile( cFileName );
   hb_retptr( (void*) mf );

}


HB_FUNC( GPDELETEMETAFILE )
{

   Metafile* p = (Metafile*) hb_parptr( 1 );
   delete (Metafile*) p;
   hb_ret();

}

#pragma ENDDUMP
