#include "fivewin.ch"

function Pen( oColor, nWidth )
return GPPen():New( oColor, nWidth )

function PenB( oBrush, nWidth )
return GPPen():NewB( oBrush, nWidth )

function PenClone( oPen )
return GPPen():Clone( oPen )

CLASS GPPen

  DATA handle

  METHOD New( oColor, nWidth )  CONSTRUCTOR
  METHOD NewB( oBrush, nWidth ) CONSTRUCTOR
  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD Clone( oPen )          CONSTRUCTOR
  METHOD GetAlignment()
  METHOD GetBrush()
  METHOD GetColor()
  METHOD GetCompoundArray()
  METHOD GetCompoundArrayCount()
  METHOD GetCustomEndCap()
  METHOD GetCustomStartCap()
  METHOD GetDashCap()
  METHOD GetDashOffset()
  METHOD GetDashPattern()
  METHOD GetDashPatternCount()
  METHOD GetDashStyle()
  METHOD GetEndCap()
  METHOD GetLastStatus()
  METHOD GetLineJoin()
  METHOD GetMiterLimit()
  METHOD GetPenType()
  METHOD GetStartCap()
  METHOD GetTransform()
  METHOD GetWidth()
  METHOD MultiplyTransform()
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetAlignment()
  METHOD SetBrush()
  METHOD SetColor()
  METHOD SetCompoundArray()
  METHOD SetCustomEndCap()
  METHOD SetCustomStartCap()
  METHOD SetDashCap()
  METHOD SetDashOffset()
  METHOD SetDashPattern()
  METHOD SetDashStyle()
  METHOD SetEndCap()
  METHOD SetLineCap()
  METHOD SetLineJoin()
  METHOD SetMiterLimit()
  METHOD SetStartCap()
  METHOD SetTransform()
  METHOD SetWidth()

ENDCLASS

*********************************************************************************************************
  METHOD New( oColor, nWidth ) CLASS GPPen
*********************************************************************************************************

DEFAULT nWidth := 1

  ::handle := _GPPen( oColor:handle, nWidth )

return self

*********************************************************************************************************
  METHOD NewB( oBrush, nWidth ) CLASS GPPen
*********************************************************************************************************

DEFAULT nWidth := 1

  ::handle := _GPPenB( oBrush:handle, nWidth )

return self

*********************************************************************************************************
  METHOD Clone( oPen ) CLASS GPPen
