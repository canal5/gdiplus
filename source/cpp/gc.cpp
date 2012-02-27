#include <gc.h>


//------------------------------------------------//
//GDIPLUS
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_GDIPLUS_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
       gdiplus_destroy( ( GDIPLUS *)*ph );
      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}

#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcGDIPLUSFuncs =
{
   GDI_GDIPLUS_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__

//------------------------------------------------//

void hb_GDIPLUS_ret( GDIPLUS * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      PGDIPLUS * ph = (PGDIPLUS * ) hb_gcAllocate( sizeof( GDIPLUS * ), &s_gcGDIPLUSFuncs );
#else
      PGDIPLUS * ph = ( PGDIPLUS * ) hb_gcAlloc( sizeof( GDIPLUS * ), GDI_GDIPLUS_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}

GDIPLUS * hb_GDIPLUS_par( int iParam )
{
#ifndef __XHARBOUR__
   PGDIPLUS * ph = ( PGDIPLUS * ) hb_parptrGC( &s_gcGDIPLUSFuncs, iParam );
#else
   PGDIPLUS * ph = ( PGDIPLUS * ) hb_parptrGC( GDI_GDIPLUS_release, iParam );
#endif //__XHARBOUR__

   if( ph && *ph )
      return *ph;

   hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   return NULL;     
}

void gdiplus_destroy( GDIPLUS * p ){
   
  
   switch( GP_OBJECT_TYPE( p ) ){
     case GP_IT_IMAGE:
        delete (Image *) p->pObject;
        break;
     case GP_IT_POINTF:
        delete (PointF *) p->pObject;
        break;           
     case GP_IT_POINT:
        delete (Point *) p->pObject;
        break;       
     case GP_IT_SIZEF:
        delete (SizeF *) p->pObject;
        break;                                     
     case GP_IT_SIZE:
        delete (Size *) p->pObject;
        break;                                                
     case GP_IT_RECT:
        delete (Rect *) p->pObject;
        break;                                                           
     case GP_IT_RECTF:
        delete (RectF *) p->pObject;
        break;                                                                      
     case GP_IT_SOLIDBRUSH:
        delete (SolidBrush *) p->pObject;
        break;           
     case GP_IT_COLOR:
        delete (Color *) p->pObject;
        break;        
     case GP_IT_PEN:
        delete (Pen *) p->pObject;
        break;                                    
     case GP_IT_GRAPHICS:
        delete (Graphics *) p->pObject;
        break;                                               
     case GP_IT_MATRIX:
        delete (Matrix *) p->pObject;
        break;       
     case GP_IT_GRAPHICSPATH:
        delete (GraphicsPath *) p->pObject;
        break;      
     case GP_IT_BITMAP:
        delete (Bitmap *) p->pObject;
        break; 
     case GP_IT_FONTCOLLECTION:
        delete ( FontCollection * ) p->pObject;
        break;
     case GP_IT_INSTALLEDFONTCOLLECTION:
        delete ( InstalledFontCollection  * ) p->pObject;
        break;                                                                     
     case GP_IT_PRIVATEFONTCOLLECTION:
        delete ( PrivateFontCollection * ) p->pObject;
        break;                                                                     
     case GP_IT_FONTFAMILY:
        delete ( FontFamily * ) p->pObject;
        break;                                                                     
     case GP_IT_FONT:
        delete ( Font * ) p->pObject;
        break;       
     case GP_IT_LOGFONTA:
     case GP_IT_LOGFONTW:
        hb_xfree( ( void * ) p->pObject );
        break;                                                                                            
   }
   hb_xfree( p );

}

GDIPLUS * gdiplus_new( int type )
{
   GDIPLUS * p = ( GDIPLUS * ) hb_xgrab( sizeof( GDIPLUS ) );

   if( type )
      p->type = type;
      
   return p;
}

GDIPLUS * GDIPLUSItemGet( PHB_ITEM pItem )
{
   PGDIPLUS * pp = ( PGDIPLUS * ) hb_itemGetPtrGC( pItem, &s_gcGDIPLUSFuncs );
   return pp ? *pp : NULL;
}


PHB_ITEM GDIPLUSItemPut( PHB_ITEM pItem, GDIPLUS * pGdiPlus )
{
#ifndef __XHARBOUR__
      PGDIPLUS * pp = (PGDIPLUS * ) hb_gcAllocate( sizeof( GDIPLUS * ), &s_gcGDIPLUSFuncs );
#else
      PGDIPLUS * pp = ( PGDIPLUS * ) hb_gcAlloc( sizeof( GDIPLUS * ), GDI_GDIPLUS_release );
#endif //__XHARBOUR__

   *pp = pGdiPlus;
   return hb_itemPutPtrGC( pItem, pp );
}

void GDIPLUSItemClear( PHB_ITEM pItem )
{
   PGDIPLUS * pp = ( PGDIPLUS * ) hb_itemGetPtrGC( pItem, &s_gcGDIPLUSFuncs );

   if( pp )
      * pp = NULL;
}

void GDIPLUS_StoreParam( int iParam, PHB_ITEM p ){
  
   if( !hb_itemParamStoreRelease( iParam, p ))
      hb_itemRelease( p );

}

WCHAR * hb_GDIPLUS_parw( int iParam ){
   WCHAR * filename;
   char* szFile = ( char * ) hb_parc( iParam );
   filename = hb_mbtowc( szFile );          
   return filename;
}


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

//------------------------------------------------//
//Color
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Color_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Color*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcColorFuncs =
{
   GDI_Color_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Color_ret( Color * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Color * ), &s_gcColorFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Color * ), GDI_Color_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Color * hb_Color_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcColorFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Color_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Color * ) * ph : NULL;
}

