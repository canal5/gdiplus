#include "fivewin.ch"

function Image( cFileName )
return GPImage():New( cFileName )


CLASS GPImage

   DATA handle

   METHOD New( cFileName ) CONSTRUCTOR

   METHOD Destroy()
   DESTRUCTOR Destroy()

   METHOD nWidth()   INLINE GetWidthImg ( ::handle )
   METHOD nHeight()  INLINE GetHeightImg( ::handle )

   METHOD SaveAs( cFileName )

ENDCLASS

*********************************************************************************************************
  METHOD New( cFileName ) CLASS GPImage
*********************************************************************************************************

  ::handle := _GPImage( cFileName )

return self

*********************************************************************************************************
   METHOD Destroy() CLASS GPImage
*********************************************************************************************************

   DeleteImage ( ::handle )

return nil

*********************************************************************************************************
   METHOD SaveAs( cFileName ) CLASS GPImage
*********************************************************************************************************

local cExt := upper( right( cFileName, 3 ) )




return nil




#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

int GetEncoderClsid(const WCHAR* format, CLSID* pClsid)
{
   UINT  num = 0;          // number of image encoders
   UINT  size = 0;         // size of the image encoder array in bytes
   UINT j;
   ImageCodecInfo* pImageCodecInfo = NULL;

   GetImageEncodersSize(&num, &size);
   if(size == 0)
      return -1;  // Failure

   pImageCodecInfo = (ImageCodecInfo*)(malloc(size));

   if(pImageCodecInfo == NULL)
      return -1;  // Failure

   GetImageEncoders(num, size, pImageCodecInfo);

   for( j = 0; j < num; ++j)
   {
      if( wcscmp(pImageCodecInfo[j].MimeType, format) == 0 )
      {
         *pClsid = pImageCodecInfo[j].Clsid;
         free(pImageCodecInfo);
         return j;  // Success
      }
   }
   free(pImageCodecInfo);
   return -1;  // Failure
}




HB_FUNC( _GPIMAGE )
{
   LPWSTR cFileName = hb_mbtowc( (LPSTR) hb_parc( 1 ));
   Image* cimg = new Image( cFileName );

   hb_xfree( cFileName );
   hb_retptr( (void*) cimg );

}

HB_FUNC( DELETEIMAGE )
{
   Image* img = (Image*) hb_parptr( 1 );
   delete (Image*) img;
   hb_ret();
}

HB_FUNC( GETWIDTHIMG )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetWidth() );
}

HB_FUNC( GETHEIGHTIMG )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetHeight() );
}

HB_FUNC( GPSAVEIMAGE )
{
//  Status Save(
//    [in]  const WCHAR *filename,
//    [in]  const CLSID *clsidEncoder,
//    [in]  const EncoderParameters *encoderParams
//  );

  Image* img = (Image*) hb_parptr( 1 );
  WCHAR* filename;
  CLSID clsidEncoder;
  EncoderParameters* encoderParams = NULL;
  char* szFile = (char*)hb_parc( 2 );
  char ext[_MAX_EXT];
  int i;
  GpStatus h;
  _splitpath( szFile, NULL, NULL, NULL, ext );

  filename = AnsiToWide( szFile );

  if( !strcmp( ext, ".bmp" ) )
  {
      GetEncoderClsid(L"image/bmp", &clsidEncoder);
  }
  else
  {
    if( !strcmp( ext, ".png" ) )
    {
      GetEncoderClsid(L"image/png", &clsidEncoder);
    }
    else
    {
      if( !strcmp( ext, ".jpg" ) )
      {
          GetEncoderClsid(L"image/jpeg", &clsidEncoder);
      }
      else
      {
         if( !strcmp( ext, ".gif" ) )
         {
             GetEncoderClsid(L"image/gif", &clsidEncoder);
         }
         else
         {
            if( !strcmp( ext, ".tif" ) )
            {
                GetEncoderClsid(L"image/tiff", &clsidEncoder);
            }
            else
            {
                MessageBox(0,"Type not supported","Atention",0);
            }
         }
      }
    }
  }

  h = img->Save( filename, &clsidEncoder, encoderParams );

  hb_retni( h );

}





#pragma ENDDUMP




