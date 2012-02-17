#include "fivewin.ch"

function Image( cFileName )
return GPImage():New( cFileName )


CLASS GPImage

  DATA handle
  DATA cFileName

  METHOD New( cFileName ) CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD nWidth()   INLINE ::GetWidth()
  METHOD nHeight()  INLINE ::GetHeight()

         METHOD Clone()
         METHOD FindFirstItem()
         METHOD FindNextItem()
         METHOD FromFile()
         METHOD FromStream()
         METHOD GetAllPropertyItems()
         METHOD GetBounds()
         METHOD GetEncoderParameterList()
         METHOD GetEncoderParameterListSize()
         METHOD GetFlags()
         METHOD GetFrameCount()
         METHOD GetFrameDimensionsCount()
         METHOD GetFrameDimensionsList()

  METHOD Clone( oImage ) CONSTRUCTOR
  METHOD FindFirstItem()
  METHOD FindNextItem()
  METHOD FromFile( cFileName, bParam )
  METHOD FromStream()
  METHOD GetAllPropertyItems()
  METHOD GetBounds()
  METHOD GetEncoderParameterList()
  METHOD GetEncoderParameterListSize()
  METHOD GetFlags()
  METHOD GetFrameCount()
  METHOD GetFrameDimensionsCount()
  METHOD GetFrameDimensionsList()
  METHOD GetHeight()
  METHOD GetHorizontalResolution()

         METHOD GetItemData()

  METHOD GetLastStatus()

         METHOD GetPalette()

  METHOD GetPaletteSize()
  METHOD GetPhysicalDimension()
  METHOD GetPixelFormat()
  METHOD GetPropertyCount()

         METHOD GetPropertyIdList()
         METHOD GetPropertyItem()
         METHOD GetPropertyItemSize()
         METHOD GetPropertySize()
         METHOD GetRawFormat()
         METHOD GetThumbnailImage()

  METHOD GetType()
  METHOD GetVerticalResolution()
  METHOD GetWidth()

         METHOD RemovePropertyItem()

  METHOD RotateFlip()
  METHOD Save()
  METHOD SaveAs( cFileName )

         METHOD SaveAdd()
         METHOD SelectActiveFrame()
         METHOD SetAbort()
         METHOD SetPalette()
         METHOD SetPropertyItem()

ENDCLASS

*********************************************************************************************************
  METHOD New( cFileName ) CLASS GPImage
*********************************************************************************************************

  ::cFileName := cFileName
  ::handle    := _GPImage( cFileName )

return self

*********************************************************************************************************
   METHOD Destroy() CLASS GPImage
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
   METHOD SaveAs( cFileName ) CLASS GPImage
*********************************************************************************************************

DEFAULT cFileName := ::cFileName

return ::Save( cFileName )

*********************************************************************************************************
  METHOD Clone( oImage ) CLASS GPImage
*********************************************************************************************************

::handle := GPImageClone( oImage:handle )

return self

*********************************************************************************************************
  METHOD FindFirstItem() CLASS GPImage
*********************************************************************************************************
return 0

*********************************************************************************************************
  METHOD FindNextItem() CLASS GPImage
*********************************************************************************************************
return 0

*********************************************************************************************************
  METHOD FromFile( cFileName, bUseEmbeddedColorManagement ) CLASS GPImage
*********************************************************************************************************
return Self

*********************************************************************************************************
  METHOD FromStream() CLASS GPImage
*********************************************************************************************************
return 0

*********************************************************************************************************
  METHOD GetAllPropertyItems() CLASS GPImage
*********************************************************************************************************
return 0

*********************************************************************************************************
  METHOD GetBounds( oRect, units ) CLASS GPImage
*********************************************************************************************************

return GPImageGetBounds( ::handle, oRect:handle, @units )

*********************************************************************************************************
  METHOD GetEncoderParameterList() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetEncoderParameterListSize() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetFlags() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetFrameCount() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetFrameDimensionsCount() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetFrameDimensionsList() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetHeight() CLASS GPImage
*********************************************************************************************************

return GPImageGetHeight(::handle)

*********************************************************************************************************
  METHOD GetHorizontalResolution() CLASS GPImage
*********************************************************************************************************

return GPImageGetHorizontalResolution(::handle)

*********************************************************************************************************
  METHOD GetItemData() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPImage
*********************************************************************************************************

return GPImageGetLastStatus(::handle)

*********************************************************************************************************
  METHOD GetPalette() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPaletteSize() CLASS GPImage
*********************************************************************************************************

