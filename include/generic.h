#ifndef _GENERIC_H_
#define _GENERIC_H_
#include <gc.h>

extern "C"
{
LPSTR LToStr( long ); 
}

void Traza( char * c );

PHB_ITEM GPNewColorObject( Color& );
PHB_ITEM GPNewSolidBrushObject( SolidBrush& );

#endif
