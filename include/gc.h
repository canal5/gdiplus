#include <windows.h>
#include <hbapi.h>
#include "hbapiitm.h"
#include "hbapierr.h"
#include <gdiplus.h>

typedef struct __gdiplus
{
	void * pObject;
	int type;
} GDIPLUS, * PGDIPLUS, *PTR_GDIPLUS;

using namespace Gdiplus;

#define GP_OBJECT_TYPE( p )      ( ( p )->type )
#define GP_OBJECT_OBJ( p )           ( ( p )->pObject )

#define GP_IT_GRAPHICS   ( ( int ) 0x00001 )
#define GP_IT_RECTF      ( ( int ) 0x00002 )
#define GP_IT_RECT       ( ( int ) 0x00004 )
#define GP_IT_IMAGE      ( ( int ) 0x00008 )

#define GP_IS_GRAPHICS( p ) ( ( GP_OBJECT_TYPE( p ) == GP_IT_GRAPHICS ) )
#define GP_IS_RECTF( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_RECTF )    )
#define GP_IS_RECT( p )     ( ( GP_OBJECT_TYPE( p ) == GP_IT_RECT )     ) 
#define GP_IS_IMAGE( p )    ( ( GP_OBJECT_TYPE( p ) == GP_IT_IMAGE )    )


GDIPLUS * gdiplus_new( int type );

//graphics
void hb_GDIPLUS_ret( GDIPLUS * p );
GDIPLUS * hb_GDIPLUS_par( int iParam );

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

//SolidBrush
void hb_SolidBrush_ret( SolidBrush * p );
SolidBrush * hb_SolidBrush_par( int iParam );

//Image
void hb_Image_ret( Image * p );
Image * hb_Image_par( int iParam );