#ifndef _GENERIC_H_
#define _GENERIC_H_
#include <gc.h>

extern "C"
{
LPSTR LToStr( long ); 
}

void Traza( char * c );

PHB_ITEM GPNewColorObject( Color& c);
PHB_ITEM GPNewSolidBrushObject( SolidBrush& c);
PHB_ITEM GPNewPointObject( Point& c );
PHB_ITEM GPNewPointFObject( PointF& c );
PHB_ITEM GPNewRectObject( Rect& c );
PHB_ITEM GPNewRectFObject( RectF& c );
PHB_ITEM GPNewSizeObject( Size& c );
PHB_ITEM GPNewSizeFObject( SizeF& c );

#endif