*********************************************************************************************************

  ::handle := GdiPlus_PenClone( oPen:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPen
*********************************************************************************************************

  DeletePen( ::handle )

return nil


*********************************************************************************************************
  METHOD GetAlignment() CLASS GPPen
*********************************************************************************************************

return GdiPlus_PenAlignment( ::handle )

*********************************************************************************************************
  METHOD GetBrush() CLASS GPPen
*********************************************************************************************************



return

*********************************************************************************************************
  METHOD GetColor() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetCompoundArray() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetCompoundArrayCount() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetCustomEndCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetCustomStartCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetDashCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetDashOffset() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetDashPattern() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetDashPatternCount() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetDashStyle() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetEndCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLineJoin() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetMiterLimit() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPenType() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetStartCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetWidth() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD MultiplyTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD RotateTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ScaleTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetAlignment() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetBrush() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetColor() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetCompoundArray() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetCustomEndCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetCustomStartCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetDashCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetDashOffset() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetDashPattern() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetDashStyle() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetEndCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetLineCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetLineJoin() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetMiterLimit() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetStartCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetWidth() CLASS GPPen
*********************************************************************************************************

return 0



// Method	                         Description
// Pen::Clone	                 The Pen::Clone method copies a Pen object.
// Pen::GetAlignment	         The Pen::GetAlignment method gets the alignment currently set for this Pen object.
// Pen::GetBrush	                 The Pen::GetBrush method gets the Brush object that is currently set for this Pen object.
// Pen::GetColor	                 The Pen::GetColor method gets the color currently set for this Pen object.
// Pen::GetCompoundArray	         The Pen::GetCompoundArray method gets the compound array currently set for this Pen object.
// Pen::GetCompoundArrayCount	 The Pen::GetCompoundArrayCount method gets the number of elements in a compound array.
// Pen::GetCustomEndCap	         The Pen::GetCustomEndCap method gets the custom end cap currently set for this Pen object.
// Pen::GetCustomStartCap	         The Pen::GetCustomStartCap method gets the custom start cap currently set for this Pen object.
// Pen::GetDashCap	                 The Pen::GetDashCap method gets the dash cap style currently set for this Pen object.
// Pen::GetDashOffset	         The Pen::GetDashOffset method gets the distance from the start of the line to the start of the first space in a dashed line.
// Pen::GetDashPattern	         The Pen::GetDashPattern method gets an array of custom dashes and spaces currently set for this Pen object.
// Pen::GetDashPatternCount	 The Pen::GetDashPatternCount method gets the number of elements in a dash pattern array.
// Pen::GetDashStyle	         The Pen::GetDashStyle method gets the dash style currently set for this Pen object.
// Pen::GetEndCap	                 The Pen::GetEndCap method gets the end cap currently set for this Pen object.
// Pen::GetLastStatus	         The Pen::GetLastStatus method returns a value that indicates the nature of this Pen object's most recent method failure.
// Pen::GetLineJoin	         The Pen::GetLineJoin method gets the line join style currently set for this Pen object.
// Pen::GetMiterLimit	         The Pen::GetMiterLimit method gets the miter length currently set for this Pen object.
// Pen::GetPenType	                 The Pen::GetPenType method gets the type currently set for this Pen object.
// Pen::GetStartCap	         The Pen::GetStartCap method gets the start cap currently set for this Pen object.
// Pen::GetTransform	         The Pen::GetTransform method gets the world transformation matrix currently set for this Pen object.
// Pen::GetWidth	                 The Pen::GetWidth method gets the width currently set for this Pen object.
// Pen::MultiplyTransform	         The Pen::MultiplyTransform method updates the world transformation matrix of this Pen object with the product of itself and another matrix.
// Pen::ResetTransform	         The Pen::ResetTransform method sets the world transformation matrix of this Pen object to the identity matrix.
// Pen::RotateTransform	         The Pen::RotateTransform method updates the world transformation matrix of this Pen object with the product of itself and a rotation matrix.
// Pen::ScaleTransform	         The Pen::ScaleTransform method sets the Pen object's world transformation matrix equal to the product of itself and a scaling matrix.
// Pen::SetAlignment	         The Pen::SetAlignment method sets the alignment for this Pen object relative to the line.
// Pen::SetBrush	                 The Pen::SetBrush method sets the Brush object that a pen uses to fill a line.
// Pen::SetColor	                 The Pen::SetColor method sets the color for this Pen object.
// Pen::SetCompoundArray	         The Pen::SetCompoundArray method sets the compound array for this Pen object.
// Pen::SetCustomEndCap	         The Pen::SetCustomEndCap method sets the custom end cap for this Pen object.
// Pen::SetCustomStartCap	         The Pen::SetCustomStartCap method sets the custom start cap for this Pen object.
// Pen::SetDashCap	                 The Pen::SetDashCap method sets the dash cap style for this Pen object.
// Pen::SetDashOffset	         The Pen::SetDashOffset method sets the distance from the start of the line to the start of the first dash in a dashed line.
// Pen::SetDashPattern	         The Pen::SetDashPattern method sets an array of custom dashes and spaces for this Pen object.
// Pen::SetDashStyle	         The Pen::SetDashStyle method sets the dash style for this Pen object.
// Pen::SetEndCap	                 The Pen::SetEndCap method sets the end cap for this Pen object.
// Pen::SetLineCap	                 The Pen::SetLineCap method sets the cap styles for the start, end, and dashes in a line drawn with this pen.
// Pen::SetLineJoin	         The Pen::SetLineJoin method sets the line join for this Pen object.
// Pen::SetMiterLimit	         The Pen::SetMiterLimit method sets the miter limit of this Pen object.
// Pen::SetStartCap	         The Pen::SetStartCap method sets the start cap for this Pen object.
// Pen::SetTransform	         The Pen::SetTransform method sets the world transformation of this Pen object.
// Pen::SetWidth	                 The Pen::SetWidth method sets the width for this Pen object.











#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPEN )
{
   Color* c = (Color*) hb_parptr( 1 );
   Pen* clr = new Pen( *c, hb_parni( 2 ));
   hb_retptr( (void*) clr );

}

HB_FUNC( _GPPENB )
{
   Brush* b = (Brush*) hb_parni( 1 );
   Pen* p = new Pen( b, (REAL)hb_parni( 2 ));
   hb_retptr( (void*) p );

}


HB_FUNC( DELETEPEN )
{

   Pen* p = (Pen*) hb_parptr( 1 );
   delete (Pen*) p;
   hb_ret();

}

HB_FUNC( GDIPLUS_PENCLONE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Pen* pPen = p->Clone();
   hb_retptr( (void*) p );
}

HB_FUNC( GDIPLUS_PENALIGNMENT )
{
   //enum PenAlignment                   //VOID Example_GetAlignment(HDC hdc)
   //{                                   //{
   //    PenAlignmentCenter       = 0,   //   Graphics graphics(hdc);
   //    PenAlignmentInset        = 1    //
   //};                                  //   // Create a Pen object and set its alignment.
                                         //   Pen pen(Color(255, 0, 255, 0), 15);
                                         //   pen.SetAlignment(PenAlignmentCenter);
                                         //
                                         //   // Draw a line.
                                         //   graphics.DrawLine(&pen, 0, 0, 100, 50);
                                         //
                                         //   // Obtain information about the Pen object.
                                         //   PenAlignment penAlignment;
                                         //   penAlignment = pen.GetAlignment();
                                         //
                                         //   if(penAlignment == PenAlignmentCenter)
                                         //      ;  // The pixels will be centered on the theoretical line.
                                         //   else if(penAlignment == PenAlignmentInset)
                                         //      ;  // The pixels will lie inside the filled area  of the theoretical line.
                                         //}

   Pen* p = (Pen*) hb_parptr( 1 );
   PenAlignment pa = p->GetAlignment();
   hb_retni( pa );
}





#pragma ENDDUMP