return GPImageGetPaletteSize(::handle)

*********************************************************************************************************
  METHOD GetPhysicalDimension() CLASS GPImage
*********************************************************************************************************

return GPImageGetPhysicalDimension(::handle, oSize )

*********************************************************************************************************
  METHOD GetPixelFormat() CLASS GPImage
*********************************************************************************************************

return GPImageGetPixelFormat(::handle)

*********************************************************************************************************
  METHOD GetPropertyCount() CLASS GPImage
*********************************************************************************************************

return GPImageGetPropertyCount(::handle)

*********************************************************************************************************
  METHOD GetPropertyIdList() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPropertyItem() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPropertyItemSize() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPropertySize() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetRawFormat() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetThumbnailImage() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetType() CLASS GPImage
*********************************************************************************************************

return GPImageGetType(::handle)

*********************************************************************************************************
  METHOD GetVerticalResolution() CLASS GPImage
*********************************************************************************************************

return GPImageGetVerticalResolution(::handle)

*********************************************************************************************************
  METHOD GetWidth() CLASS GPImage
*********************************************************************************************************

return GPImageGetWidth(::handle)

*********************************************************************************************************
  METHOD RemovePropertyItem() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD RotateFlip( rotateFlipType ) CLASS GPImage
*********************************************************************************************************

return GPImageRotateFlip(::handle, rotateFlipType)

*********************************************************************************************************
  METHOD Save(cFileName) CLASS GPImage
*********************************************************************************************************

return GPImageSave(::handle, cFileName)

*********************************************************************************************************
  METHOD SaveAdd() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SelectActiveFrame() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetAbort() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetPalette() CLASS GPImage
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetPropertyItem() CLASS GPImage
*********************************************************************************************************

return 0







//Constructors
//
//The Image class has the following constructors.
//
//Constructor                                         Description
//Image::Image(IStream*,BOOL)                         Creates an Image::Image object based on a stream.
//Image::Image(WCHAR*,BOOL)                           Creates an Image::Image object based on a file.
//
//
//Methods
//
//The Image class has the following methods.
//
//Method                                              Description
//Image::Clone                                        The Image::Clone method creates a new Image object and initializes it with the contents of this Image object.
//Image::FindFirstItem                                The Image::FindFirstItem method retrieves the description and the data size of the first metadata item in this Image object.
//Image::FindNextItem                                 The Image::FindNextItem method is used along with the Image::FindFirstItem method to enumerate the metadata items stored in this Image object. The Image::FindNextItem method retrieves the description and the data size of the next metadata item in this Image object.
//Image::FromFile                                     The Image::FromFile method creates an Image object based on a file.
//Image::FromStream                                   The Image::FromStream method creates a new Image object based on a stream.
//Image::GetAllPropertyItems                          The Image::GetAllPropertyItems method gets all the property items (metadata) stored in this Image object.
//Image::GetBounds                                    The Image::GetBounds method gets the bounding rectangle for this image.
//Image::GetEncoderParameterList                      The Image::GetEncoderParameterList method gets a list of the parameters supported by a specified image encoder.
//Image::GetEncoderParameterListSize                  The Image::GetEncoderParameterListSize method gets the size, in bytes, of the parameter list for a specified image encoder.
//Image::GetFlags                                     The Image::GetFlags method gets a set of flags that indicate certain attributes of this Image object.
//Image::GetFrameCount                                The Image::GetFrameCount method gets the number of frames in a specified dimension of this Image object.
//Image::GetFrameDimensionsCount                      The Image::GetFrameDimensionsCount method gets the number of frame dimensions in this Image object.
//Image::GetFrameDimensionsList                       The Image::GetFrameDimensionsList method gets the identifiers for the frame dimensions of this Image object.
//Image::GetHeight                                    The Image::GetHeight method gets the image height, in pixels, of this image.
//Image::GetHorizontalResolution                      The Image::GetHorizontalResolution method gets the horizontal resolution, in dots per inch, of this image.
//Image::GetItemData                                  The Image::GetItemData method gets one piece of metadata from this Image object.
//Image::GetLastStatus                                The Image::GetLastStatus method returns a value that indicates the nature of this Image object's most recent method failure.
//Image::GetPalette                                   The Image::GetPalette method gets the ColorPalette of this Image object.
//Image::GetPaletteSize                               The Image::GetPaletteSize method gets the size, in bytes, of the color palette of this Image object.
//Image::GetPhysicalDimension                         The Image::GetPhysicalDimension method gets the width and height of this image.
//Image::GetPixelFormat                               The Image::GetPixelFormat method gets the pixel format of this Image object.
//Image::GetPropertyCount                             The Image::GetPropertyCount method gets the number of properties (pieces of metadata) stored in this Image object.
//Image::GetPropertyIdList                            The Image::GetPropertyIdList method gets a list of the property identifiers used in the metadata of this Image object.
//Image::GetPropertyItem                              The Image::GetPropertyItem method gets a specified property item (piece of metadata) from this Image object.
//Image::GetPropertyItemSize                          The Image::GetPropertyItemSize method gets the size, in bytes, of a specified property item of this Image object.
//Image::GetPropertySize                              The Image::GetPropertySize method gets the total size, in bytes, of all the property items stored in this Image object. The Image::GetPropertySize method also gets the number of property items stored in this Image object.
//Image::GetRawFormat                                 The Image::GetRawFormat method gets a globally unique identifier (       GUID) that identifies the format of this Image object. GUIDs that identify various file formats are defined in Gdiplusimaging.h.
//Image::GetThumbnailImage                            The Image::GetThumbnailImage method gets a thumbnail image from this Image object.
//Image::GetType                                      The Image::GetType method gets the type (bitmap or metafile) of this Image object.
//Image::GetVerticalResolution                        The Image::GetVerticalResolution method gets the vertical resolution, in dots per inch, of this image.
//Image::GetWidth                                     The Image::GetWidth method gets the width, in pixels, of this image.
//Image::RemovePropertyItem                           The Image::RemovePropertyItem method removes a property item (piece of metadata) from this Image object.
//Image::RotateFlip                                   The Image::RotateFlip method rotates and flips this image.
//Image::Save(IStream*,CLSID*,EncoderParameters*)     The Image::Save method saves this image to a stream.
//Image::Save(WCHAR*,CLSID*,EncoderParameters*)       The Image::Save method saves this image to a file.
//Image::SaveAdd(EncoderParameters*)                  The Image::SaveAdd method adds a frame to a file or stream specified in a previous call to the Save method. Use this method to save selected frames from a multiple-frame image to another multiple-frame image.
//Image::SaveAdd(Image*,EncoderParameters*)           The Image::SaveAdd method adds a frame to a file or stream specified in a previous call to the Save method.
//Image::SelectActiveFrame                            The Image::SelectActiveFrame method selects the frame in this Image object specified by a dimension and an index.
//Image::SetAbort                                     The Image::SetAbort method sets the object whose Abort method is called periodically during time-consuming rendering operation.
//Image::SetPalette                                   The Image::SetPalette method sets the color palette of this Image object.
//Image::SetPropertyItem                              The Image::SetPropertyItem method sets a property item (piece of metadata) for this Image object. If the item already exists, then its contents are updated; otherwise, a new item is added.








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


