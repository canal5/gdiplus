#include "fivewin.ch"

function Matrix( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   switch nLen
      case 0
         oObj = GPMatrix():New()
         exit
      case 2
         oObj = GPMatrix():New( aParams[ 1 ], aParams[ 2 ] )
         exit
      case 6
         oObj = GPMatrix():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ], aParams[ 6 ] )
   endswitch

return oObj


CLASS GPMatrix

   DATA handle

   METHOD New( n1, n2, n3, n4, n5, n6 ) CONSTRUCTOR

   METHOD Destroy()
   DESTRUCTOR Destroy()

   METHOD Clone()
   METHOD Equals()
   METHOD GetElements()
   METHOD GetLastStatus()
   METHOD Invert()
   METHOD IsIdentity()
   METHOD IsInvertible()
   METHOD Multiply()
   METHOD OffsetX()
   METHOD OffsetY()
   METHOD Reset()
   METHOD Rotate()
   METHOD RotateAt()
   METHOD Scale()
   METHOD SetElements()
   METHOD Shear()
   METHOD TransformPoints( Point )
   METHOD TransformVectors(Point)
   METHOD TransformVectorsF(PointF)
   METHOD Translate()
   

// Constructors
// Matrix::Matrix()
// Matrix::Matrix(REAL,REAL,REAL,REAL,REAL,REAL)
// Matrix::Matrix(Rect&,Point*)
// Matrix::Matrix(RectF&,PointF*)


ENDCLASS

*******************************************************************************************
  METHOD New( p1, p2, p3, p4, p5, p6 ) CLASS GPMatrix
*******************************************************************************************

local iParams := PCount()

  switch( iParams )
     case 0
        ::handle := _GPMatrix()
        exit
     case 2
        ::handle := _GPMatrix( p1:handle, p2:handle )
        exit
      case 6        
        ::handle := _GPMatrix( p1, p2, p3, p4, p5, p6 )
  endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPMatrix
*********************************************************************************************************

   ::handle = nil

return nil


*******************************************************************************************
   METHOD Clone() CLASS GPMatrix
*******************************************************************************************
   local oClone

   oClone = _GPMatrixClone( ::handle )
   
return oClone

*******************************************************************************************
   METHOD Equals( oSrc ) CLASS GPMatrix
*******************************************************************************************

return _GPMatrixEquals( ::handle, oSrc:handle )

*******************************************************************************************
   METHOD GetElements( aElements ) CLASS GPMatrix
*******************************************************************************************

   local nStatus
   
   nStatus =  _GPMatrixGetElements( ::handle, @aElements )

return nStatus

*******************************************************************************************
   METHOD GetLastStatus() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixGetLastStatus( ::handle )

*******************************************************************************************
   METHOD Invert() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixInvert( ::handle )

*******************************************************************************************
   METHOD IsIdentity() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixIsIdentity( ::handle )

*******************************************************************************************
   METHOD IsInvertible() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixIsInvertible( ::handle )

*******************************************************************************************
   METHOD Multiply( oMatrix, nOrder ) CLASS GPMatrix
*******************************************************************************************
   local nStatus
   
   DEFAULT nOrder := 0
   
   nStatus = _GPMatrixMultiply( ::handle, oMatrix:handle, nOrder ) 

return nStatus

*******************************************************************************************
   METHOD OffsetX() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixOffsetX( ::handle )

*******************************************************************************************
   METHOD OffsetY() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixOffsetY( ::handle )

*******************************************************************************************
   METHOD Reset() CLASS GPMatrix
*******************************************************************************************

return _GPMatrixReset( ::handle )

*******************************************************************************************
   METHOD Rotate( nAngle, nOrder ) CLASS GPMatrix
*******************************************************************************************
   
   DEFAULT nAngle := 0
   DEFAULT nOrder := 0   


return _GPMatrixRotate( ::handle, nAngle, nOrder ) 

