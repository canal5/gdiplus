// ¿Esto va en una clase?

#include "fivewin.ch"


function ImageCodecInfo()

return GPImageCodecInfo():New()


CLASS GPImageCodecInfo

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPImageCodecInfo
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPImageCodecInfo()
  elseif iParams == 1
     ::handle := _GPImageCodecInfo( p1 )                               //
  elseif iParams == 3
     ::handle := _GPImageCodecInfo( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPImageCodecInfo( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPImageCodecInfo( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPImageCodecInfo( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPImageCodecInfo( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPImageCodecInfo
*********************************************************************************************************

  if !empty(::handle)
     DeleteImageCodecInfo( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPImageCodecInfo
//*********************************************************************************************************
//
//return GPImageCodecInfo(::handle)


//Data Members
//
//The following table lists the members exposed by the ImageCodecInfo object.
//
//Data Members       Type    Description
//Clsid              CLSID   Codec identifier.
//FormatID           GUID    File format identifier. GUIDs that identify various file formats (ImageFormatBMP, ImageFormatEMF, and the like) are defined in Gdiplusimaging.h.
//CodecName          WCHAR * Pointer to a null-terminated string that contains the codec name.
//DllName            WCHAR * Pointer to a null-terminated string that contains the path name of the DLL in which the codec resides. If the codec is not in a DLL, this pointer is NULL.
//FormatDescription  WCHAR * Pointer to a null-terminated string that contains the name of the file format used by the codec.
//FilenameExtension  WCHAR * Pointer to a null-terminated string that contains all file-name extensions associated with the codec. The extensions are separated by semicolons.
//MimeType           WCHAR *  Pointer to a null-terminated string that contains the mime type of the codec.
//Flags              DWORD   Combination of flags from the ImageCodecFlags enumeration.
//Version            DWORD   Integer that indicates the version of the codec.
//SigCount                   DWORD   Integer that indicates the number of signatures used by the file format associated with the codec.
//SigSize            DWORD   Integer that indicates the number of bytes in each signature.
//SigPattern         BYTE *  Pointer to an array of bytes that contains the pattern for each signature.
//SigMask            BYTE *  Pointer to an array of bytes that contains the mask for each signature.



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPIMAGECODECINFO )
{
   //ImageCodecInfo* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new ImageCodecInfo();
   //else if (iParams == 1 )
   //    ptr = new ImageCodecInfo( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new ImageCodecInfo( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new ImageCodecInfo( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEIMAGECODECINFO )
{
   //ImageCodecInfo* clr = (ImageCodecInfo*) hb_parptr( 1 );
   //delete (ImageCodecInfo*) clr;
   //hb_ret();
}

//HB_FUNC( GPIMAGECODECINFO... )
//{
//   ImageCodecInfo* ptr = (ImageCodecInfo*) hb_parptr( 1 );
//}

#pragma ENDDUMP