//------------------------------------------------//
//LinearGradientBrush
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_LGB_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (LinearGradientBrush*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcLGBFuncs =
{
   GDI_LGB_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_LGB_ret( LinearGradientBrush * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( LinearGradientBrush * ), &s_gcLGBFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( LinearGradientBrush * ), GDI_LGB_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


LinearGradientBrush * hb_LGB_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcLGBFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_LGB_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( LinearGradientBrush * ) * ph : NULL;
}

//------------------------------------------------//
//Brush
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Brush_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Brush*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcBrushFuncs =
{
   GDI_Brush_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Brush_ret( Brush * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Brush * ), &s_gcBrushFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Brush * ), GDI_Brush_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Brush * hb_Brush_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcBrushFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Brush_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Brush * ) * ph : NULL;
}

//------------------------------------------------//
//SolidBrush
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_SolidBrush_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (SolidBrush*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcSolidBrushFuncs =
{
   GDI_SolidBrush_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_SolidBrush_ret( SolidBrush * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( SolidBrush * ), &s_gcSolidBrushFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( SolidBrush * ), GDI_SolidBrush_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


SolidBrush * hb_SolidBrush_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcSolidBrushFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_SolidBrush_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( SolidBrush * ) * ph : NULL;
}

//------------------------------------------------//
//Image
//------------------------------------------------//

static HB_GARBAGE_FUNC( GDI_Image_release )
{
   void ** ph = ( void ** ) Cargo;

   /* Check if pointer is not NULL to avoid multiple freeing */
   if( ph && * ph )
   {
      /* Destroy the object */
      delete (Image*) * ph;

      /* set pointer to NULL to avoid multiple freeing */
      * ph = NULL;
   }
}


#ifndef __XHARBOUR__
const HB_GC_FUNCS s_gcImageFuncs =
{
   GDI_Image_release,
   hb_gcDummyMark
};

#endif //__XHARBOUR__


void hb_Image_ret( Image * p )
{
   if( p )
   {
#ifndef __XHARBOUR__
      void ** ph = ( void ** ) hb_gcAllocate( sizeof( Image * ), &s_gcImageFuncs );
#else
      void ** ph = ( void ** ) hb_gcAlloc( sizeof( Image * ), GDI_Image_release );
#endif //__XHARBOUR__
      * ph = p;

      hb_retptrGC( ph );
   }
   else
      hb_retptr( NULL );
}


Image * hb_Image_par( int iParam )
{
#ifndef __XHARBOUR__
   void ** ph = ( void ** ) hb_parptrGC( &s_gcImageFuncs, iParam );
#else
   void ** ph = ( void ** ) hb_parptrGC( GDI_Image_release, iParam );
#endif //__XHARBOUR__

   return ph ? ( Image * ) * ph : NULL;
}