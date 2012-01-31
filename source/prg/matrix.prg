#include "fivewin.ch"

function Matrix( n1, n2, n3, n4, n5, n6 )
return GPMatrix():New( n1, n2, n3, n4, n5, n6 )

CLASS GPMatrix

   DATA handle

   METHOD New( n1, n2, n3, n4, n5, n6 ) CONSTRUCTOR

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
   //METHOD TransformPoints(Point*,INT)
   METHOD TransformPoints(PointF, n)
   //METHOD TransformVectors(Point*,INT)
   METHOD TransformVectors(PointF,n)
   METHOD Translate()

   METHOD Destroy()
   DESTRUCTOR Destroy()

ENDCLASS

*******************************************************************************************
  METHOD New() CLASS GPMatrix
*******************************************************************************************

return self

*******************************************************************************************
   METHOD Clone() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Equals() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetElements() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetLastStatus() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Invert() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD IsIdentity() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD IsInvertible() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Multiply() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD OffsetX() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD OffsetY() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Reset() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Rotate() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD RotateAt() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Scale() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetElements() CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Shear() CLASS GPMatrix
*******************************************************************************************

return 0

//*******************************************************************************************
//   //METHOD TransformPoints(Point*,INT) CLASS GPMatrix
//*******************************************************************************************
//
//return 0

*******************************************************************************************
   METHOD TransformPoints(PointF, n) CLASS GPMatrix
*******************************************************************************************

return 0

//*******************************************************************************************
//   //METHOD TransformVectors(Point*,INT) CLASS GPMatrix
//*******************************************************************************************
//
//return 0

*******************************************************************************************
   METHOD TransformVectors(PointF,n) CLASS GPMatrix
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD Translate() CLASS GPMatrix
*******************************************************************************************

return 0



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
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;







#pragma ENDDUMP


