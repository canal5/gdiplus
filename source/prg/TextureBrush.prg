#include "fivewin.ch"

function TextureBrush( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 2
         oObj = GPTextureBrush():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 3
         oObj = GPTextureBrush():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
         exit
      case 6
         oObj = GPTextureBrush():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ], aParams[ 6 ] )
         exit
   endswitch

return oObj

CLASS GPTextureBrush

  DATA handle

  METHOD New( oColor, nWidth ) CONSTRUCTOR

  METHOD     Destroy()
  DESTRUCTOR Destroy()

//Constructor
//TextureBrush::TextureBrush(Image*,Rect&,ImageAttributes*)
//TextureBrush::TextureBrush(Image*,RectF&,ImageAttributes*)
//TextureBrush::TextureBrush(Image*,WrapMode)
//TextureBrush::TextureBrush(Image*,WrapMode,INT,INT,INT,INT)
//TextureBrush::TextureBrush(Image*,WrapMode,REAL,REAL,REAL,REAL)
//TextureBrush::TextureBrush(Image*,WrapMode,Rect&)
//TextureBrush::TextureBrush(Image*,wrapMode,RectF&)

  METHOD GetImage()
  METHOD GetTransform()
  METHOD GetWrapMode()
  METHOD MultiplyTransform()
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetTransform()
  METHOD SetWrapMode()
  METHOD TranslateTransform()

ENDCLASS

*********************************************************************************************************
  METHOD New( p1, p2, p3, p4, p5, p6 ) CLASS GPTextureBrush
*********************************************************************************************************

local iParams := PCount()


   switch iParams
      case 2
        ::handle := C5_GPTextureBrush_1( p1, p2 )
        exit
      case 3
      case 6
   endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPTextureBrush
*********************************************************************************************************

  if !empty(::handle)
  endif

return nil

*********************************************************************************************************
  METHOD GetImage() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetWrapMode() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD MultiplyTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD RotateTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ScaleTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetWrapMode() CLASS GPTextureBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD TranslateTransform() CLASS GPTextureBrush
*********************************************************************************************************

return 0




//Constructors
//
//The TextureBrush class has the following constructors.
//
//Constructor                                                     Description
//TextureBrush::TextureBrush(Image*,Rect&,ImageAttributes*)       Creates a TextureBrush object based on an image, a defining rectangle, and a set of image properties.
//TextureBrush::TextureBrush(Image*,RectF&,ImageAttributes*)      Creates a TextureBrush object based on an image, a defining rectangle, and a set of image properties.
//TextureBrush::TextureBrush(Image*,WrapMode)                     Creates a TextureBrush object based on an image and a wrap mode. The size of the brush defaults to the size of the image, so the entire image is used by the brush.
//TextureBrush::TextureBrush(Image*,WrapMode,INT,INT,INT,INT)     Creates a TextureBrush object based on an image, a wrap mode, and a defining set of coordinates.
//TextureBrush::TextureBrush(Image*,WrapMode,REAL,REAL,REAL,REAL)         Creates a TextureBrush object based on an image, a wrap mode, and a defining set of coordinates.
//TextureBrush::TextureBrush(Image*,WrapMode,Rect&)               Creates a TextureBrush object based on an image, a wrap mode, and a defining rectangle.
//TextureBrush::TextureBrush(Image*,wrapMode,RectF&)              Creates a TextureBrush object based on an image, a wrap mode, and a defining rectangle.
//
//
//Methods
//
//The TextureBrush class has the following methods.
//
//Method                                                                  Description
//TextureBrush::GetImage                                                  The TextureBrush::GetImage method gets a pointer to the Image object that is defined by this texture brush.
//TextureBrush::GetTransform                                      The TextureBrush::GetTransform method gets the transformation matrix of this texture brush.
//TextureBrush::GetWrapMode                                       The TextureBrush::GetWrapMode method gets the wrap mode currently set for this texture brush.
//TextureBrush::MultiplyTransform                                         The TextureBrush::MultiplyTransform method updates this brush's transformation matrix with the product of itself and another matrix.
//TextureBrush::ResetTransform                                    The TextureBrush::ResetTransform method resets the transformation matrix of this texture brush to the identity matrix. This means that no transformation takes place.
//TextureBrush::RotateTransform                                   The TextureBrush::RotateTransform method updates this texture brush's current transformation matrix with the product of itself and a rotation matrix.
//TextureBrush::ScaleTransform                                    The TextureBrush::ScaleTransform method updates this texture brush's current transformation matrix with the product of itself and a scaling matrix.
//TextureBrush::SetTransform                                      The TextureBrush::SetTransform method sets the transformation matrix of this texture brush.
//TextureBrush::SetWrapMode                                       The TextureBrush::SetWrapMode method sets the wrap mode of this texture brush.
//TextureBrush::TranslateTransform                                The TextureBrush::TranslateTransform method updates this brush's current transformation matrix with the product of itself and a translation matrix.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPTEXTUREBRUSH_1 )
{
   //TextureBrush* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new TextureBrush();
   //else if (iParams == 1 )
   //    ptr = new TextureBrush( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new TextureBrush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new TextureBrush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( C5DELETETEXTUREBRUSH )
{
   //TextureBrush* clr = (TextureBrush*) hb_parptr( 1 );
   //delete (TextureBrush*) clr;
   //hb_ret();
}

//HB_FUNC( GPTEXTUREBRUSH... )
//{
//   TextureBrush* ptr = (TextureBrush*) hb_parptr( 1 );
//}




#pragma ENDDUMP
