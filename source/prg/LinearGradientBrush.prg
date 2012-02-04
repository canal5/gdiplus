#include "fivewin.ch"

function LinearGradientBrush( rc, color1, color2, angle, lScalable )
return GPLinearGradientBrush():New( rc, color1, color2, angle, lScalable )


CLASS GPLinearGradientBrush

   DATA handle

   METHOD New( rc, color1, color2, mode ) CONSTRUCTOR

   METHOD     Destroy()
   DESTRUCTOR Destroy()

//Constructors
//
//The LinearGradientBrush class has the following constructors.
//
//Constructor
//LinearGradientBrush::LinearGradientBrush(Point&,Point&,Color&,Color&)
//LinearGradientBrush::LinearGradientBrush(PointF&,PointF&,Color&,Color&)
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,LinearGradientMode)
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)
//LinearGradientBrush::LinearGradientBrush(RectF&,Color&,Color&,LinearGradientMode)

  METHOD GetBlend()
  METHOD GetBlendCount()
  METHOD GetGammaCorrection()
  METHOD GetInterpolationColorCount()
  METHOD GetInterpolationColors()
  METHOD GetLinearColors()
  METHOD GetRectangle()
  METHOD GetRectangle2()
  METHOD GetTransform()
  METHOD GetWrapMode()
  METHOD MultiplyTransform()
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetBlend()
  METHOD SetBlendBellShape()
  METHOD SetBlendTriangularShape()
  METHOD SetGammaCorrection()
  METHOD SetInterpolationColors()
  METHOD SetLinearColors()
  METHOD SetTransform()
  METHOD SetWrapMode()
  METHOD TranslateTransform()



ENDCLASS

**************************************************************************************************************
  METHOD New( rc, color1, color2, angle, lScalable ) CLASS GPLinearGradientBrush
**************************************************************************************************************

  DEFAULT angle     := 0
  DEFAULT lScalable := .t.

  ::handle   := _GPLinearGradientBrush( rc, color1:handle, color2:handle, angle, lScalable )

return self

**************************************************************************************************************
   METHOD Destroy() CLASS GPLinearGradientBrush
**************************************************************************************************************

  if !empty(::handle)
     DeleteLGB( ::handle )
  endif

return nil


*********************************************************************************************************
  METHOD GetBlend() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetBlendCount() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetGammaCorrection() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetInterpolationColorCount() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetInterpolationColors() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLinearColors() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetRectangle() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetRectangle2() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetWrapMode() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD MultiplyTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD RotateTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ScaleTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetBlend() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetBlendBellShape() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetBlendTriangularShape() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetGammaCorrection() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetInterpolationColors() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetLinearColors() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetWrapMode() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD TranslateTransform() CLASS GPLinearGradientBrush
*********************************************************************************************************

return 0




