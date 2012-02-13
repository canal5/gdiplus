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
   METHOD TransformPointsF( PointF )
   METHOD TransformVectors(Point)
   METHOD TransformVectorsF(PointF)
   METHOD Translate()
   
   
   METHOD convertMatrixHandle( h )


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
        if p1:IsKindOf( "GPRECT" ) .AND. p2:IsKindOf( "GPPOINT" ) 
           ::handle := _GPMatrixInt( p1:handle, p2:handle )
        elseif p1:IsKindOf( "GPRECTF" ) .AND. p2:IsKindOf( "GPPOINTF" )
           ::handle := _GPMatrixFloat( p1:handle, p2:handle )
        endif
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
   
   oClone = ::New()

   oClone:handle = _GPMatrixClone( ::handle )
   
return oClone

*******************************************************************************************
   METHOD Equals( oSrc ) CLASS GPMatrix
*******************************************************************************************

return _GPMatrixEquals( ::handle, oSrc:handle )

*******************************************************************************************
   METHOD GetElements( aElements ) CLASS GPMatrix
*******************************************************************************************

   local nStatus
   local aOut := AFill( Array( 6 ), 0 )
   nStatus =  _GPMatrixGetElements( ::handle, @aOut )
   aElements = aOut   

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

return _GPMatrixRotateAt( ::handle, nAngle, oPointF, nOrder )

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

   
return _GPmatrixTransformPoints( ::handle, aPoint )

//*******************************************************************************************
   METHOD TransformPointsF( aPoint ) CLASS GPMatrix
//*******************************************************************************************
   
return _GPmatrixTransformPointsF( ::handle, aPoint )


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


*********************************************************************************************************
METHOD convertMatrixHandle( h ) CLASS GPMatrix
*********************************************************************************************************
   ::handle = _getMatrixHandle( h )
return nil


// Constructors
// Matrix::Matrix()	                         Creates and initializes a Matrix::Matrix object that represents the identity matrix.
// Matrix::Matrix(REAL,REAL,REAL,REAL,REAL,REAL) Creates and initializes a Matrix::Matrix object based on six numbers that define an affine transformation.
// Matrix::Matrix(Rect&,Point*)	                 Creates a Matrix::Matrix object based on a rectangle and a point.
// Matrix::Matrix(RectF&,PointF*)	         Creates a Matrix::Matrix object based on a rectangle and a point.
//
//
// Methods
//
// The Matrix class has the following methods.
//
// Method	                                Description

// Matrix::Clone	                        The Matrix::Clone method creates a new Matrix object that is a copy of this Matrix object.
// Matrix::Equals	                        The Matrix::Equals method determines whether the elements of this matrix are equal to the elements of another matrix.
// Matrix::GetElements	                        The Matrix::GetElements method gets the elements of this matrix. The elements are placed in an array in the order m11, m12, m21, m22, m31, m32, where mij denotes the element in row i, column j.
// Matrix::GetLastStatus	                The Matrix::GetLastStatus method returns a value that indicates the nature of this Matrix object's most recent method failure.
// Matrix::Invert	                        If this matrix is invertible, the Matrix::Invert method replaces the elements of this matrix with the elements of its inverse.
// Matrix::IsIdentity	                        The Matrix::IsIdentity method determines whether this matrix is the identity matrix.
// Matrix::IsInvertible	                        The Matrix::IsInvertible method determines whether this matrix is invertible.
// Matrix::Multiply	                        The Matrix::Multiply method updates this matrix with the product of itself and another matrix.
// Matrix::OffsetX	                        The Matrix::OffsetX method gets the horizontal translation value of this matrix, which is the element in row 3, column 1.
// Matrix::OffsetY	                        The Matrix::OffsetY method gets the vertical translation value of this matrix, which is the element in row 3, column 2.
// Matrix::Reset	                        The Matrix::Reset method updates this matrix with the elements of the identity matrix.
// Matrix::Rotate	                        The Matrix::Rotate method updates this matrix with the product of itself and a rotation matrix.
// Matrix::RotateAt	                        The Matrix::RotateAt method updates this matrix with the product of itself and a matrix that represents rotation about a specified point.
// Matrix::Scale	                        The Matrix::Scale method updates this matrix with the product of itself and a scaling matrix.
// Matrix::SetElements	                        The Matrix::SetElements method sets the elements of this matrix.
// Matrix::Shear	                        The Matrix::Shear method updates this matrix with the product of itself and a shearing matrix.
// Matrix::TransformPoints(Point*,INT)	        The Matrix::TransformPoints method multiplies each point in an array by this matrix. Each point is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::TransformPoints(PointF*,INT)	        The Matrix::TransformPoints method multiplies each point in an array by this matrix. Each point is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::TransformVectors(Point*,INT)	        The Matrix::TransformVectors method multiplies each vector in an array by this matrix. The translation elements of this matrix (third row) are ignored. Each vector is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::TransformVectors(PointF*,INT)	The Matrix::TransformVectors method multiplies each vector in an array by this matrix. The translation elements of this matrix (third row) are ignored. Each vector is treated as a row matrix. The multiplication is performed with the row matrix on the left and this matrix on the right.
// Matrix::Translate	                        The Matrix::Translate method updates this matrix with the product of itself and a translation matrix.



