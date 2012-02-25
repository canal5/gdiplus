#include "fivewin.ch"

//Constructor
//Rect::Rect()
//Rect::Rect(PointF&,SizeF&)
//Rect::Rect(REAL,REAL,REAL,REAL)

function Rect( ... )
   local aParams := hb_aparams()
   local oRect
   local nLen := Len( aParams )

   switch nLen
      case 0
         oRect = GPRect():New()
         exit
      case 1
         oRect = GPRect():New( aParams[ 1 ] )
         exit
      case 2
         oRect = GPRect():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 4
         oRect = GPRect():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

return oRect


CLASS GPRect

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD X()
  METHOD Y()
  METHOD Width()
  METHOD Height()


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
  METHOD New( p1, p2, p3, p4 ) CLASS GPRect
*********************************************************************************************************

local iParams := PCount()

  if iParams == 0
     ::handle := _GPRect()
  elseif iParams == 1
     ::handle := ::Clone( p1 )                      //
  elseif iParams == 2
     ::handle := _GPRect( p1:handle, p2:handle )   // oPoint, oSize
  elseif iParams == 4
     ::handle := _GPRect( p1, p2, p3, p4 )         //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPRect
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone( o ) CLASS GPRect
*********************************************************************************************************

return GPRectClone(o:handle)

*********************************************************************************************************
  METHOD Contains( ... ) CLASS GPRect
*********************************************************************************************************
   
   local aParams := hb_aparams()
   local nLen := Len( aParams )
   local l
   
   switch nLen
      case 1
         l = GPRectContains( ::handle, aParams[ 1 ]:handle )
         exit
      case 2
         l = GPRectContains( ::handle, aParams[ 1 ], aParams[ 2 ] )
         exit 
   endswitch

return l

*********************************************************************************************************
  METHOD Equals(rc) CLASS GPRect
*********************************************************************************************************

return GPRectEquals(::handle,rc:handle)

*********************************************************************************************************
  METHOD GetBottom() CLASS GPRect
*********************************************************************************************************

return GPRectGetBottom(::handle)

*********************************************************************************************************
  METHOD GetBounds(rc) CLASS GPRect
*********************************************************************************************************

return GPRectGetBounds( ::handle, @rc )

*********************************************************************************************************
  METHOD GetLeft() CLASS GPRect
*********************************************************************************************************

return GPRectGetLeft(::handle)

*********************************************************************************************************
  METHOD GetLocation(pt) CLASS GPRect
*********************************************************************************************************

return GPRectGetLocation(::handle, @pt)

*********************************************************************************************************
  METHOD GetRight() CLASS GPRect
*********************************************************************************************************

return GPRectGetRight(::handle)

*********************************************************************************************************
  METHOD GetSize() CLASS GPRect
*********************************************************************************************************

return 0 //GPRectGetSize(::handle)

*********************************************************************************************************
  METHOD GetTop() CLASS GPRect
*********************************************************************************************************

return GPRectGetTop(::handle)

*********************************************************************************************************
  METHOD Inflate( ... ) CLASS GPRect
*********************************************************************************************************

   local aParams := hb_aparams()
   local nLen := Len( aParams )
   
   switch nLen
      case 1
         GPRectInflate( ::handle, aParams[ 1 ]:handle )
         exit
      case 2
         GPRectInflate( ::handle, aParams[ 1 ], aParams[ 2 ] )
         exit 
   endswitch

return nil


*********************************************************************************************************
  METHOD Intersect( A, B, C ) CLASS GPRect
*********************************************************************************************************

   if ValType( A ) == "O"
      lRet = GPRectIntersect( ::handle, A:handle )
   else 
      lRet = GPRectIntersect( ::handle, @A, B:handle, C:handle )
   endif


return lRet

*********************************************************************************************************
  METHOD IntersectsWith(rc) CLASS GPRect
*********************************************************************************************************

return GPRectIntersectsWith(::handle, rc:handle )

*********************************************************************************************************
  METHOD IsEmptyArea() CLASS GPRect
*********************************************************************************************************

return GPRectIsEmptyArea(::handle)

*********************************************************************************************************
  METHOD Offset( A, B ) CLASS GPRect
*********************************************************************************************************


   if ValType( A ) == "O"
      GPRectOffset( ::handle, A:handle )
   else 
      GPRectOffset( ::handle, A, B )
   endif