HB_FUNC( GPIMAGECLONE )
{

   Image* ptr = (Image*) hb_parptr( 1 );
   hb_retptr( (void*) ptr->Clone() );

}

//GPImageGetBounds( ::handle, oRect:handle, @units )
HB_FUNC( GPIMAGEGETBOUNDS )
{
}



HB_FUNC( GPIMAGEGETHORIZONTALRESOLUTION )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retnd( cimg->GetHorizontalResolution() );
}

HB_FUNC( GPIMAGEGETLASTSTATUS )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retnd( cimg->GetLastStatus() );
}

HB_FUNC( GPIMAGEGETPALETTESIZE )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetPaletteSize() );
}

HB_FUNC( GPIMAGEGETPHYSICALDIMENSION )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   SizeF* csize = (SizeF*) hb_parptr( 2 );
   hb_retni( cimg->GetPhysicalDimension(csize) );
}

HB_FUNC( GPIMAGEGETPIXELFORMAT )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetPixelFormat() );
}

HB_FUNC( GPIMAGEGETPROPERTYCOUNT )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetPropertyCount() );
}

HB_FUNC( GPIMAGEGETTYPE )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->GetType() );
}

HB_FUNC( GPIMAGEGETVERTICALRESOLUTION )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retnd( cimg->GetVerticalResolution() );
}

HB_FUNC( GPIMAGEGETWIDTH )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( (int)cimg->GetWidth() );
}

HB_FUNC( GPIMAGEROTATEFLIP )
{
   Image* cimg = (Image*) hb_parptr( 1 );
   hb_retni( cimg->RotateFlip( (RotateFlipType) hb_parni(2) ) );
}

HB_FUNC( GPIMAGESAVE )
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

  filename = hb_mbtowc( szFile );

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