*******************************************************************************************
   METHOD RotateAt( nAngle, oPointF, nOrder ) CLASS GPMatrix
*******************************************************************************************

    DEFAULT nAngle := 0
    DEFAULT nOrder := 0

return _GPMatrixRotateAt( ::handle, nAngle, oPointF:handle, nOrder )

*******************************************************************************************
   METHOD Scale( nScaleX, nScaleY, nOrder ) CLASS GPMatrix
*******************************************************************************************
   
   DEFAULT nScaleX := 0
   DEFAULT nScaleY := 0
   DEFAULT nOrder  := 0


return _GPMatrixScale( ::handle, nScaleX, nScaleY, nOrder )

*******************************************************************************************
   METHOD SetElements( m11, m12, m21, m22, dx, dy ) CLASS GPMatrix
*******************************************************************************************
   
return _GPMatrixSetElements( ::handle, m11, m12, m21, m22, dx, dy )

*******************************************************************************************
   METHOD Shear(nShearX, nShearY, nOrder ) CLASS GPMatrix
*******************************************************************************************
   
   DEFAULT nShearX := 0
   DEFAULT nShearY := 0
   DEFAULT nOrder  := 0


return _GPMatrixShear( ::handle, nShearX, nShearY, nOrder )

//*******************************************************************************************
   METHOD TransformPoints( aPoint ) CLASS GPMatrix
//*******************************************************************************************

   
return _GPmatrixTransformPoints( ::handle, @aPoint )


*******************************************************************************************
   METHOD TransformVectors( aPoint ) CLASS GPMatrix
*******************************************************************************************

return _GPmatrixTransformVectors( ::handle, aPoint )

*******************************************************************************************
   METHOD TransformVectorsf( aPoint ) CLASS GPMatrix
*******************************************************************************************

return _GPmatrixTransformVectorsf( ::handle, aPoint )

*******************************************************************************************
   METHOD Translate(nOffsetX, nOffsetY, nOrder ) CLASS GPMatrix
*******************************************************************************************
   
   DEFAULT nOffsetX := 0
   DEFAULT nOffsetY := 0
   DEFAULT nOrder  := 0


return _GPMatrixTranslate( ::handle, nOffsetX, nOffsetY, nOrder )



// Constructors
// Matrix::Matrix()                          Creates and initializes a Matrix::Matrix object that represents the identity matrix.
// Matrix::Matrix(REAL,REAL,REAL,REAL,REAL,REAL) Creates and initializes a Matrix::Matrix object based on six numbers that define an affine transformation.
// Matrix::Matrix(Rect&,Point*)                  Creates a Matrix::Matrix object based on a rectangle and a point.
// Matrix::Matrix(RectF&,PointF*)          Creates a Matrix::Matrix object based on a rectangle and a point.
//
//
// Methods
//
// The Matrix class has the following methods.
//
// Method                                 Description

