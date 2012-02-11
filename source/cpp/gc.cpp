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
//Rect
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Rect_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Rect*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcRectFuncs =
{
   GDI_Rect_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Rect_ret( Rect * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Rect * ), &s_gcRectFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Rect * ), GDI_Rect_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Rect * hb_Rect_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcRectFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Rect_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Rect * ) * ph : NULL;
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
//Point
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Point_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Point*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcPointFuncs =
{
   GDI_Point_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Point_ret( Point * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Point * ), &s_gcPointFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Point * ), GDI_Point_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Point * hb_Point_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcPointFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Point_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Point * ) * ph : NULL;
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

//------------------------------------------------//
//Size
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Size_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Size*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcSizeFuncs =
{
   GDI_Size_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Size_ret( Size * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Size * ), &s_gcSizeFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Size * ), GDI_Size_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Size * hb_Size_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcSizeFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Size_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Size * ) * ph : NULL;
}


//------------------------------------------------//
//Matrix
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Matrix_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Matrix*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcMatrixFuncs =
{
   GDI_Matrix_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Matrix_ret( Matrix * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Matrix * ), &s_gcMatrixFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Matrix * ), GDI_Matrix_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Matrix * hb_Matrix_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcMatrixFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Matrix_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Matrix * ) * ph : NULL;
}