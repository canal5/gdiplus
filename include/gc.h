#include <windows.h>
#include <hbapi.h>
#include <hbapierr.h>
#include <gdiplus.h>

using namespace Gdiplus;

//graphics
void hb_Graphics_ret( Graphics * p );
Graphics * hb_Graphics_par( int iParam );

//RectF
void hb_RectF_ret( RectF * p );
RectF * hb_RectF_par( int iParam );
 
//PointF
void hb_PointF_ret( PointF * p );
PointF * hb_PointF_par( int iParam );
 
//SizeF
void hb_SizeF_ret( SizeF * p );
SizeF * hb_SizeF_par( int iParam );