// Matrix::Clone                          The Matrix::Clone method creates a new Matrix object that is a copy of this Matrix object.
// Matrix::Equals                         The Matrix::Equals method determines whether the elements of this matrix are equal to the elements of another matrix.
// Matrix::GetElements                          The Matrix::GetElements method gets the elements of this matrix. The elements are placed in an array in the order m11, m12, m21, m22, m31, m32, where mij denotes the element in row i, column j.
// Matrix::GetLastStatus                  The Matrix::GetLastStatus method returns a value that indicates the nature of this Matrix object's most recent method failure.
// Matrix::Invert                         If this matrix is invertible, the Matrix::Invert method replaces the elements of this matrix with the elements of its inverse.
// Matrix::IsIdentity                         The Matrix::IsIdentity method determines whether this matrix is the identity matrix.
// Matrix::IsInvertible                         The Matrix::IsInvertible method determines whether this matrix is invertible.
// Matrix::Multiply                         The Matrix::Multiply method updates this matrix with the product of itself and another matrix.
// Matrix::OffsetX                          The Matrix::OffsetX method gets the horizontal translation value of this matrix, which is the element in row 3, column 1.
// Matrix::OffsetY                          The Matrix::OffsetY method gets the vertical translation value of this matrix, which is the element in row 3, column 2.
// Matrix::Reset                          The Matrix::Reset method updates this matrix with the elements of the identity matrix.
// Matrix::Rotate                         The Matrix::Rotate method updates this matrix with the product of itself and a rotation matrix.
// Matrix::RotateAt                         The Matrix::RotateAt method updates this matrix with the product of itself and a matrix that represents rotation about a specified point.
// Matrix::Scale                          The Matrix::Scale method updates this matrix with the product of itself and a scaling matrix.
// Matrix::SetElements                          The Matrix::SetElements method sets the elements of this matrix.
// Matrix::Shear                          The Matrix::Shear method updates this matrix with the product of itself and a shearing matrix.
// Matrix::TransformPoints(Point*,INT)          The Matrix::TransformPoints method multiplies each point in an array by this matrix. Each point is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::TransformPoints(PointF*,INT)         The Matrix::TransformPoints method multiplies each point in an array by this matrix. Each point is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::TransformVectors(Point*,INT)         The Matrix::TransformVectors method multiplies each vector in an array by this matrix. The translation elements of this matrix (third row) are ignored. Each vector is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::TransformVectors(PointF*,INT)  The Matrix::TransformVectors method multiplies each vector in an array by this matrix. The translation elements of this matrix (third row) are ignored. Each vector is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::Translate                          The Matrix::Translate method updates this matrix with the product of itself and a translation matrix.



#pragma BEGINDUMP
#include <hbvm.h> 
#include <gc.h>
#include <hbapicls.h>

