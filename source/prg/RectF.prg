#include "fivewin.ch"

//Constructor
//Rect::RectF()
//Rect::RectF(PointF&,SizeF&)
//Rect::RectF(REAL,REAL,REAL,REAL)

function RectF( ... )
   local aParams := hb_aparams()
   local oRect
   local nLen := Len( aParams )

   switch nLen
      case 0
         oRect = GPRectF():New()
         exit
      case 1
         oRect = GPRectF():New( aParams[ 1 ] )
         exit
      case 2
         oRect = GPRectF():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 4
         oRect = GPRectF():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

return oRect


CLASS GPRectF

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD X()       SETGET
  METHOD Y()       SETGET
  METHOD Width()   SETGET
  METHOD Height()  SETGET
  METHOD Top()     INLINE ::GetTop()
  METHOD Left()    INLINE ::GetLeft()
  METHOD Bottom()  INLINE ::GetBottom()
  METHOD Right()   INLINE ::GetRight()

  METHOD Clone()     HIDDEN
  METHOD Contains()
  METHOD Equals(rc)
  METHOD GetBottom()
  METHOD GetBounds(rc)
  METHOD GetLeft()
  METHOD GetLocation(pt)
  METHOD GetRight()
  METHOD GetSize()
  METHOD GetTop()
  METHOD Inflate(x,y)
  METHOD Intersect(rc)
  METHOD IntersectsWith()
  METHOD IsEmptyArea()

  METHOD Offset()
  METHOD Union()

ENDCLASS

*********************************************************************************************************
  METHOD New( p1, p2, p3, p4 ) CLASS GPRectF
*********************************************************************************************************

local iParams := PCount()

  if iParams == 0
     ::handle := C5_GPRectF()
  elseif iParams == 1
     ::handle := ::Clone( p1 )                      //
  elseif iParams == 2
     ::handle := C5_GPRectF( p1:handle, p2:handle )   // oPoint, oSize
  elseif iParams == 4
     ::handle := C5_GPRectF( p1, p2, p3, p4 )         //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRectF
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone( o ) CLASS GPRectF
*********************************************************************************************************

return C5GPRectFClone(o:handle)

*********************************************************************************************************
  METHOD Contains( ... ) CLASS GPRectF
