#include "fivewin.ch"

function PathGradientBrush()
return GPPathGradientBrush():New()

CLASS GPPathGradientBrush

   DATA handle

   METHOD New()                        CONSTRUCTOR
   METHOD Destroy()
   DESTRUCTOR Destroy()


   METHOD GetBlend()
   METHOD GetBlendCount()
   METHOD GetCenterColor()
   METHOD GetCenterPoint()
   METHOD GetFocusScales()
   METHOD GetGammaCorrection()
   METHOD GetGraphicsPath()
   METHOD GetInterpolationColorCount()
   METHOD GetInterpolationColors()
   METHOD GetPointCount()
   METHOD GetRectangle()
   METHOD GetSurroundColorCount()
   METHOD GetSurroundColors()
   METHOD GetTransform()
   METHOD GetWrapMode()
   METHOD MultiplyTransform()
   METHOD ResetTransform()
   METHOD RotateTransform()
   METHOD ScaleTransform()
   METHOD SetBlend()
   METHOD SetBlendBellShape()
   METHOD SetBlendTriangularShape()
   METHOD SetCenterColor()
   METHOD SetCenterPoint()
   METHOD SetFocusScales()
   METHOD SetGammaCorrection()
   METHOD SetGraphicsPath()
   METHOD SetInterpolationColors()
   METHOD SetSurroundColors()
   METHOD SetTransform()
   METHOD SetWrapMode()
   METHOD TranslateTransform()


//Constructor                                                      Description
//PathGradientBrush::PathGradientBrush(GraphicsPath*)              Creates a PathGradientBrush::PathGradientBrush object based on a GraphicsPath object.
//PathGradientBrush::PathGradientBrush(Point*,INT,WrapMode)        Creates a PathGradientBrush::PathGradientBrush object based on an array of points. Initializes the wrap mode of the path gradient brush.
//PathGradientBrush::PathGradientBrush(PointF*,INT,WrapMode)       Creates a PathGradientBrush object based on an array of points. Initializes the wrap mode of the path gradient brush.


ENDCLASS

*******************************************************************************************
  METHOD New() CLASS GPPathGradientBrush
*******************************************************************************************


