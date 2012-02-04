#include "fivewin.ch"


function ImageAttributes()

return GPImageAttributes():New()


CLASS GPImageAttributes

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPImageAttributes
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPImageAttributes()
  elseif iParams == 1
     ::handle := _GPImageAttributes( p1 )                               //
  elseif iParams == 3
     ::handle := _GPImageAttributes( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPImageAttributes( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPImageAttributes( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPImageAttributes( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPImageAttributes( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPImageAttributes
*********************************************************************************************************

  if !empty(::handle)
     DeleteImageAttributes( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPImageAttributes
//*********************************************************************************************************
//
//return GPImageAttributes(::handle)

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
//Constructor	                                      Description
//ImageAttributes::ImageAttributes	              Creates an ImageAttributes::ImageAttributes object. This is the default constructor.
//
//
//Methods
//
//The ImageAttributes class has the following methods.
//
//Method	                                              Description
//ImageAttributes::ClearBrushRemapTable	              The ImageAttributes::ClearBrushRemapTable method clears the brush color-remap table of this ImageAttributes object.
//ImageAttributes::ClearColorKey	                      The ImageAttributes::ClearColorKey method clears the color key (transparency range) for a specified category.
//ImageAttributes::ClearColorMatrices	              The ImageAttributes::ClearColorMatrices method clears the color-adjustment matrix and the grayscale-adjustment matrix for a specified category.
//ImageAttributes::ClearColorMatrix	              The ImageAttributes::ClearColorMatrix method clears the color-adjustment matrix for a specified category.
//ImageAttributes::ClearGamma	                      The ImageAttributes::ClearGamma method disables gamma correction for a specified category.
//ImageAttributes::ClearNoOp	                      The ImageAttributes::ClearNoOp method clears the NoOp setting for a specified category.
//ImageAttributes::ClearOutputChannel	              The ImageAttributes::ClearOutputChannel method clears the CMYK output channel setting for a specified category.
//ImageAttributes::ClearOutputChannelColorProfile	      The ImageAttributes::ClearOutputChannelColorProfile method clears the output channel color profile setting for a specified category.
//ImageAttributes::ClearRemapTable	              The ImageAttributes::ClearRemapTable method clears the color-remap table for a specified category.
//ImageAttributes::ClearThreshold	                      The ImageAttributes::ClearThreshold method clears the threshold value for a specified category.
//ImageAttributes::Clone	                              The ImageAttributes::Clone method makes a copy of this ImageAttributes object.
//ImageAttributes::GetAdjustedPalette	              The ImageAttributes::GetAdjustedPalette method adjusts the colors in a palette according to the adjustment settings of a specified category.
//ImageAttributes::GetLastStatus	                      The ImageAttributes::GetLastStatus method returns a value that indicates the nature of this ImageAttributes object's most recent method failure.
//ImageAttributes::Reset	                              The ImageAttributes::Reset method clears all color- and grayscale-adjustment settings for a specified category.
//ImageAttributes::SetBrushRemapTable	              The ImageAttributes::SetBrushRemapTable method sets the color remap table for the brush category.
//ImageAttributes::SetColorKey	                      The ImageAttributes::SetColorKey method sets the color key (transparency range) for a specified category.
//ImageAttributes::SetColorMatrices	              The ImageAttributes::SetColorMatrices method sets the color-adjustment matrix and the grayscale-adjustment matrix for a specified category.
//ImageAttributes::SetColorMatrix	                      The ImageAttributes::SetColorMatrix method sets the color-adjustment matrix for a specified category.
//ImageAttributes::SetGamma	                      The ImageAttributes::SetGamma method sets the gamma value for a specified category.
//ImageAttributes::SetNoOp	                      The ImageAttributes::SetNoOp method turns off color adjustment for a specified category. You can call ImageAttributes::ClearNoOp to reinstate the color-adjustment settings that were in place before the call to ImageAttributes::SetNoOp.
//ImageAttributes::SetOutputChannel	              The ImageAttributes::SetOutputChannel method sets the CMYK output channel for a specified category.
//ImageAttributes::SetOutputChannelColorProfile	      The ImageAttributes::SetOutputChannelColorProfile method sets the output channel color-profile file for a specified category.
//ImageAttributes::SetRemapTable	                      The ImageAttributes::SetRemapTable method sets the color-remap table for a specified category.
//ImageAttributes::SetThreshold	                      The ImageAttributes::SetThreshold method sets the threshold (transparency range) for a specified category.
//ImageAttributes::SetToIdentity	                      The ImageAttributes::SetToIdentity method sets the color-adjustment matrix of a specified category to identity matrix.
//ImageAttributes::SetWrapMode	                      The ImageAttributes::SetWrapMode method sets the wrap mode of this ImageAttributes object.





#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPIMAGEATTRIBUTES )
{
   //ImageAttributes* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new ImageAttributes();
   //else if (iParams == 1 )
   //    ptr = new ImageAttributes( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new ImageAttributes( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new ImageAttributes( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEIMAGEATTRIBUTES )
{
   ImageAttributes* clr = (ImageAttributes*) hb_parptr( 1 );
   delete (ImageAttributes*) clr;
   hb_ret();
}

//HB_FUNC( GPIMAGEATTRIBUTES... )
//{
//   ImageAttributes* ptr = (ImageAttributes*) hb_parptr( 1 );
//}

#pragma ENDDUMP