*********************************************************************************************************

   local aParams := hb_aparams()
   local nLen := Len( aParams )
   local l

   switch nLen
      case 1
         l = C5GPRectFContains( ::handle, aParams[ 1 ]:handle )
         exit
      case 2
         l = C5GPRectFContains( ::handle, aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return l

*********************************************************************************************************
  METHOD Equals(rc) CLASS GPRectF
*********************************************************************************************************

return C5GPRectFEquals(::handle,rc:handle)

*********************************************************************************************************
  METHOD GetBottom() CLASS GPRectF
*********************************************************************************************************

return C5GPRectFGetBottom(::handle)

*********************************************************************************************************
  METHOD GetBounds(rc) CLASS GPRectF
*********************************************************************************************************

return C5GPRectFGetBounds( ::handle, @rc )

*********************************************************************************************************
  METHOD GetLeft() CLASS GPRectF
*********************************************************************************************************

return C5GPRectFGetLeft(::handle)

*********************************************************************************************************
  METHOD GetLocation(pt) CLASS GPRectF
*********************************************************************************************************

return C5GPRectFGetLocation(::handle, @pt )

*********************************************************************************************************
  METHOD GetRight() CLASS GPRectF
*********************************************************************************************************

return C5GPRectFGetRight(::handle)

*********************************************************************************************************
  METHOD GetSize() CLASS GPRectF
*********************************************************************************************************

return 0 //GPRectFGetSize(::handle)

*********************************************************************************************************
  METHOD GetTop() CLASS GPRectF
*********************************************************************************************************

return C5GPRectFGetTop(::handle)

*********************************************************************************************************
  METHOD Inflate( ... ) CLASS GPRectF
*********************************************************************************************************

   local aParams := hb_aparams()
   local nLen := Len( aParams )

   switch nLen
      case 1
         C5GPRectFInflate( ::handle, aParams[ 1 ]:handle )
         exit
      case 2
         C5GPRectFInflate( ::handle, aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return nil


*********************************************************************************************************
  METHOD Intersect( A, B, C ) CLASS GPRectF
*********************************************************************************************************


   if ValType( A ) == "O"
      lRet = C5GPRectFIntersect( ::handle, A:handle )
   else
      lRet = C5GPRectFIntersect( ::handle, @A, B:handle, C:handle )
   endif

return lRet

*********************************************************************************************************
  METHOD IntersectsWith(rc) CLASS GPRectF
*********************************************************************************************************

return C5GPRectFIntersectsWith(::handle, rc:handle )

*********************************************************************************************************
  METHOD IsEmptyArea() CLASS GPRectF
*********************************************************************************************************

return C5GPRectFIsEmptyArea(::handle)

*********************************************************************************************************
  METHOD Offset( A, B ) CLASS GPRectF
*********************************************************************************************************

   if ValType( A ) == "O"
      C5GPRectFOffset( ::handle, A:handle )
   else
      C5GPRectFOffset( ::handle, A, B )
   endif

return nil

*********************************************************************************************************
  METHOD Union(rc1,rc2,rc3) CLASS GPRectF
*********************************************************************************************************

return C5GPRectFUnion(::handle, @rc1, rc2:handle, rc3:handle )

*********************************************************************************************************
  METHOD X( nNewVal ) CLASS GPRectF
*********************************************************************************************************

if pcount() > 0
   C5GPRectFX(::handle, nNewVal)
endif

return C5GPRectFX(::handle)

*********************************************************************************************************
  METHOD Y( nNewVal ) CLASS GPRectF
*********************************************************************************************************

if pcount() > 0
   C5GPRectFY(::handle, nNewVal )
endif

return C5GPRectFY(::handle)

*********************************************************************************************************
  METHOD Width( nNewVal ) CLASS GPRectF
*********************************************************************************************************

if pcount() > 0
   C5GPRectFWidth(::handle, nNewVal)
endif

return C5GPRectFWidth(::handle)

*********************************************************************************************************
  METHOD Height( nNewVal ) CLASS GPRectF
*********************************************************************************************************

if pcount() > 0
   C5GPRectFHeight(::handle, nNewVal)
endif

return C5GPRectFHeight(::handle)




//Constructors
//
//The Rect class has the following constructors.
//
//Constructor                                     Description
//Rect::RectF()                                  Creates a Rect object and initializes the X and Y data members to zero. This is the default constructor.
//Rect::RectF(PointF&,SizeF&)                    Creates a Rect object by using a PointF object to initialize the X and Y data members and uses a SizeF object to initialize the Width and Height data members of this rectangle.
//Rect::RectF(REAL,REAL,REAL,REAL)               Creates a Rect object by using four integers to initialize the X, Y, Width, and Height data members.
//
//
//Methods
//
//The Rect class has the following methods.
//
//Method                                          Description
//Rect::Clone                                    The Rect::Clone method creates a new Rect object and initializes it with the contents of this Rect object.
//Rect::Contains(PointF&)                        The Rect::Contains method determines whether a point is inside this rectangle.
//Rect::Contains(REAL,REAL)                      The Rect::Contains method determines whether the point (x, y) is inside this rectangle.
//Rect::Contains(Rect&)                         The Rect::Contains method determines whether another rectangle is inside this rectangle.
//Rect::Equals                                   The Rect::Equals method determines whether two rectangles are the same.
//Rect::GetBottom                                The Rect::GetBottom method gets the y-coordinate of the bottom edge of the rectangle.
//Rect::GetBounds                                The Rect::GetBounds method makes a copy of this rectangle.
//Rect::GetLeft                                  The Rect::GetLeft method gets the x-coordinate of the left edge of the rectangle.
//Rect::GetLocation                              The Rect::GetLocation method gets the coordinates of the upper-left corner of this rectangle.
//Rect::GetRight                                 The Rect::GetRight method gets the x-coordinate of the right edge of the rectangle.
//Rect::GetSize                                  The Rect::GetSize method gets the width and height of this rectangle.
//Rect::GetTop                                   The Rect::GetTop method gets the y-coordinate of the top edge of the rectangle.
//Rect::Inflate(PointF&)                         The Rect::Inflate method expands the rectangle by the value of point.X on the left and right edges, and by the value of point.Y on the top and bottom edges.
//Rect::Inflate(REAL,REAL)                       The Rect::Inflate method expands the rectangle by dx on the left and right edges, and by dy on the top and bottom edges.
//Rect::Intersect(Rect&)                        The Rect::Intersect method replaces this rectangle with the intersection of itself and another rectangle.
//Rect::Intersect(Rect&,Rect&,Rect&)          The Rect::Intersect method determines the intersection of two rectangles and stores the result in a Rect object.
//Rect::IntersectsWith                           The Rect::IntersectsWith method determines whether this rectangle intersects another rectangle.
//Rect::IsEmptyArea                              The Rect::IsEmptyArea method determines whether this rectangle is empty.
//Rect::Offset(PointF&)                          The Rect::Offset method moves this rectangle horizontally a distance of point.X and vertically a distance of point.Y.
//Rect::Offset(REAL,REAL)                        The Rect::Offset method moves the rectangle by dx horizontally and by dx vertically.
//Rect::Union                                    The Rect::Union method determines the union of two rectangles and stores the result in a Rect object.
//
//Data Members
//
//The following table lists the members exposed by the Rect object.
//
//Data Members    Type    Description
//X               REAL    X-coordinate of the upper-left corner of the rectangle.
//Y               REAL    Y-coordinate of the upper-left corner of the rectangle.
//Width           REAL    Width of the rectangle.
//Height          REAL    Height of the rectangle.




#pragma BEGINDUMP

#include <gc.h>


HB_FUNC( C5_GPRECTF )
{
    GDIPLUS * pObj = gdiplus_new( GP_IT_RECTF );
    RectF * ptr;
    int iParams = hb_pcount();

    if( iParams == 0 ){
       ptr = new RectF();
       GP_SET( pObj, ptr );
       hb_GDIPLUS_ret( pObj );
    }
    else if( iParams == 2 )
    {
       GDIPLUS * pP = hb_GDIPLUS_par( 1 );
       GDIPLUS * pS = hb_GDIPLUS_par( 2 );

       if( GP_IS_POINTF( pP ) && GP_IS_SIZEF( pS ) ){
          PointF * p_pt = ( PointF * ) GP_GET( pP );
          SizeF * p_sz = ( SizeF * ) GP_GET( pS );
          ptr = new RectF( *p_pt, *p_sz );
          GP_SET( pObj, ptr );
          hb_GDIPLUS_ret( pObj );

       }else
          hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
    else if( iParams == 4 ) {
       ptr = new RectF( ( REAL ) hb_parnd( 1 ), ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ) );
       GP_SET( pObj, ptr );
       hb_GDIPLUS_ret( pObj );
    }

}

HB_FUNC( C5GPRECTFCLONE )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      RectF * pClone;
      PHB_ITEM pitem;

      pClone = ptr->Clone();

//      pitem = GPNewRectFObject( *pClone );
      pitem = GPNewGDIPLUSObject( pClone, GP_IT_RECTF );

      hb_itemReturnRelease( pitem );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFCONTAINS )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 3 ){
         hb_retl( ptr->Contains( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ) ) );
      } else if( hb_pcount() == 2 ){
         GDIPLUS * pP = hb_GDIPLUS_par( 2 );
         if( GP_IS_POINTF( pP ) ){
            PointF * p_pt = ( PointF * ) GP_GET( pP );
            hb_retl( ptr->Contains( *p_pt ) );
         }else if( GP_IS_RECTF( pP ) ){
            RectF * p_pt = ( RectF * ) GP_GET( pP );
            hb_retl( ptr->Contains( *p_pt ) );
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPRECTFEQUALS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pP = hb_GDIPLUS_par( 2 );

   if( GP_IS_RECTF( pObj ) && GP_IS_RECTF( pP ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      RectF * ptr2 = ( RectF * ) GP_GET( pP );
      hb_retl( ptr->Equals( *ptr2 ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFGETBOTTOM )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      hb_retni( ptr->GetBottom() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFGETBOUNDS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      RectF pClone;
      PHB_ITEM pitem;

      ptr->GetBounds( &pClone );

//      pitem = GPNewRectFObject( pClone );
      pitem = GPNewGDIPLUSObject( &pClone, GP_IT_RECTF );

      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFGETLEFT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      hb_retni( ptr->GetLeft() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFGETLOCATION )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      PointF pClone;
      PHB_ITEM pitem;

      ptr->GetLocation( &pClone );

      pitem = GPNewGDIPLUSObject( &pClone, GP_IT_RECTF );

      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFGETRIGHT )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      hb_retni( ptr->GetRight() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFGETTOP )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      hb_retni( ptr->GetTop() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFINFLATE )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 3 ){
         ptr->Inflate( ( REAL ) hb_parnd(2), ( REAL ) hb_parnd(3) );
      }else if( hb_pcount() == 2 ){
         GDIPLUS * pP = hb_GDIPLUS_par( 2 );
         PointF * point = ( PointF * ) GP_GET( pP );
         ptr->Inflate( *point );
      }
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPRECTFINTERSECT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      if( hb_pcount() == 2 ){
         GDIPLUS * pObj2 = hb_GDIPLUS_par( 2 );
         if( GP_IS_RECTF( pObj2 ) ){
            RectF * ptr = ( RectF * ) GP_GET( pObj );
            RectF * ptr2 = ( RectF * ) GP_GET( pObj2 );
            hb_retl( ptr->Intersect( *ptr2 ));
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

      }else if( hb_pcount() == 4 ){
         GDIPLUS * pObj2 = hb_GDIPLUS_par( 3 );
         GDIPLUS * pObj3 = hb_GDIPLUS_par( 4 );
         if( GP_IS_RECTF( pObj2 ) && GP_IS_RECTF( pObj3 ) ) {
            RectF * ptr = ( RectF * ) GP_GET( pObj );
            RectF * ptr2 = ( RectF * ) GP_GET( pObj2 );
            RectF * ptr3 = ( RectF * ) GP_GET( pObj3 );
            RectF out;
            BOOL lRet;
            PHB_ITEM pitem;

            lRet =  ptr->Intersect( out, *ptr2, *ptr3 );

            //pitem = GPNewRectFObject( out );
            pitem = GPNewGDIPLUSObject( &out, GP_IT_RECTF );

            if( !hb_itemParamStoreRelease( 2, pitem ))
              hb_itemRelease( pitem );

            hb_retl( lRet );
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }else
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPRECTFINTERSECTSWITH )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pP = hb_GDIPLUS_par( 2 );

   if( GP_IS_RECTF( pObj ) && GP_IS_RECTF( pP ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      RectF * ptr2 = ( RectF * ) GP_GET( pP );
      hb_retl(ptr->IntersectsWith( *ptr2 ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( C5GPRECTFISEMPTYAREA )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      hb_retl(ptr->IsEmptyArea());
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPRECTFOFFSET )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 3 ){
         ptr->Offset( ( REAL ) hb_parnd(2), ( REAL ) hb_parnd(3) );
      }else if( hb_pcount() == 2 ){
         GDIPLUS * pP = hb_GDIPLUS_par( 2 );
         PointF * point = ( PointF * ) GP_GET( pP );
         ptr->Offset( *point );
      }
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPRECTFSETX )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      ptr->X = ( REAL ) hb_parnd( 2 );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFSETY )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      ptr->Y = ( REAL ) hb_parnd( 2 );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPRECTFX )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 2 )
          ptr->X = (REAL) hb_parnd( 2 );
      hb_retni( (int) ptr->X );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFY )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 2 )
          ptr->Y = (REAL) hb_parnd( 2 );
      hb_retni( (int) ptr->Y );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFWIDTH )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 2 )
         ptr->Width = (REAL) hb_parnd( 2 );
      hb_retni( (int) ptr->Width );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFHEIGHT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_RECTF( pObj ) ){
      RectF * ptr = ( RectF * ) GP_GET( pObj );
      if( hb_pcount() == 2 )
         ptr->Height == (REAL) hb_parnd( 2 );
      hb_retni( (int) ptr->Height );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPRECTFUNION )
{
   GDIPLUS * pObj1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj2 = hb_GDIPLUS_par( 3 );
   GDIPLUS * pObj3 = hb_GDIPLUS_par( 4 );

   if( GP_IS_RECTF( pObj1 ) && GP_IS_RECTF( pObj2 ) && GP_IS_RECTF( pObj3 ) ){
      RectF * ptr1 = ( RectF * ) GP_GET( pObj1 );
      RectF * ptr2 = ( RectF * ) GP_GET( pObj2 );
      RectF * ptr3 = ( RectF * ) GP_GET( pObj3 );
      RectF out;
      BOOL lRet;
      PHB_ITEM pitem;
      lRet = ptr1->Union( out, *ptr2, *ptr3 );
      //pitem = GPNewRectFObject( out );
      pitem = GPNewGDIPLUSObject( &out, GP_IT_RECTF );
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );

      hb_retl( lRet );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

#pragma ENDDUMP
