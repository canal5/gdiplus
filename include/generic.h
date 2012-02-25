#ifndef _GENERIC_H_
#define _GENERIC_H_
#include <gc.h>

extern "C"
{
LPSTR LToStr( long ); 
}

void Traza( char * c );
void TrazaL( long l );

void GPSendHandleToObject( PHB_ITEM pitem, void * c, int iType );
PHB_ITEM GPNewGDIPLUSObject( void * c, int iType );
void * ConvertArray2Point( PHB_ITEM aPoint, BOOL * l );
void * ConvertArray2Rect( PHB_ITEM aRect, BOOL * l );

#endif