//Constructors
//
//The LinearGradientBrush class has the following constructors.
//
//Constructor                                                                       Description
//LinearGradientBrush::LinearGradientBrush(Point&,Point&,Color&,Color&)             Creates a LinearGradientBrush::LinearGradientBrush object from a set of boundary points and boundary colors.
//LinearGradientBrush::LinearGradientBrush(PointF&,PointF&,Color&,Color&)           Creates a LinearGradientBrush::LinearGradientBrush object from a set of boundary points and boundary colors.
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,LinearGradientMode)  Creates a LinearGradientBrush::LinearGradientBrush object based on a rectangle and mode of direction.
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)           Creates a LinearGradientBrush::LinearGradientBrush object from a rectangle and angle of direction.
//LinearGradientBrush::LinearGradientBrush(Rect&,Color&,Color&,REAL,BOOL)           Creates a LinearGradientBrush::LinearGradientBrush object from a rectangle and angle of direction.
//LinearGradientBrush::LinearGradientBrush(RectF&,Color&,Color&,LinearGradientMode) Creates a LinearGradientBrush::LinearGradientBrush object based on a rectangle and mode of direction.
//
//
//Methods
//
//The LinearGradientBrush class has the following methods.
//
//Method                                                  Description
//LinearGradientBrush::GetBlend                           The LinearGradientBrush::GetBlend method gets the blend factors and their corresponding blend positions from a LinearGradientBrush object.
//LinearGradientBrush::GetBlendCount                      The LinearGradientBrush::GetBlendCount method gets the number of blend factors currently set for this LinearGradientBrush object.
//LinearGradientBrush::GetGammaCorrection                 The LinearGradientBrush::GetGammaCorrection method determines whether gamma correction is enabled for this LinearGradientBrush object.
//LinearGradientBrush::GetInterpolationColorCount         The LinearGradientBrush::GetInterpolationColorCount method gets the number of colors currently set to be interpolated for this linear gradient brush.
//LinearGradientBrush::GetInterpolationColors             The LinearGradientBrush::GetInterpolationColors method gets the colors currently set to be interpolated for this linear gradient brush and their corresponding blend positions.
//LinearGradientBrush::GetLinearColors                    The LinearGradientBrush::GetLinearColors method gets the starting color and ending color of this linear gradient brush.
//LinearGradientBrush::GetRectangle(Rect*)                The LinearGradientBrush::GetRectangle method gets the rectangle that defines the boundaries of the gradient.
//LinearGradientBrush::GetRectangle(RectF*)               The LinearGradientBrush::GetRectangle method gets the rectangle that defines the boundaries of the gradient.
//LinearGradientBrush::GetTransform                       The LinearGradientBrush::GetTransform method gets the transformation matrix of this linear gradient brush.
//LinearGradientBrush::GetWrapMode                        The LinearGradientBrush::GetWrapMode method gets the wrap mode for this brush. The wrap mode determines how an area is tiled when it is painted with a brush.
//LinearGradientBrush::MultiplyTransform                  The LinearGradientBrush::MultiplyTransform method updates this brush's transformation matrix with the product of itself and another matrix.
//LinearGradientBrush::ResetTransform                     The LinearGradientBrush::ResetTransform method resets the transformation matrix of this linear gradient brush to the identity matrix. This means that no transformation takes place.
//LinearGradientBrush::RotateTransform                    The LinearGradientBrush::RotateTransform method updates this brush's current transformation matrix with the product of itself and a rotation matrix.
//LinearGradientBrush::ScaleTransform                     The LinearGradientBrush::ScaleTransform method updates this brush's current transformation matrix with the product of itself and a scaling matrix.
//LinearGradientBrush::SetBlend                           The LinearGradientBrush::SetBlend method sets the blend factors and the blend positions of this linear gradient brush to create a custom blend.
//LinearGradientBrush::SetBlendBellShape                  The LinearGradientBrush::SetBlendBellShape method sets the blend shape of this linear gradient brush to create a custom blend based on a bell-shaped curve.
//LinearGradientBrush::SetBlendTriangularShape            The LinearGradientBrush::SetBlendTriangularShape method sets the blend shape of this linear gradient brush to create a custom blend based on a triangular shape.
//LinearGradientBrush::SetGammaCorrection                 The LinearGradientBrush::SetGammaCorrection method specifies whether gamma correction is enabled for this linear gradient brush.
//LinearGradientBrush::SetInterpolationColors             The LinearGradientBrush::SetInterpolationColors method sets the colors to be interpolated for this linear gradient brush and their corresponding blend positions.
//LinearGradientBrush::SetLinearColors                    The LinearGradientBrush::SetLinearColors method sets the starting color and ending color of this linear gradient brush.
//LinearGradientBrush::SetTransform                       The LinearGradientBrush::SetTransform method sets the transformation matrix of this linear gradient brush.
//LinearGradientBrush::SetWrapMode                        The LinearGradientBrush::SetWrapMode method sets the wrap mode of this linear gradient brush.
//LinearGradientBrush::TranslateTransform                 The LinearGradientBrush::TranslateTransform method updates this brush's current transformation matrix with the product of itself and a translation matrix.








#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPLINEARGRADIENTBRUSH )
{
   RectF rect = RectF(hb_parvnd( 1, 1 ), hb_parvnd( 1, 2 ), hb_parvnd( 1, 3 ), hb_parvnd( 1, 4 ));
   Color* c1 = (Color*) hb_parnl(2);
   Color* c2 = (Color*) hb_parnl(3);

   LinearGradientBrush* l = new LinearGradientBrush( rect, *c1, *c2, (REAL) hb_parnd( 4 ), (BOOL) hb_parl( 5 ) );

   hb_retnl( (long) l );

}

HB_FUNC( DELETELGB )
{

   LinearGradientBrush* l = (LinearGradientBrush*) hb_parnl( 1 );
   delete (LinearGradientBrush*) l;
   hb_ret();

}

#pragma ENDDUMP