local iParams := PCount()


  if iParams == 0
     ::handle := C5_GPPathGradientBrush()
  elseif iParams == 1
     ::handle := C5_GPPathGradientBrush( p1 )                               //
  elseif iParams == 3
     ::handle := C5_GPPathGradientBrush( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5_GPPathGradientBrush( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5_GPPathGradientBrush( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5_GPPathGradientBrush( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5_GPPathGradientBrush( p1, p2, p3, p4, p5, p6, p7 )       //
  endif


return self

*******************************************************************************************
  METHOD Destroy() CLASS GPPathGradientBrush
*******************************************************************************************

  if !empty(::handle)
  endif

return self

*******************************************************************************************
  METHOD GetBlend() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetBlendCount() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetCenterColor() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetCenterPoint() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetFocusScales() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetGammaCorrection() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetGraphicsPath() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetInterpolationColorCount() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetInterpolationColors() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetPointCount() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetRectangle() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetSurroundColorCount() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetSurroundColors() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD GetWrapMode() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD MultiplyTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD ResetTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD RotateTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD ScaleTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetBlend() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetBlendBellShape() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetBlendTriangularShape() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetCenterColor() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetCenterPoint() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetFocusScales() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetGammaCorrection() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetGraphicsPath() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetInterpolationColors() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetSurroundColors() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD SetWrapMode() CLASS GPPathGradientBrush
*******************************************************************************************

return self

*******************************************************************************************
  METHOD TranslateTransform() CLASS GPPathGradientBrush
*******************************************************************************************

return self


//Constructors
//
//The PathGradientBrush class has the following constructors.
//
//Constructor                                                      Description
//PathGradientBrush::PathGradientBrush(GraphicsPath*)              Creates a PathGradientBrush::PathGradientBrush object based on a GraphicsPath object.
//PathGradientBrush::PathGradientBrush(Point*,INT,WrapMode)        Creates a PathGradientBrush::PathGradientBrush object based on an array of points. Initializes the wrap mode of the path gradient brush.
//PathGradientBrush::PathGradientBrush(PointF*,INT,WrapMode)       Creates a PathGradientBrush object based on an array of points. Initializes the wrap mode of the path gradient brush.
//
//
//Methods
//
//The PathGradientBrush class has the following methods.
//
//Method                                               Description
//PathGradientBrush::GetBlend                          The PathGradientBrush::GetBlend method gets the blend factors and the corresponding blend positions currently set for this path gradient brush.
//PathGradientBrush::GetBlendCount                     The PathGradientBrush::GetBlendCount method gets the number of blend factors currently set for this path gradient brush.
//PathGradientBrush::GetCenterColor                    The PathGradientBrush::GetCenterColor method gets the color of the center point of this path gradient brush.
//PathGradientBrush::GetCenterPoint(Point*)            The PathGradientBrush::GetCenterPoint method gets the center point of this path gradient brush.
//PathGradientBrush::GetCenterPoint(PointF*)           The PathGradientBrush::GetCenterPoint method gets the center point of this path gradient brush.
//PathGradientBrush::GetFocusScales                    The PathGradientBrush::GetFocusScales method gets the focus scales of this path gradient brush.
//PathGradientBrush::GetGammaCorrection                The PathGradientBrush::GetGammaCorrection method determines whether gamma correction is enabled for this path gradient brush.
//PathGradientBrush::GetGraphicsPath                   The PathGradientBrush::GetGraphicsPath method is not implemented in GDI+ version 1.0.
//PathGradientBrush::GetInterpolationColorCount        The PathGradientBrush::GetInterpolationColorCount method gets the number of preset colors currently specified for this path gradient brush.
//PathGradientBrush::GetInterpolationColors            The PathGradientBrush::GetInterpolationColors method gets the preset colors and blend positions currently specified for this path gradient brush.
//PathGradientBrush::GetPointCount                     The PathGradientBrush::GetPointCount method gets the number of points in the array of points that defines this brush's boundary path.
//PathGradientBrush::GetRectangle(Rect*)               The PathGradientBrush::GetRectangle method gets the smallest rectangle that encloses the boundary path of this path gradient brush.
//PathGradientBrush::GetRectangle(RectF*)              The PathGradientBrush::GetRectangle method gets the smallest rectangle that encloses the boundary path of this path gradient brush.
//PathGradientBrush::GetSurroundColorCount             The PathGradientBrush::GetSurroundColorCount method gets the number of colors that have been specified for the boundary path of this path gradient brush.
//PathGradientBrush::GetSurroundColors                 The PathGradientBrush::GetSurroundColors method gets the surround colors currently specified for this path gradient brush.
//PathGradientBrush::GetTransform                      The PathGradientBrush::GetTransform method gets transformation matrix of this path gradient brush.
//PathGradientBrush::GetWrapMode                       The PathGradientBrush::GetWrapMode method gets the wrap mode currently set for this path gradient brush.
//PathGradientBrush::MultiplyTransform                 ThePathGradientBrush::MultiplyTransform method updates the brush's transformation matrix with the product of itself and another matrix.
//PathGradientBrush::ResetTransform                    The PathGradientBrush::ResetTransform method resets the transformation matrix of this path gradient brush to the identity matrix. This means that no transformation will take place.
//PathGradientBrush::RotateTransform                   The PathGradientBrush::RotateTransform method updates this brush's current transformation matrix with the product of itself and a rotation matrix.
//PathGradientBrush::ScaleTransform                    The PathGradientBrush::ScaleTransform method updates this brush's current transformation matrix with the product of itself and a scaling matrix.
//PathGradientBrush::SetBlend                          The PathGradientBrush::SetBlend method sets the blend factors and the blend positions of this path gradient brush.
//PathGradientBrush::SetBlendBellShape                 The PathGradientBrush::SetBlendBellShape method sets the blend shape of this path gradient brush.
//PathGradientBrush::SetBlendTriangularShape           The PathGradientBrush::SetBlendTriangularShape method sets the blend shape of this path gradient brush.
//PathGradientBrush::SetCenterColor                    The PathGradientBrush::SetCenterColor method sets the center color of this path gradient brush. The center color is the color that appears at the brush's center point.
//PathGradientBrush::SetCenterPoint(Point&)            The PathGradientBrush::SetCenterPoint method sets the center point of this path gradient brush. By default, the center point is at the centroid of the brush's boundary path, but you can set the center point to any location inside or outside the path.
//PathGradientBrush::SetCenterPoint(PointF&)           The PathGradientBrush::SetCenterPoint method sets the center point of this path gradient brush. By default, the center point is at the centroid of the brush's boundary path, but you can set the center point to any location inside or outside the path.
//PathGradientBrush::SetFocusScales                    The PathGradientBrush::SetFocusScales method sets the focus scales of this path gradient brush.
//PathGradientBrush::SetGammaCorrection                The PathGradientBrush::SetGammaCorrection method specifies whether gamma correction is enabled for this path gradient brush.
//PathGradientBrush::SetGraphicsPath                   The PathGradientBrush::SetGraphicsPath method is not implemented in GDI+ version 1.0.
//PathGradientBrush::SetInterpolationColors            The PathGradientBrush::SetInterpolationColors method sets the preset colors and the blend positions of this path gradient brush.
//PathGradientBrush::SetSurroundColors                 The PathGradientBrush::SetSurroundColors method sets the surround colors of this path gradient brush. The surround colors are colors specified for discrete points on the brush's boundary path.
//PathGradientBrush::SetTransform                      The PathGradientBrush::SetTransform method sets the transformation matrix of this path gradient brush.
//PathGradientBrush::SetWrapMode                       The PathGradientBrush::SetWrapMode method sets the wrap mode of this path gradient brush.
//PathGradientBrush::TranslateTransform                The PathGradientBrush::TranslateTransform method updates this brush's current transformation matrix with the product of itself and a translation matrix.
















#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;

HB_FUNC( C5_GPPATHGRADIENTBRUSH )
{
   //PathGradientBrush* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new PathGradientBrush();
   //else if (iParams == 1 )
   //    ptr = new PathGradientBrush( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new PathGradientBrush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new PathGradientBrush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( C5DELETEPATHGRADIENTBRUSH )
{
   //PathGradientBrush* clr = (PathGradientBrush*) hb_parptr( 1 );
   //delete (PathGradientBrush*) clr;
   //hb_ret();
}

//HB_FUNC( GPPATHGRADIENTBRUSH... )
//{
//   PathGradientBrush* ptr = (PathGradientBrush*) hb_parptr( 1 );
//}






#pragma ENDDUMP