return nil

*********************************************************************************************************
  METHOD Union(rc1,rc2,rc3) CLASS GPRect
*********************************************************************************************************

return GPRectUnion(::handle, @rc1, rc2:handle, rc3:handle )

*********************************************************************************************************
  METHOD X() CLASS GPRect
*********************************************************************************************************

return GPRectX(::handle)

*********************************************************************************************************
  METHOD Y() CLASS GPRect
*********************************************************************************************************

return GPRectY(::handle)

*********************************************************************************************************
  METHOD Width() CLASS GPRect
*********************************************************************************************************

return GPRectWidth(::handle)

*********************************************************************************************************
  METHOD Height() CLASS GPRect
*********************************************************************************************************

return GPRectHeight(::handle)


//Constructors
//
//The Rect class has the following constructors.
//
//Constructor                                     Description
//Rect::Rect()                                  Creates a Rect object and initializes the X and Y data members to zero. This is the default constructor.
//Rect::Rect(PointF&,SizeF&)                    Creates a Rect object by using a PointF object to initialize the X and Y data members and uses a SizeF object to initialize the Width and Height data members of this rectangle.
//Rect::Rect(REAL,REAL,REAL,REAL)               Creates a Rect object by using four integers to initialize the X, Y, Width, and Height data members.
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

HB_FUNC( _GPRECT )
{
    GDIPLUS * pObj = gdiplus_new( GP_IT_RECT );   
    Rect * ptr;
    int iParams = hb_pcount();

    if( iParams == 0 ){
       ptr = new Rect();
       GP_SET( pObj, ptr );   
       hb_GDIPLUS_ret( pObj );
    }
    else if( iParams == 2 )
    {
       GDIPLUS * pP = hb_GDIPLUS_par( 1 );
       GDIPLUS * pS = hb_GDIPLUS_par( 2 );
       
       if( GP_IS_POINT( pP ) && GP_IS_SIZE( pS ) ){
          Point * p_pt = ( Point * ) GP_GET( pP );
          Size * p_sz = ( Size * ) GP_GET( pS );
          ptr = new Rect( *p_pt, *p_sz );
          GP_SET( pObj, ptr );   
          hb_GDIPLUS_ret( pObj );
              
       }else
          hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );       
    }
    else if( iParams == 4 ) {
       ptr = new Rect( hb_parni( 1 ), hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ) );
       GP_SET( pObj, ptr );
       hb_GDIPLUS_ret( pObj );
    }
    
}

HB_FUNC( GPRECTCLONE )
{
   
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      Rect * pClone;
      PHB_ITEM pitem;
      
      pClone = ptr->Clone();
      
      pitem = GPNewGDIPLUSObject( pClone, GP_IT_RECT );

      hb_itemReturnRelease( pitem );
   
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

HB_FUNC( GPRECTCONTAINS )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      if( hb_pcount() == 3 ){         
         hb_retl( ptr->Contains( hb_parni( 2 ), hb_parni( 3 ) ) );  
      } else if( hb_pcount() == 2 ){
         GDIPLUS * pP = hb_GDIPLUS_par( 2 );
         if( GP_IS_POINT( pP ) ){
            Point * p_pt = ( Point * ) GP_GET( pP );
            hb_retl( ptr->Contains( *p_pt ) );         
         }else if( GP_IS_RECT( pP ) ){
            Rect * p_pt = ( Rect * ) GP_GET( pP );
            hb_retl( ptr->Contains( *p_pt ) );            
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );      
      }
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( GPRECTEQUALS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pP = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_RECT( pObj ) && GP_IS_RECT( pP ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      Rect * ptr2 = ( Rect * ) GP_GET( pP );
      hb_retl( ptr->Equals( *ptr2 ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPRECTGETBOTTOM )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( ptr->GetBottom() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPRECTGETBOUNDS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      Rect pClone;
      PHB_ITEM pitem;
      
      ptr->GetBounds( &pClone );
      
      pitem = GPNewGDIPLUSObject( &pClone, GP_IT_RECT );
      
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );
   
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
}

HB_FUNC( GPRECTGETLEFT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( ptr->GetLeft() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
}

HB_FUNC( GPRECTGETLOCATION )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      Point pClone;
      PHB_ITEM pitem;
      
      ptr->GetLocation( &pClone );
      
      pitem = GPNewGDIPLUSObject( &pClone, GP_IT_RECT );
      
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );
   
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPRECTGETRIGHT )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( ptr->GetRight() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPRECTGETTOP )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( ptr->GetTop() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GPRECTINFLATE )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      if( hb_pcount() == 3 ){
         ptr->Inflate( hb_parni(2), hb_parni(3) );      
      }else if( hb_pcount() == 2 ){
         GDIPLUS * pP = hb_GDIPLUS_par( 2 );
         Point * point = ( Point * ) GP_GET( pP );
         ptr->Inflate( *point );    
      }
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );      
}