HB_FUNC( _GPMATRIX )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_MATRIX );   
   Matrix* ptr;
   int iParams = hb_pcount(); 
   BOOL lRet = true;
 
   switch( iParams ){
      case 0:
        ptr = new Matrix();
        break;
     case 2:
     {
        GDIPLUS * pR = hb_GDIPLUS_par( 1 );
        GDIPLUS * pP = hb_GDIPLUS_par( 2 );
        if( GP_IS_RECTF( pR ) && GP_IS_POINTF( pP ) ){
          RectF * rect = ( RectF * ) GP_GET( pR );
          PointF * point = ( PointF * ) GP_GET( pP );
          ptr = new Matrix( *rect, point );         
        }else if( GP_IS_RECT( pR ) && GP_IS_POINT( pP ) ){
          Rect * rect = ( Rect * ) GP_GET( pR );
          Point * point = ( Point * ) GP_GET( pP );
          ptr = new Matrix( *rect, point );                   
        }else 
           lRet = false;
     }
     break;
     case 6:
       ptr = new Matrix( (REAL) hb_parnd( 1 ), 
                         (REAL) hb_parnd( 2 ),
                         (REAL) hb_parnd( 3 ),
                         (REAL) hb_parnd( 4 ),
                         (REAL) hb_parnd( 5 ),
                         (REAL) hb_parnd( 6 ) );
   }
   
   if( lRet ){
      GP_SET( pObj, ptr );   
      hb_GDIPLUS_ret( pObj );          
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

//-----------------------------------------//

HB_FUNC( _GPMATRIXCLONE )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );
      Matrix * clone;
      PHB_ITEM pClone;
      clone = ptr->Clone();
      pClone = GPNewGDIPLUSObject( ( void * ) clone, GP_IT_MATRIX );    
      hb_itemReturnRelease( pClone );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXEQUALS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_MATRIX( p ) && GP_IS_MATRIX( p2 ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );
      Matrix * pSrc = ( Matrix * ) GP_GET( p2 );
      hb_retl( ptr->Equals( pSrc ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXGETELEMENTS )
{
  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );
      int n;
      Status iStatus;
      REAL * pOut = ( REAL * ) hb_xgrab( sizeof( REAL ) * 6 );
      iStatus = ptr->GetElements( pOut );
      if( iStatus == Ok ){
         PHB_ITEM aOut = hb_itemArrayNew( 6 );
         for( n = 1; n < 7; n ++ )
         {
             hb_arraySetND( aOut, n, pOut[ n - 1 ] ); 
         }
         
         if( !hb_itemParamStoreRelease( 2, aOut ))
           hb_itemRelease( aOut );
      }     
      hb_xfree( pOut );
      hb_retni( ( INT ) iStatus );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXGETLASTSTATUS )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );
      hb_retni( ( int ) ptr->GetLastStatus() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXINVERT )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );          
      hb_retni( ( int ) ptr->Invert() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXISIDENTITY )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );        
      hb_retl( ( int ) ptr->IsIdentity() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXISINVERTIBLE )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );    
      hb_retl( ( int ) ptr->IsInvertible() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXMULTIPLY )
{
   MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );
   Status sta;   
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );
      Matrix * ptr2 = ( Matrix * ) GP_GET( p2 );
      sta = ptr->Multiply( ptr2, order );
      hb_retni( sta );
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXOFFSETX )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );          
      hb_retnd( ( double ) ptr->OffsetX() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXOFFSETY )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );     
      hb_retnd( ( double ) ptr->OffsetY() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXRESET )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );  
      hb_retni( ( int ) ptr->Reset() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXROTATE )
{
   REAL angle = ( REAL ) hb_parnd( 2 );
   MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );        
      hb_retni( ( int ) ptr->Rotate( angle, order ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXROTATEAT )
{
   REAL angle = ( REAL ) hb_parnd( 2 );   
   MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 3 );
   
   if( GP_IS_MATRIX( p ) && GP_IS_POINTF( p2 ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );  
      PointF * center = ( PointF * ) GP_GET( p2 );
      hb_retni( ( int ) ptr->RotateAt( angle, *center, order ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}


//-----------------------------------------//

HB_FUNC( _GPMATRIXSCALE )
{
   REAL scaleX = ( REAL ) hb_parnd( 2 );
   REAL scaleY = ( REAL ) hb_parnd( 3 );
   MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );        
      hb_retni( ( int ) ptr->Scale( scaleX, scaleY, order ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXSETELEMENTS )
{
   REAL m11 = ( REAL ) hb_parnd( 2 );
   REAL m12 = ( REAL ) hb_parnd( 3 );
   REAL m21 = ( REAL ) hb_parnd( 4 );
   REAL m22 = ( REAL ) hb_parnd( 5 );
   REAL dx = ( REAL ) hb_parnd( 6 );
   REAL dy = ( REAL ) hb_parnd( 7 );

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );        
      hb_retni( ( int ) ptr->SetElements( m11, m12, m21, m22, dx, dy ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXSHEAR )
{
   REAL shearX = ( REAL ) hb_parnd( 2 );
   REAL shearY = ( REAL ) hb_parnd( 3 );
   MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );  

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p ); 
      hb_retni( ( int ) ptr->Shear( shearX, shearY, order ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSFORMPOINTS )
{
   Status sta;    
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_MATRIX( p ) && HB_ISARRAY( 2 ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p ); 
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      int iLen = hb_arrayLen( aPoint );     
      int n;
      Point * pPoint;
      PointF * pPointF;
      BOOL lF = false;
      
      
      for( n = 0; n < iLen; n++ ){
        
        PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );
        GDIPLUS * ptrPoint;
        hb_objSendMsg( pItem, "HANDLE", 0 );
        ptrPoint = hb_GDIPLUS_par( -1 );

        if( GP_IS_POINT( ptrPoint ) ){
           if( n == 0 )
              pPoint = ( Point * ) hb_xgrab( sizeof( Point ) * iLen );
           Point * pObj = ( Point * )GP_GET( ptrPoint );          
           pPoint[ n ] = *pObj;
        }else if( GP_IS_POINTF( ptrPoint ) ){
           if( n == 0 ){
              pPointF = ( PointF * ) hb_xgrab( sizeof( PointF ) * iLen );
              lF = true;
           }
           PointF * pObj = ( PointF * )GP_GET( ptrPoint );          
           pPointF[ n ] = *pObj;
        }

      }
      
      if( ! lF ){
         int n;
         sta = ptr->TransformPoints( pPoint, iLen );
         for( n=0; n< iLen;n++ )
         {
            PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );
            GPSendHandleToObject( pItem, &pPoint[ n ], GP_IT_POINT );
         }              
         hb_xfree( ( void*) pPoint );
      }else{
         sta = ptr->TransformPoints( pPointF, iLen );
         for( n=0; n< iLen;n++ )
         {
            PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );
            GPSendHandleToObject( pItem, &pPointF[ n ], GP_IT_POINTF );
         }           
         hb_xfree( ( void*) pPointF );        
      }
        
      hb_retni( sta );
      
      
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSFORMPOINTSF )
{
   Status sta;    
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_MATRIX( p ) && HB_ISARRAY( 2 ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p ); 
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      int iLen = hb_arrayLen( aPoint );     
      int n;
      PointF * pPoint = ( PointF * ) hb_xgrab( sizeof( PointF ) * iLen );
      
      for( n = 0; n < iLen; n++ ){
        
        PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );  
        hb_vmPushSymbol( hb_dynsymGetSymbol( "HANDLE" ) ); 
        hb_vmPush( pItem );     
        hb_vmFunction( 0 );
        PointF * pObj = hb_PointF_par( -1 );
        PointF pDest( pObj->X, pObj->Y ); 
        pPoint[ n ] = pDest;      
      }
      
      hb_xfree( ( void*) pPoint );
      sta = ptr->TransformPoints( pPoint, iLen );
        
      hb_retni( sta );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSFORMVECTORS )
{
   Status sta;    
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_MATRIX( p ) && HB_ISARRAY( 2 ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p ); 
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      int iLen = hb_arrayLen( aPoint );     
      int n;
      Point * pPoint = ( Point * ) hb_xgrab( sizeof( Point ) * iLen );
      
      for( n = 0; n < iLen; n++ ){
        
        PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );  
        hb_vmPushSymbol( hb_dynsymGetSymbol( "HANDLE" ) ); 
        hb_vmPush( pItem );     
        hb_vmFunction( 0 );
        Point * pObj = hb_Point_par( -1 );
        Point pDest( pObj->X, pObj->Y );  
        pPoint[ n ] = pDest;      
                            
      }

      sta = ptr->TransformVectors( pPoint, iLen );

      hb_xfree( ( void*) pPoint );
        
      hb_retni( sta );
            
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSFORMVECTORSF )
{
   Status sta;    
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_MATRIX( p ) && HB_ISARRAY( 2 ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p ); 
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      int iLen = hb_arrayLen( aPoint );     
      int n;
      PointF * pPoint = ( PointF * ) hb_xgrab( sizeof( PointF ) * iLen );
      
      for( n = 0; n < iLen; n++ ){
        
        PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );  
        hb_vmPushSymbol( hb_dynsymGetSymbol( "HANDLE" ) ); 
        hb_vmPush( pItem );     
        hb_vmFunction( 0 );
        PointF * pObj = hb_PointF_par( -1 );
        PointF pDest( pObj->X, pObj->Y ); 
        pPoint[ n ] = pDest;      
                    
      }

      sta = ptr->TransformVectors( pPoint, iLen );
      
      hb_xfree( (void*) pPoint );
      hb_retni( sta );      

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSLATE )
{

   REAL scaleX = ( REAL ) hb_parnd( 2 );
   REAL scaleY = ( REAL ) hb_parnd( 3 );
   MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );  
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   
   if( GP_IS_MATRIX( p ) ){
      Matrix * ptr = ( Matrix * ) GP_GET( p );        
      hb_retni( ( int ) ptr->Translate( scaleX, scaleY, order ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
   
}

//-----------------------------------------//


#pragma ENDDUMP


