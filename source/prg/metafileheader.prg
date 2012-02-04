#include "fivewin.ch"

function MetafileHeader( hMetaFileHeader )
return GPMetafile():New( hMetaFileHeader )


CLASS GPMetafileHeader

  DATA handle

  METHOD New( hMetaFileHeader ) CONSTRUCTOR

  METHOD GetBounds()
  METHOD GetDpiX()
  METHOD GetDpiY()
  METHOD GetEmfHeader()
  METHOD GetEmfPlusFlags()
  METHOD GetMetafileSize()
  METHOD GetType()
  METHOD GetVersion()
  METHOD GetWmfHeader()
  METHOD IsDisplay()
  METHOD IsEmf()
  METHOD IsEmfOrEmfPlus()
  METHOD IsEmfPlus()
  METHOD IsEmfPlusDual()
  METHOD IsEmfPlusOnly()
  METHOD IsWmf()
  METHOD IsWmfPlaceable()

  METHOD Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*******************************************************************************
  METHOD New( hMetaFileHeader ) CLASS GPMetafileHeader
*******************************************************************************

  ::handle := hMetaFileHeader

return self


*********************************************************************************************************
  METHOD Destroy() CLASS GPMetafileHeader
*********************************************************************************************************

  if !empty(::handle)
  endif

return nil

*******************************************************************************
  METHOD GetBounds() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetDpiX() CLASS GPMetafileHeader
*******************************************************************************

return 0
*******************************************************************************
  METHOD GetDpiY() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetEmfHeader() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetEmfPlusFlags() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetMetafileSize() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetType() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetVersion() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD GetWmfHeader() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsDisplay() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsEmf() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsEmfOrEmfPlus() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsEmfPlus() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsEmfPlusDual() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsEmfPlusOnly() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsWmf() CLASS GPMetafileHeader
*******************************************************************************

return 0

*******************************************************************************
  METHOD IsWmfPlaceable() CLASS GPMetafileHeader
*******************************************************************************

return 0





// MetafileHeader::GetBounds           The MetafileHeader::GetBounds method gets the bounding rectangle for the associated metafile.
// MetafileHeader::GetDpiX             The MetafileHeader::GetDpiX method gets the horizontal dots per inch of the associated metafile.
// MetafileHeader::GetDpiY             The MetafileHeader::GetDpiY method gets the vertical dots per inch of the associated metafile.
// MetafileHeader::GetEmfHeader        The MetafileHeader::GetEmfHeader method gets an ENHMETAHEADER3 structure that contains properties of the associated metafile.
// MetafileHeader::GetEmfPlusFlags     The MetafileHeader::GetEmfPlusFlags method gets a flag that indicates whether the associated metafile was recorded against a video display device context.
// MetafileHeader::GetMetafileSize     The MetafileHeader::GetMetafileSize method gets the size, in bytes, of the metafile.
// MetafileHeader::GetType             The MetafileHeader::GetType method gets the type of the associated metafile.
// MetafileHeader::GetVersion          The MetafileHeader::GetVersion method gets the version of the metafile.
// MetafileHeader::GetWmfHeader        The MetafileHeader::GetWmfHeader method gets a METAHEADER structure that contains properties of the associated metafile.
// MetafileHeader::IsDisplay           The MetafileHeader::IsDisplay method determines whether the associated metafile was recorded against a video display device context.
// MetafileHeader::IsEmf               The MetafileHeader::IsEmf method determines whether the associated metafile is in the EMF format.
// MetafileHeader::IsEmfOrEmfPlus      The MetafileHeader::IsEmfOrEmfPlus method determines whether the associated metafile is in either the EMF or EMF+ format.
// MetafileHeader::IsEmfPlus           The MetafileHeader::IsEmfPlus method determines whether the associated metafile is in the EMF+ format.
// MetafileHeader::IsEmfPlusDual       The MetafileHeader::IsEmfPlusDual method determines whether the associated metafile is in the EMF+ Dual format.
// MetafileHeader::IsEmfPlusOnly       The MetafileHeader::IsEmfPlusOnly method determines whether the associated metafile is in the EMF+ Only format.
// MetafileHeader::IsWmf               The MetafileHeader::IsWmf method determines whether the associated metafile is in the WMF format.
// MetafileHeader::IsWmfPlaceable      The MetafileHeader::IsWmfPlaceable method determines whether the associated metafile is a placeable metafile.
//
//
// Data Members
//
// The following table lists the members exposed by the MetafileHeader object.
//
// Data Members            Type            Description
//
// DpiX                    REAL            Horizontal resolution, in dots per inch, of the image stored in the associated metafile.
// DpiY                    REAL            Vertical resolution, in dots per inch, of the image stored in the associated metafile.
// EmfPlusFlags            UINT            Value that specifies the EMF+ flags associated with the metafile.
// EmfPlusHeaderSize       INT             Size, in bytes, of the EMF+ header.
// Height                  INT             Height, in pixels, of the image stored in the associated metafile.
// LogicalDpiX             INT             Logical horizontal resolution, in dots per inch, of the image stored in the associated metafile.
// LogicalDpiY             INT             Logical vertical resolution, in dots per inch, of the image stored in the associated metafile.
// Size                    UINT            Size, in bytes, of the associated metafile.
// Type                    MetafileType    Element of the MetafileType enumeration that specifies the type of the associated metafile.
// Version                 UINT            Version of the associated metafile.
// Width                   INT             Width, in pixels, of the image stored in the associated metafile.
// X                       INT             Leftmost coordinate of the image stored in the associated metafile.
// Y                       INT             Topmost coordinate of the image stored in the associated metafile.
// {WmfHeader, EmfHeader}  union           Types are METAHEADER and ENHMETAHEADER3 respectively.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPMETAFILEHEADER )
{
   //Metafile(
   //  [in]  const WCHAR *filename
   //);

   //LPWSTR cFileName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   //Metafile * mf = new Metafile( cFileName );
   //hb_retptr( (void*) mf );

}


HB_FUNC( GPDELETEMETAFILEHEADER )
{

   //Metafile* p = (Metafile*) hb_parptr( 1 );
   //delete (Metafile*) p;
   //hb_ret();

}

#pragma ENDDUMP