#pragma BEGINDUMP
#include <hbvm.h> 
#include <gc.h>

HB_FUNC( _GETMATRIXHANDLE )
{
	Matrix * c = ( Matrix * ) hb_parptr( 1 );
	hb_Matrix_ret( c );	
}


HB_FUNC( _GPMATRIX )
{
   Matrix* ptr;
   int iParams = hb_pcount();

   if( iParams == 0 )
       ptr = new Matrix();

   else if (iParams == 6 )
       ptr = new Matrix( (REAL) hb_parnd( 1 ), 
                         (REAL) hb_parnd( 2 ),
                         (REAL) hb_parnd( 3 ),
                         (REAL) hb_parnd( 4 ),
                         (REAL) hb_parnd( 5 ),
                         (REAL) hb_parnd( 6 ) );

   hb_Matrix_ret( ptr );
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXINT )
{
   Matrix* ptr = NULL;
   Rect * pRect = hb_Rect_par( 1 );
   Point * pPoint = hb_Point_par( 2 );

   if( pRect && pPoint )
   {
      Rect oRect( pRect->X, pRect->Y, pRect->Width, pRect->Height ); 
      ptr = new Matrix( oRect, pPoint );
      hb_Matrix_ret( ptr );
   } else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );    
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXFLOAT )
{
   Matrix* ptr = NULL;
   RectF * pRect = hb_RectF_par( 1 );
   PointF * pPoint = hb_PointF_par( 2 );
   
   if( pRect && pPoint )
   {
      RectF oRect( pRect->X, pRect->Y, pRect->Width, pRect->Height );
      ptr = new Matrix( oRect, pPoint );
      hb_Matrix_ret( ptr );
   } else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
      
   
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXCLONE )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
   Matrix *pClone = NULL;

	 if( ptr )
	 {	 	 
	    pClone = ptr->Clone();
	    hb_Matrix_ret( pClone );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXEQUALS )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
   Matrix * pSrc = hb_Matrix_par( 2 );

	 if( ptr && pSrc )
	 {	 	 	    
	    hb_retl( ptr->Equals( pSrc ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXGETELEMENTS )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
   
	 if( ptr )
	 {	 	
	 	  int n;
	 	  Status iStatus;
	 	  REAL * pOut = ( REAL * ) hb_xgrab( sizeof( REAL ) * 6 );
	    iStatus = ptr->GetElements( pOut );
	    if( iStatus == Ok ){
	 	     PHB_ITEM aOut = hb_param( 2, HB_IT_ARRAY ); 	    
	       for( n = 1; n < 7; n ++ )
	       {
	       	   hb_arraySetND( aOut, n, pOut[ n - 1 ] ); 
	       }
	       
	       hb_storvptr( aOut, 2 );
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
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->GetLastStatus() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXINVERT )
{
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->Invert() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXISIDENTITY )
{
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retl( ( int ) ptr->IsIdentity() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXISINVERTIBLE )
{
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retl( ( int ) ptr->IsInvertible() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXMULTIPLY )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
	 Matrix * ptr2 = hb_Matrix_par( 2 );	 
	 MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );
   Status sta;
   
	 if( ptr && ptr2 )
	 {	 	 	    
	    sta = ptr->Multiply( ptr2, order );
	    hb_retni( sta );
	    
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXOFFSETX )
{
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retnd( ( double ) ptr->OffsetX() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXOFFSETY )
{
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retnd( ( double ) ptr->OffsetY() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXRESET )
{
	 Matrix * ptr = hb_Matrix_par( 1 );

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->Reset() );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXROTATE )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
	 REAL angle = ( REAL ) hb_parnd( 2 );
	 MatrixOrder order = ( MatrixOrder ) hb_parni( 3 );	 

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->Rotate( angle, order ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXROTATEAT )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
	 REAL angle = ( REAL ) hb_parnd( 2 );
   PointF * center = hb_PointF_par( 3 );
	 MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );	 

	 if( ptr )
	 {	 	 	    
	 	  PointF oPoint( center->X, center->Y );
	    hb_retni( ( int ) ptr->RotateAt( angle, oPoint, order ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}


//-----------------------------------------//

HB_FUNC( _GPMATRIXSCALE )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
   REAL scaleX = ( REAL ) hb_parnd( 2 );
   REAL scaleY = ( REAL ) hb_parnd( 3 );
	 MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );	 

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->Scale( scaleX, scaleY, order ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXSETELEMENTS )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
   REAL m11 = ( REAL ) hb_parnd( 2 );
   REAL m12 = ( REAL ) hb_parnd( 3 );
   REAL m21 = ( REAL ) hb_parnd( 4 );
   REAL m22 = ( REAL ) hb_parnd( 5 );
   REAL dx = ( REAL ) hb_parnd( 6 );
   REAL dy = ( REAL ) hb_parnd( 7 );


	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->SetElements( m11, m12, m21, m22, dx, dy ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXSHEAR )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
   REAL shearX = ( REAL ) hb_parnd( 2 );
   REAL shearY = ( REAL ) hb_parnd( 3 );
	 MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );	 

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->Shear( shearX, shearY, order ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

extern "C"{
LPSTR LToStr( long );
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSFORMPOINTS )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
	 Status sta;
    
	 if( ptr && HB_ISARRAY( 2 ) )
	 {	
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
	    
	    hb_xfree( ( void*) pPoint );
	    sta = ptr->TransformPoints( pPoint, iLen );
	    	
	    hb_retni( sta );
	    
	    
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//

HB_FUNC( _GPMATRIXTRANSFORMPOINTSF )
{
	 Matrix * ptr = hb_Matrix_par( 1 );
	 Status sta;
    
	 if( ptr && HB_ISARRAY( 2 ) )
	 {	
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
	 Matrix * ptr = hb_Matrix_par( 1 );
	 Status sta;
    
	 if( ptr && HB_ISARRAY( 2 ) )
	 {	
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
	 Matrix * ptr = hb_Matrix_par( 1 );
	 Status sta;
    
	 if( ptr && HB_ISARRAY( 2 ) )
	 {	
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
	 Matrix * ptr = hb_Matrix_par( 1 );
   REAL scaleX = ( REAL ) hb_parnd( 2 );
   REAL scaleY = ( REAL ) hb_parnd( 3 );
	 MatrixOrder order = ( MatrixOrder ) hb_parni( 4 );	 

	 if( ptr )
	 {	 	 	    
	    hb_retni( ( int ) ptr->Translate( scaleX, scaleY, order ) );
	 }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
	 
}

//-----------------------------------------//


#pragma ENDDUMP


