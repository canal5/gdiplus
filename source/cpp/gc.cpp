#include <gc.h>

//------------------------------------------------//
//graphics
//------------------------------------------------//


static HB_GARBAGE_FUNC( GDI_Graphics_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Graphics*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}

#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcGraphicFuncs =
{
   GDI_Graphics_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__

//------------------------------------------------//

void hb_Graphics_ret( Graphics * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Graphics * ), &s_gcGraphicFuncs+0 );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Graphics * ), GDI_Graphics_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}

Graphics * hb_Graphics_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcGraphicFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Graphics_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Graphics * ) * ph : NULL;
}

//------------------------------------------------//
//RectF
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_RectF_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (RectF*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcRectFFuncs =
{
   GDI_RectF_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_RectF_ret( RectF * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( RectF * ), &s_gcRectFFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( RectF * ), GDI_RectF_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


RectF * hb_RectF_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcRectFFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_RectF_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( RectF * ) * ph : NULL;
}

//------------------------------------------------//
//PointF
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_PointF_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (PointF*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcPointFFuncs =
{
   GDI_PointF_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_PointF_ret( PointF * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( PointF * ), &s_gcPointFFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( PointF * ), GDI_PointF_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


PointF * hb_PointF_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcPointFFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_PointF_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( PointF * ) * ph : NULL;
}


//------------------------------------------------//
//SizeF
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_SizeF_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (SizeF*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcSizeFFuncs =
{
   GDI_SizeF_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_SizeF_ret( SizeF * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( SizeF * ), &s_gcSizeFFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( SizeF * ), GDI_SizeF_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


SizeF * hb_SizeF_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcSizeFFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_SizeF_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( SizeF * ) * ph : NULL;
}

