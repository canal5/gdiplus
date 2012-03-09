#include "fivewin.ch"


function ImageAttributes()

return GPImageAttributes():New()


CLASS GPImageAttributes

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//Constructor                                       Description
//ImageAttributes::ImageAttributes                Creates an ImageAttributes::ImageAttributes object. This is the default constructor.

  METHOD ClearBrushRemapTable()
  METHOD ClearColorKey()
  METHOD ClearColorMatrices()
  METHOD ClearColorMatrix()
  METHOD ClearGamma()
  METHOD ClearNoOp()
  METHOD ClearOutputChannel()
  METHOD ClearOutputChannelColorProfile()
  METHOD ClearRemapTable()
  METHOD ClearThreshold()
  METHOD Clone()
  METHOD GetAdjustedPalette()
  METHOD GetLastStatus()
  METHOD Reset()
  METHOD SetBrushRemapTable()
  METHOD SetColorKey()
  METHOD SetColorMatrices()
  METHOD SetColorMatrix()
  METHOD SetGamma()
  METHOD SetNoOp()
  METHOD SetOutputChannel()
  METHOD SetOutputChannelColorProfile()
  METHOD SetRemapTable()
  METHOD SetThreshold()
  METHOD SetToIdentity()
  METHOD SetWrapMode()


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPImageAttributes
*********************************************************************************************************

local iParams := PCount()

  ::handle := C5_GPImageAttributes()

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPImageAttributes
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD ClearBrushRemapTable() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearColorKey() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearColorMatrices() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearColorMatrix() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearGamma() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearNoOp() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearOutputChannel() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearOutputChannelColorProfile() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearRemapTable() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ClearThreshold() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Clone() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetAdjustedPalette() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Reset() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetBrushRemapTable() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetColorKey() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetColorMatrices() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetColorMatrix() CLASS GPImageAttributes
*********************************************************************************************************

return C5SetColorMatrix( ::handle,

*********************************************************************************************************
  METHOD SetGamma() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetNoOp() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetOutputChannel() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetOutputChannelColorProfile() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetRemapTable() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetThreshold() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetToIdentity() CLASS GPImageAttributes
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetWrapMode() CLASS GPImageAttributes
*********************************************************************************************************

return 0


//Members
//
//The ImageAttributes class inherits from GdiplusBase. ImageAttributes also has the following types of members:
//
//Constructors
//Methods
//Constructors
//
//
//
//
//The ImageAttributes class has the following constructors.
//
//Constructor                                       Description
//ImageAttributes::ImageAttributes                Creates an ImageAttributes::ImageAttributes object. This is the default constructor.
//
//
//Methods
//
//The ImageAttributes class has the following methods.
//
//Method                                          Description
//ImageAttributes::ClearBrushRemapTable           The ImageAttributes::ClearBrushRemapTable method clears the brush color-remap table of this ImageAttributes object.
//ImageAttributes::ClearColorKey                  The ImageAttributes::ClearColorKey method clears the color key (transparency range) for a specified category.
//ImageAttributes::ClearColorMatrices             The ImageAttributes::ClearColorMatrices method clears the color-adjustment matrix and the grayscale-adjustment matrix for a specified category.
//ImageAttributes::ClearColorMatrix               The ImageAttributes::ClearColorMatrix method clears the color-adjustment matrix for a specified category.
//ImageAttributes::ClearGamma                     The ImageAttributes::ClearGamma method disables gamma correction for a specified category.
//ImageAttributes::ClearNoOp                      The ImageAttributes::ClearNoOp method clears the NoOp setting for a specified category.
//ImageAttributes::ClearOutputChannel             The ImageAttributes::ClearOutputChannel method clears the CMYK output channel setting for a specified category.
//ImageAttributes::ClearOutputChannelColorProfile The ImageAttributes::ClearOutputChannelColorProfile method clears the output channel color profile setting for a specified category.
//ImageAttributes::ClearRemapTable                The ImageAttributes::ClearRemapTable method clears the color-remap table for a specified category.
//ImageAttributes::ClearThreshold                 The ImageAttributes::ClearThreshold method clears the threshold value for a specified category.
//ImageAttributes::Clone                          The ImageAttributes::Clone method makes a copy of this ImageAttributes object.
//ImageAttributes::GetAdjustedPalette             The ImageAttributes::GetAdjustedPalette method adjusts the colors in a palette according to the adjustment settings of a specified category.
//ImageAttributes::GetLastStatus                  The ImageAttributes::GetLastStatus method returns a value that indicates the nature of this ImageAttributes object's most recent method failure.
//ImageAttributes::Reset                          The ImageAttributes::Reset method clears all color- and grayscale-adjustment settings for a specified category.
//ImageAttributes::SetBrushRemapTable             The ImageAttributes::SetBrushRemapTable method sets the color remap table for the brush category.
//ImageAttributes::SetColorKey                    The ImageAttributes::SetColorKey method sets the color key (transparency range) for a specified category.
//ImageAttributes::SetColorMatrices               The ImageAttributes::SetColorMatrices method sets the color-adjustment matrix and the grayscale-adjustment matrix for a specified category.
//ImageAttributes::SetColorMatrix                 The ImageAttributes::SetColorMatrix method sets the color-adjustment matrix for a specified category.
//ImageAttributes::SetGamma                       The ImageAttributes::SetGamma method sets the gamma value for a specified category.
//ImageAttributes::SetNoOp                        The ImageAttributes::SetNoOp method turns off color adjustment for a specified category. You can call ImageAttributes::ClearNoOp to reinstate the color-adjustment settings that were in place before the call to ImageAttributes::SetNoOp.
//ImageAttributes::SetOutputChannel               The ImageAttributes::SetOutputChannel method sets the CMYK output channel for a specified category.
//ImageAttributes::SetOutputChannelColorProfile   The ImageAttributes::SetOutputChannelColorProfile method sets the output channel color-profile file for a specified category.
//ImageAttributes::SetRemapTable                  The ImageAttributes::SetRemapTable method sets the color-remap table for a specified category.
//ImageAttributes::SetThreshold                   The ImageAttributes::SetThreshold method sets the threshold (transparency range) for a specified category.
//ImageAttributes::SetToIdentity                  The ImageAttributes::SetToIdentity method sets the color-adjustment matrix of a specified category to identity matrix.
//ImageAttributes::SetWrapMode                    The ImageAttributes::SetWrapMode method sets the wrap mode of this ImageAttributes object.





#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPIMAGEATTRIBUTES )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_IMAGEATTRIBUTES );
   ImageAttributes * pIMGA = new ImageAttributes();

   GP_SET( pObj, pIMGA );
   hb_GDIPLUS_ret( pObj );
}

/*Status SetColorMatrix(
  [in]            const ColorMatrix *colorMatrix,
  [in]            ColorMatrixFlags mode,
  [in, optional]  ColorAdjustType type
);*/

HB_FUNC( C5SETCOLORMATRIX )
{



}

//HB_FUNC( GPIMAGEATTRIBUTES... )
//{
//   ImageAttributes* ptr = (ImageAttributes*) hb_parptr( 1 );
//}

#pragma ENDDUMP