HB_FUNC( GPRECTINTERSECT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_RECT( pObj ) ){
      if( hb_pcount() == 2 ){
         GDIPLUS * pObj2 = hb_GDIPLUS_par( 2 );
         if( GP_IS_RECT( pObj2 ) ){
            Rect * ptr = ( Rect * ) GP_GET( pObj );
            Rect * ptr2 = ( Rect * ) GP_GET( pObj2 );
            hb_retl( ptr->Intersect( *ptr2 ));            
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
            
      }else if( hb_pcount() == 4 ){
         GDIPLUS * pObj2 = hb_GDIPLUS_par( 3 );
         GDIPLUS * pObj3 = hb_GDIPLUS_par( 4 );
         if( GP_IS_RECT( pObj2 ) && GP_IS_RECT( pObj3 ) ) {
            Rect * ptr = ( Rect * ) GP_GET( pObj );
            Rect * ptr2 = ( Rect * ) GP_GET( pObj2 );
            Rect * ptr3 = ( Rect * ) GP_GET( pObj3 );
            Rect out;
            BOOL lRet;
            PHB_ITEM pitem;
            
            lRet =  ptr->Intersect( out, *ptr2, *ptr3 );
             
            pitem = GPNewGDIPLUSObject( &out, GP_IT_RECT );
            
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


HB_FUNC( GPRECTINTERSECTSWITH )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pP = hb_GDIPLUS_par( 2 );
   
   if( GP_IS_RECT( pObj ) && GP_IS_RECT( pP ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      Rect * ptr2 = ( Rect * ) GP_GET( pP );
      hb_retl(ptr->IntersectsWith( *ptr2 ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   
}

HB_FUNC( GPRECTISEMPTYAREA )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retl(ptr->IsEmptyArea());
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( GPRECTOFFSET )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      if( hb_pcount() == 3 ){
         ptr->Offset( hb_parni(2), hb_parni(3) ); 
      }else if( hb_pcount() == 2 ){
         GDIPLUS * pP = hb_GDIPLUS_par( 2 );
         Point * point = ( Point * ) GP_GET( pP );
         ptr->Offset( *point );    
      }
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );  
}

HB_FUNC( GPRECTSETX )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      ptr->X = hb_parni( 2 );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPRECTSETY )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      ptr->Y = hb_parni( 2 );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( GPRECTX )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( (int) ptr->X );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

HB_FUNC( GPRECTY )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( (int) ptr->Y );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

HB_FUNC( GPRECTWIDTH )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( (int) ptr->Width );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

HB_FUNC( GPRECTHEIGHT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_RECT( pObj ) ){
      Rect * ptr = ( Rect * ) GP_GET( pObj );
      hb_retni( (int) ptr->Height );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

HB_FUNC( GPRECTUNION )
{
   GDIPLUS * pObj1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj2 = hb_GDIPLUS_par( 3 );
   GDIPLUS * pObj3 = hb_GDIPLUS_par( 4 );
            
   if( GP_IS_RECT( pObj1 ) && GP_IS_RECT( pObj2 ) && GP_IS_RECT( pObj3 ) ){
      Rect * ptr1 = ( Rect * ) GP_GET( pObj1 );
      Rect * ptr2 = ( Rect * ) GP_GET( pObj2 );
      Rect * ptr3 = ( Rect * ) GP_GET( pObj3 );
      Rect out;
      BOOL lRet;
      PHB_ITEM pitem;

      lRet = ptr1->Union( out, *ptr2, *ptr3 );
      
      pitem = GPNewGDIPLUSObject( &out, GP_IT_RECT );
      
      if( !hb_itemParamStoreRelease( 2, pitem ))
        hb_itemRelease( pitem );
        
      hb_retl( lRet );         
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

#pragma ENDDUMP
