#include <windows.h>
#include <hbapi.h>
#include "hbapiitm.h"
#include "hbapierr.h"
#include <gdiplus.h>

using namespace Gdiplus;

extern "C"
{
LPSTR LToStr( long );	
}

//graphics
void hb_Graphics_ret( Graphics * p );
Graphics * hb_Graphics_par( int iParam );

//RectF
void hb_RectF_ret( RectF * p );
RectF * hb_RectF_par( int iParam );

//Rect
void hb_Rect_ret( Rect * p );
Rect * hb_Rect_par( int iParam );
 
//PointF
void hb_PointF_ret( PointF * p );
PointF * hb_PointF_par( int iParam );

//Point
void hb_Point_ret( Point * p );
Point * hb_Point_par( int iParam );
 
  
//SizeF
void hb_SizeF_ret( SizeF * p );
SizeF * hb_SizeF_par( int iParam );

//Size
void hb_Size_ret( Size * p );
Size * hb_Size_par( int iParam );

//Matrix
void hb_Matrix_ret( Matrix * p );
Matrix * hb_Matrix_par( int iParam );

//Color
void hb_Color_ret( Color * p );
Color * hb_Color_par( int iParam ); 

//LinearGradientBrush
void hb_LGB_ret( LinearGradientBrush * p );
LinearGradientBrush * hb_LGB_par( int iParam );

//Brush
void hb_Brush_ret( Brush * p );
Brush * hb_Brush_par( int iParam );
