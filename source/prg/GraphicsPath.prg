#include "fivewin.ch"

function GraphicsPath( ... )
   local aParams := hb_aparams()
   local oPath
   local nLen := Len( aParams )

   switch nLen
      case 0
         oPath = GPGraphicsPath():New()
         exit
      case 1
         oPath = GPGraphicsPath():New( aParams[ 1 ] )
         exit
      case 4
         oPath = GPGraphicsPath():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

return oPath


CLASS GPGraphicsPath

   DATA handle

   METHOD New( cFileName )             CONSTRUCTOR
   METHOD     Destroy()
   DESTRUCTOR Destroy()

   METHOD AddArc( rc, start, angle )
   METHOD AddBezier( aPt1, aPt2, aPt3, aPt4 )
   METHOD AddBeziers()
   METHOD AddClosedCurve()
   METHOD AddCurve()
   METHOD AddEllipse()
   METHOD AddLine()
   METHOD AddLines()
   METHOD AddPath()
   METHOD AddPie()
   METHOD AddPolygon()
   METHOD AddRectangle()
   METHOD AddRectangles()
   METHOD AddString()
   METHOD ClearMarkers()
   METHOD Clone()
   METHOD CloseAllFigures()
   METHOD CloseFigure()
   METHOD Flatten()
   METHOD GetBounds()
   METHOD GetFillMode()
   METHOD GetLastPoint()
   METHOD GetLastStatus( )
   METHOD GetPathData()
   METHOD GetPathPoints()
   METHOD GetPointCount()
   METHOD GetPathTypes()
   METHOD IsOutlineVisible()
   METHOD IsVisible()

ENDCLASS

*********************************************************************************************************
  METHOD New( ... ) CLASS GPGraphicsPath
*********************************************************************************************************

local iParams := PCount()
local handle
local aParams := hb_aparams()

   switch iParams
      case 0
         handle = C5_GPGraphicsPath()
         exit
      case 1
         handle = C5_GPGraphicsPath( aParams[ 1 ] )
         exit
      case 4
         handle = C5_GPGraphicsPath( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

   ::handle = handle

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPGraphicsPath
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
   METHOD AddArc( A, B, C, D, E, F ) CLASS GPGraphicsPath
*********************************************************************************************************

   local sta

   if ValType( A ) == "O"
      sta = C5GPGraphicsPathAddArc(::handle, A:handle, B, C )
   else
      sta = C5GPGraphicsPathAddArc(::handle, A, B, C, D, E, F )
   endif

return sta

*********************************************************************************************************
   METHOD AddBezier( A, B, C, D, E, F, G, H ) CLASS GPGraphicsPath
*********************************************************************************************************
   local sta

   if ValType( A ) == "O"
      sta = C5GPGraphicsPathAddBezier(::handle, A:handle, B:handle, C:handle, D:handle)
   else
      sta = C5GPGraphicsPathAddBezier(::handle, A, B, C, D, E, F, G, H )
   endif

return sta


*********************************************************************************************************
   METHOD AddBeziers( aPoint, nLen ) CLASS GPGraphicsPath
*********************************************************************************************************
   local sta

   nLen = 0

   sta = C5GPGraphicsPathAddBeziers(::handle, aPoint )

return sta

********************************************************************************************************
   METHOD AddClosedCurve( aPoint, nTension ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   nLen = 0

   if nTension != NIL
      sta = C5GPGraphicsPathAddClosedCurve(::handle, aPoint, nTension )
   else
      sta = C5GPGraphicsPathAddClosedCurve(::handle, aPoint )
   endif

return sta

********************************************************************************************************
   METHOD AddCurve( aPoint, A, B, C ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta
   local iParam := PCount()
   nLen = 0

   if iParam == 1
      sta = C5GPGraphicsPathAddCurve(::handle, aPoint  )
   elseif iParam == 2
      sta = C5GPGraphicsPathAddCurve(::handle, aPoint, A  )
   else
      sta = C5GPGraphicsPathAddCurve(::handle, aPoint, A, B, C  )
   endif

return sta

********************************************************************************************************
   METHOD AddEllipse( A,B,C,D ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta
   local iParam := PCount()
   nLen = 0

   if iParam == 1
      sta = C5GPGraphicsAddEllipse(::handle, A:handle  )
   elseif iParam == 4
      sta = C5GPGraphicsAddEllipse(::handle, A, B, C, D )
   endif

return sta

********************************************************************************************************
   METHOD AddLine( A, B, C, D ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta
   local iParam := PCount()
   nLen = 0

   if iParam == 2
      sta = C5GPGraphicsAddLine(::handle, A:handle, B:handle  )
   elseif iParam == 4
      sta = C5GPGraphicsAddLine(::handle, A, B, C, D )
   endif

return sta

********************************************************************************************************
   METHOD AddLines( A ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   sta = C5GPGraphicsAddLines(::handle, A )

return sta

********************************************************************************************************
   METHOD AddPath( A, B ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta

   sta = C5GPGraphicsAddPath(::handle, A:handle, B )

return sta

********************************************************************************************************
   METHOD AddPie( A, B, C, D, E, F ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta
   local iParam := PCount()

   if iParam == 3
      sta = C5GPGraphicsAddPie(::handle, A:handle, B, C  )
   elseif iParam == 6
      sta = C5GPGraphicsAddPie(::handle, A, B, C, D, E, F )
   endif

return sta

********************************************************************************************************
   METHOD AddPolygon( A ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta

   sta = C5GPGraphicsPathAddPolygon(::handle, A )

return sta

********************************************************************************************************
   METHOD AddRectangle( A ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   sta = C5GPGraphicsPathAddRectangle(::handle, A:handle )

return sta

********************************************************************************************************
   METHOD AddRectangles( A ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   sta = C5GPGraphicsPathAddRectangles(::handle, A )

return sta

********************************************************************************************************
   METHOD AddString( cString, family, style, emSize, oRect, oStringFormat ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta

   if oStringFormat != NIL
      sta = C5GPGraphicsPathAddString(::handle, cString, Len( cString ), family:handle, style, emSize, oRect:handle, oStringFormat:handle )
   else
      sta = C5GPGraphicsPathAddString(::handle, cString, Len( cString ), family:handle, style, emSize, oRect:handle)
   endif

return sta

********************************************************************************************************
   METHOD ClearMarkers() CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathClearMarkers( ::handle )

********************************************************************************************************
   METHOD Clone() CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathClone( ::handle )

********************************************************************************************************
   METHOD CloseAllFigures() CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathCloseAllFigures( ::handle )

********************************************************************************************************
   METHOD CloseFigure() CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathCloseFigure(::handle)

********************************************************************************************************
   METHOD Flatten( oMatrix, flatness ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta
   local p1

   if oMatrix != NIL
      p1 = oMatrix:handle
   endif

return C5GPGraphicsPathFlatten( ::handle, p1, flatness )

********************************************************************************************************
   METHOD GetBounds( oRect, oMatrix, oPen ) CLASS GPGraphicsPath
********************************************************************************************************
   local p1, p2

   if oMatrix != NIL
      p1 = oMatrix:handle
   endif
   if oPen != NIL
      p2 = oPen:handle
   endif


return C5GPGraphicsPathGetBounds( ::handle, @oRect:handle, p1, p2 )

********************************************************************************************************
   METHOD GetFillMode() CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathGetFillMode( ::handle )


********************************************************************************************************
   METHOD GetLastPoint( oPoint ) CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathGetLastPoint( ::handle, @oPoint )


********************************************************************************************************
   METHOD GetLastStatus( ) CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathGetLastStatus( ::handle )



********************************************************************************************************
   METHOD GetPathData( pathdata ) CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathGetPathData( ::handle, @pathdata )


********************************************************************************************************
   METHOD GetPathPoints( oPoint, nCount ) CLASS GPGraphicsPath
********************************************************************************************************

   DEFAULT nCount := ::GetPointCount()

return C5GPGraphicsPathGetPathPoints( ::handle, @oPoint, nCount )

********************************************************************************************************
   METHOD GetPointCount( ) CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathGetPointCount( ::handle )


********************************************************************************************************
   METHOD GetPathTypes( aTypes ) CLASS GPGraphicsPath
********************************************************************************************************

return C5GPGraphicsPathGetPathTypes( ::handle, @aTypes )


********************************************************************************************************
   METHOD IsOutlineVisible( p1, p2, p3, p4 ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   if ValType( p1 ) == "N"
      sta = C5GPGraphicsPathIsOutlineVisible( ::handle,  p1, p2, p3:handle, p4:handle  )
   else
      sta = C5GPGraphicsPathIsOutlineVisible( ::handle, p1:handle, p2:handle, p3:handle  )
   endif

return sta

********************************************************************************************************
   METHOD IsVisible() CLASS GPGraphicsPath
********************************************************************************************************

return 0


//   AddArc                       Sobrecargado. Agrega un arco elíptico a la figura actual.
//   AddBezier                    Sobrecargado. Agrega una curva Bézier cúbica a la figura actual.
//   AddBeziers                   Sobrecargado. Agrega una secuencia de curvas Bézier cúbicas conectadas a la figura actual.
//   AddClosedCurve               Sobrecargado. Agrega una curva cerrada a este trazado. Se utiliza una curva spline cardinal porque la curva recorre todos los puntos de la matriz.
//   AddCurve                     Sobrecargado. Agrega una curva spline a la figura actual. Se utiliza una curva spline cardinal porque la curva recorre todos los puntos de la matriz.
//   AddEllipse                   Sobrecargado. Agrega una elipse al trazado actual.
//   AddLine                      Sobrecargado. Anexa un segmento de línea a este trazado GraphicsPath.
//   AddLines                     Sobrecargado. Anexa una serie de segmentos de línea conectados al final de este trazado GraphicsPath.
//   AddPath                      Anexa el trazado GraphicsPath especificado a este trazado.
//   AddPie                       Sobrecargado. Agrega el contorno de una forma circular a este trazado.
//   AddPolygon                   Sobrecargado. Agrega un polígono a este trazado.
//   AddRectangle                 Sobrecargado. Agrega un rectángulo a este trazado.
//   AddRectangles                Sobrecargado. Agrega una serie de rectángulos a este trazado.
//   AddString                    Sobrecargado. Agrega una cadena de texto a este trazado.
//   ClearMarkers                 Borra todos los marcadores de este trazado.
//   Clone                        Crea una copia exacta de este trazado.
//   CloseAllFigures              Cierra todas las figuras abiertas de este trazado e inicia una nueva figura. Cierra cada figura abierta conectando una línea desde su extremo hasta su punto inicial.
//   CloseFigure                  Cierra la figura actual e inicia una nueva figura. Si la figura actual contiene una secuencia de líneas y curvas interconectadas, este método cierra el bucle conectando una línea desde el extremo hasta el punto inicial.
//   CreateObjRef                 Crea un objeto que contiene toda la información relevante necesaria para generar un proxy utilizado para comunicarse con un objeto remoto. (Se hereda de MarshalByRefObject).
//   Dispose                      Libera todos los recursos utilizados por este trazado GraphicsPath.
//   Equals                       Sobrecargado. Determina si dos instancias de Object son iguales. (Se hereda de Object).
//   Flatten                      Sobrecargado. Convierte cada una de las curvas de este trazado en una secuencia de segmentos conectados.
//   GetBounds                    Sobrecargado. Devuelve un rectángulo que delimita este trazado GraphicsPath.
//   GetHashCode                  Sirve como función hash para un tipo concreto. GetHashCode es apropiado para su utilización en algoritmos de hash y en estructuras de datos como las tablas hash. (Se hereda de Object).
//   GetLastPoint                 Obtiene el último punto de la matriz PathPoints de este trazado GraphicsPath.
//   GetLifetimeService           Recupera el objeto de servicio de duración actual que controla la directiva de duración de esta instancia. (Se hereda de MarshalByRefObject).
//   GetType                      Obtiene el objeto Type de la instancia actual. (Se hereda de Object).
//   InitializeLifetimeService    Obtiene un objeto de servicio de duración para controlar la directiva de duración de esta instancia. (Se hereda de MarshalByRefObject).
//   IsOutlineVisible             Sobrecargado. Indica si el punto especificado está dentro del contorno de este trazado GraphicsPath cuando se dibuja con el Pen especificado.
//   IsVisible                    Sobrecargado. Indica si el punto especificado está dentro de este trazado GraphicsPath.
//   ReferenceEquals              Determina si las instancias de Object especificadas son la misma instancia. (Se hereda de Object).
//   Reset                        Vacía las matrices PathPoints y PathTypes y establece FillMode en Alternate.
//   Reverse                      Invierte el orden de los puntos en la matriz de PathPoints de este trazado GraphicsPath.
//   SetMarkers                   Establece un marcador en este trazado GraphicsPath.
//   StartFigure                  Inicia una nueva figura sin cerrar la actual. Todos los puntos siguientes agregados al trazado se incorporan a esta nueva figura.
//   ToString                     Devuelve una clase String que representa la clase Object actual. (Se hereda de Object).
//   Transform                    Aplica una matriz de transformación a este trazado GraphicsPath.
//   Warp                         Sobrecargado. Aplica una transformación de alabeo, definida por un rectángulo y un paralelogramo, a este trazado GraphicsPath.
//   Widen                        Sobrecargado. Reemplaza este trazado con curvas que rodean el área que está rellena cuando ese trazado se dibuja con el lápiz especificado.



#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( C5_GPGRAPHICSPATH )
{
   GraphicsPath* o;
   GDIPLUS *  pObj = gdiplus_new( GP_IT_GRAPHICSPATH );
   int iParams = hb_pcount();
   BOOL lOk = true;

   switch (iParams){
      case 0:
          o = new GraphicsPath();
          break;
      case 1:
          o = new GraphicsPath( ( FillMode) hb_parni( 1 ) );
          break;
      case 4:
      {
         PHB_ITEM aPoint = hb_param( 1, HB_IT_ARRAY );
         PHB_ITEM aType  = hb_param( 2, HB_IT_ARRAY );
         int j;
         int count = hb_arrayLen( aPoint );
         int count2 = hb_arrayLen( aType );
         BOOL lF = false;
         void * vPoint;
         if( count2 == count ){
            void * vPoint;
            BYTE * pType = ( BYTE * ) hb_xgrab( sizeof( BYTE ) * count );
            vPoint = ConvertArray2Point( aPoint, &lF );
            for( j = 0; j < count; j++ )
               pType[ j ] = hb_arrayGetNI( aType, j + 1 );
            if( lF )
               o = new GraphicsPath( ( PointF * ) vPoint, pType, count, ( FillMode ) hb_parni( 4 ) );
            else
               o = new GraphicsPath( ( Point * ) vPoint, pType, count, ( FillMode ) hb_parni( 4 ) );
            hb_xfree( ( void * ) pType );
            hb_xfree( vPoint );
          }else
             lOk = false;
      }
      break;
   }
   if( lOk )
   {
      GP_SET( pObj, o );
      hb_GDIPLUS_ret( pObj );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHADDARC )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( hb_pcount() > 4 ){
         if( HB_ISDOUBLE( 2 ) )
            sta = gp->AddArc( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ) );
         else if( HB_ISINTEGER( 2 ) )
            sta = gp->AddArc( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ), hb_parni( 7 ) );
      }else {
        GDIPLUS * pRect = hb_GDIPLUS_par( 2 );
        if( GP_IS_RECTF( pRect ) ){
           RectF * rect = ( RectF * ) GP_GET( pRect );
           sta = gp->AddArc( *rect, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ) );
        }else{
           Rect * rect = ( Rect * ) GP_GET( pRect );
           sta = gp->AddArc( *rect, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ) );
        }
      }
      hb_retni( ( Status ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHADDBEZIER )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( hb_pcount() < 6 ){
        GDIPLUS * pPoint1 = hb_GDIPLUS_par( 2 );
        GDIPLUS * pPoint2 = hb_GDIPLUS_par( 3 );
        GDIPLUS * pPoint3 = hb_GDIPLUS_par( 4 );
        GDIPLUS * pPoint4 = hb_GDIPLUS_par( 5 );
        if( GP_IS_POINTF( pPoint1 ) && GP_IS_POINTF( pPoint2 ) && GP_IS_POINTF( pPoint3 ) && GP_IS_POINTF( pPoint4 ) ){
           PointF * point1 = ( PointF * ) GP_GET( pPoint1 );
           PointF * point2 = ( PointF * ) GP_GET( pPoint2 );
           PointF * point3 = ( PointF * ) GP_GET( pPoint3 );
           PointF * point4 = ( PointF * ) GP_GET( pPoint4 );
           sta = gp->AddBezier( *point1, *point2, *point3, *point4 );
        }else if( GP_IS_POINT( pPoint1 ) && GP_IS_POINT( pPoint2 ) && GP_IS_POINT( pPoint3 ) && GP_IS_POINT( pPoint4 ) ){
           Point * point1 = ( Point * ) GP_GET( pPoint1 );
           Point * point2 = ( Point * ) GP_GET( pPoint2 );
           Point * point3 = ( Point * ) GP_GET( pPoint3 );
           Point * point4 = ( Point * ) GP_GET( pPoint4 );
           sta = gp->AddBezier( *point1, *point2, *point3, *point4 );
        }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }else {
         if( HB_ISDOUBLE( 2 ) )
            sta = gp->AddBezier( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ),
                                 ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ),
                                 ( REAL ) hb_parnd( 8 ), ( REAL ) hb_parnd( 9 ) );
         else if( HB_ISINTEGER( 2 ) )
            sta = gp->AddBezier( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ), hb_parni( 7 ), hb_parni( 8 ), hb_parni( 9 ) );
         else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
      hb_retni( ( Status ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPGRAPHICSPATHADDBEZIERS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      void * vPoint;
      BOOL lF = false;
      vPoint = ConvertArray2Point( aPoint, &lF );
      if( lF ){
        sta = gp->AddBeziers( ( PointF * ) vPoint, hb_arrayLen( aPoint ) );
      }
      else
      {
        sta = gp->AddBeziers( ( Point * ) vPoint, hb_arrayLen( aPoint ) );
      }
      hb_xfree( vPoint );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPGRAPHICSPATHADDCLOSEDCURVE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      void * vPoint;
      BOOL lF = false;
      vPoint = ConvertArray2Point( aPoint, &lF );
      if( lF ){
        if( hb_pcount() > 2 )
           sta = gp->AddClosedCurve( ( PointF * ) vPoint, hb_arrayLen( aPoint ), ( REAL ) hb_parnd( 3 ) );
        else
           sta = gp->AddClosedCurve( ( PointF * ) vPoint, hb_arrayLen( aPoint ) );
      }
      else
      {
        if( hb_pcount() > 2 ){
           sta = gp->AddClosedCurve( ( Point * ) vPoint, hb_arrayLen( aPoint ), ( REAL ) hb_parnd( 3 ) );
         }
        else{
           sta = gp->AddClosedCurve( ( Point * ) vPoint, hb_arrayLen( aPoint ) );
         }
      }
      hb_xfree( vPoint );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPGRAPHICSPATHADDCURVE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      void * vPoint;
      BOOL lF = false;
      vPoint = ConvertArray2Point( aPoint, &lF );
      if( lF ){
        if( hb_pcount() < 3 )
           sta = gp->AddCurve( ( PointF * ) vPoint, hb_arrayLen( aPoint ) );
        else if( hb_pcount() < 4 )
           sta = gp->AddCurve( ( PointF * ) vPoint, hb_arrayLen( aPoint ), ( REAL ) hb_parnd( 3 ) );
        else if( hb_pcount() < 6 )
           sta = gp->AddCurve( ( PointF * ) vPoint, hb_arrayLen( aPoint ), hb_parni( 3 ) - 1, hb_parni( 4 ), ( REAL ) hb_parnd( 5 ) );
      }
      else
      {
        if( hb_pcount() < 3 )
           sta = gp->AddCurve( ( Point * ) vPoint, hb_arrayLen( aPoint ) );
        else if( hb_pcount() < 4 )
           sta = gp->AddCurve( ( Point * ) vPoint, hb_arrayLen( aPoint ), ( REAL ) hb_parnd( 3 ) );
        else if( hb_pcount() < 6 )
           sta = gp->AddCurve( ( Point * ) vPoint, hb_arrayLen( aPoint ), hb_parni( 3 ) - 1, hb_parni( 4 ), ( REAL ) hb_parnd( 5 ) );
      }
      hb_xfree( vPoint );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPGRAPHICSADDELLIPSE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( hb_pcount() < 3 ){
         GDIPLUS * pRect = hb_GDIPLUS_par( 2 );
         if( GP_IS_RECT( pRect ) ){
            Rect * rect = ( Rect * ) GP_GET( pRect );
            sta = gp->AddEllipse( *rect );
         }else{
            RectF * rect = ( RectF * ) GP_GET( pRect );
            sta = gp->AddEllipse( *rect );
         }
      }else {
         if( HB_ISDOUBLE( 2 ) ){
            sta = gp->AddEllipse( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ) );
         }else if( HB_ISINTEGER( 2 ) ){
            sta = gp->AddEllipse( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ) );
         }
      }
      hb_retni( ( Status ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSADDLINE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( hb_pcount() < 4 ){
         GDIPLUS * pPoint1 = hb_GDIPLUS_par( 2 );
         GDIPLUS * pPoint2 = hb_GDIPLUS_par( 3 );
         if( GP_IS_POINT( pPoint1 ) ){
            Point * point1 = ( Point * ) GP_GET( pPoint1 );
            Point * point2 = ( Point * ) GP_GET( pPoint2 );
            sta = gp->AddLine( *point1, *point2 );
         }else{
            PointF * point1 = ( PointF * ) GP_GET( pPoint1 );
            PointF * point2 = ( PointF * ) GP_GET( pPoint2 );
            sta = gp->AddLine( *point1, *point2 );
         }
      }else {
         if( HB_ISDOUBLE( 2 ) ){
            sta = gp->AddLine( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ) );
         }else if( HB_ISINTEGER( 2 ) ){
            sta = gp->AddLine( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ) );
         }
      }
      hb_retni( ( Status ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPGRAPHICSADDLINES )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      void * vPoint;
      BOOL lF = false;
      vPoint = ConvertArray2Point( aPoint, &lF );
      if( lF ){
         sta = gp->AddLines( ( PointF * ) vPoint, hb_arrayLen( aPoint ) );
      }
      else
      {
         sta = gp->AddLines( ( Point * ) vPoint, hb_arrayLen( aPoint ) );
      }
      hb_xfree( vPoint );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPGRAPHICSADDPATH )
{
   GDIPLUS * pObj  = hb_GDIPLUS_par( 1 );
   GDIPLUS * pPath = hb_GDIPLUS_par( 2 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) && GP_IS_GRAPHICSPATH( pPath ) ){
      GraphicsPath * gp   = ( GraphicsPath * ) GP_GET( pObj );
      GraphicsPath * path = ( GraphicsPath * ) GP_GET( pPath );
      gp->AddPath( path, hb_parl( 3 ) );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPGRAPHICSADDPIE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( hb_pcount() < 5 ){
         GDIPLUS * pRect = hb_GDIPLUS_par( 2 );
         if( GP_IS_RECT( pRect ) ){
            Rect * rect1 = ( Rect * ) GP_GET( pRect );
            sta = gp->AddPie( *rect1, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ) );
         }else{
            RectF * rect1 = ( RectF * ) GP_GET( pRect );
            sta = gp->AddPie( *rect1, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ) );
         }
      }else {
         if( HB_ISDOUBLE( 2 ) ){
            sta = gp->AddPie( ( REAL ) hb_parnd( 2 ), ( REAL ) hb_parnd( 3 ),
                              ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ),
                              ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ) );
         }else if( HB_ISINTEGER( 2 ) ){
            sta = gp->AddPie( hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ),
                               ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ) );
         }
      }
      hb_retni( ( Status ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHADDPOLYGON )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aPoint = hb_param( 2, HB_IT_ARRAY );
      void * vPoint;
      BOOL lF = false;
      vPoint = ConvertArray2Point( aPoint, &lF );
      if( lF ){
         sta = gp->AddPolygon( ( PointF * ) vPoint, hb_arrayLen( aPoint ) );
      }
      else{
        sta = gp->AddPolygon( ( Point * ) vPoint, hb_arrayLen( aPoint ) );
      }
      hb_xfree( vPoint );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPGRAPHICSPATHADDRECTANGLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pRect = hb_GDIPLUS_par( 2 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) && ( GP_IS_RECT( pRect ) || GP_IS_RECTF( pRect ) ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( GP_IS_RECT( pRect ) ){
         Rect * rect1 = ( Rect * ) GP_GET( pRect );
         sta = gp->AddRectangle( *rect1 );
      }else if( GP_IS_RECTF( pRect ) ){
         RectF * rect1 = ( RectF * ) GP_GET( pRect );
         sta = gp->AddRectangle( *rect1 );
      }
      hb_retni( ( Status ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPGRAPHICSPATHADDRECTANGLES )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aRect = hb_param( 2, HB_IT_ARRAY );
      void * vRect;
      BOOL lF = false;
      vRect = ConvertArray2Rect( aRect, &lF );
      if( lF ){
         sta = gp->AddRectangles( ( RectF * ) vRect, hb_arrayLen( aRect ) );
      }
      else{
        sta = gp->AddRectangles( ( Rect * ) vRect, hb_arrayLen( aRect ) );
      }
      hb_xfree( vRect );
      hb_retni( ( Status ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPGRAPHICSPATHADDSTRING )
{
   GDIPLUS * p1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
   GDIPLUS * p7 = hb_GDIPLUS_par( 7 );
   int length   = hb_parni( 3 ) | hb_parclen( 2 );
   int style    = hb_parni( 5 );
   REAL emSize  = ( double ) hb_parnd( 6 );

   Status sta;
   if( GP_IS_GRAPHICSPATH( p1 ) && GP_IS_FONTFAMILY( p4 ) && ( GP_IS_RECTF( p7 ) || GP_IS_RECT( p7 ) || GP_IS_POINTF( p7 ) || GP_IS_POINT( p7 ) ) ){
	    int iType = GP_OBJECT_TYPE( p7 );
      WCHAR * string = hb_GDIPLUS_parw( 2 );
      void * uPar7 = GP_GET( p7 );

      GDIPLUS * p8;
      StringFormat* sf = NULL;
      if( hb_pcount() > 7 ){
          p8 = hb_GDIPLUS_par( 8 );
          sf = (StringFormat*) GP_GET( p8 );
      }

      GraphicsPath* gp = (GraphicsPath*) GP_GET( p1 );
      FontFamily* ff   = (FontFamily*) GP_GET( p4 );

      switch( iType ){
         case GP_IT_RECT:
         	 sta = gp->AddString( string, length, ff, style, emSize, *( ( Rect * )uPar7 ), sf );
           break;
         case GP_IT_RECTF:
         	 sta = gp->AddString( string, length, ff, style, emSize, *( ( RectF * )uPar7 ), sf );
           break;
         case GP_IT_POINT:
         	 sta = gp->AddString( string, length, ff, style, emSize, *( ( Point * )uPar7 ), sf );
           break;
         case GP_IT_POINTF:
         	 sta = gp->AddString( string, length, ff, style, emSize, *( ( PointF * )uPar7 ), sf );
           break;
      }

      hb_xfree( string );
      hb_retni( sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHCLEARMARKERS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      sta = gp->ClearMarkers();
      hb_retni( ( int ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHCLONE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM pClone;
      GraphicsPath * oClone = gp->Clone();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_GRAPHICSPATH );
      hb_itemReturnRelease( pClone );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHCLOSEALLFIGURES )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      sta = gp->CloseAllFigures();
      hb_retni( ( int ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPSTARTFIGURE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   gp->StartFigure();
   hb_ret();
}

HB_FUNC( C5GPGRAPHICSPATHCLOSEFIGURE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      gp->CloseFigure();
      hb_ret();
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHFLATTEN )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   BOOL lOk = true;

   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( HB_ISNIL( 2 ) && HB_ISNIL( 3 ) ){
         sta = 	gp->Flatten();
      }else if( HB_ISNIL( 2 ) && HB_ISDOUBLE( 3 ) ){
         sta = 	gp->Flatten( NULL, ( REAL ) hb_parnd( 3 ) );
      }else if( HB_ISPOINTER( 2 ) && HB_ISNIL( 3 ) ){
      	GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
      	Matrix * m = ( Matrix * ) GP_GET( p2 );
      	sta = 	gp->Flatten( m, NULL );
      }else if( HB_ISPOINTER( 2 ) && HB_ISDOUBLE( 3 ) ) {
      	GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
      	Matrix * m = ( Matrix * ) GP_GET( p2 );
      	sta = 	gp->Flatten( m, ( REAL ) hb_parnd( 3 ) );
      }else
        lOk = false;

      if( lOk )
         hb_retni( ( int ) sta );
      else
         hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHGETPATHDATA )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PathData * path;
      PHB_ITEM pitem = GPCreateObjectToFill( (void**)&path, GP_IT_PATHDATA );
      sta = gp->GetPathData( path );
      GDIPLUS_StoreParam( 2, pitem );

      hb_retni( ( int ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHGETBOUNDS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pRect = hb_GDIPLUS_par( 2 );
   Status sta;

   if( GP_IS_GRAPHICSPATH( pObj ) && ( GP_IS_RECTF( pRect ) || GP_IS_RECT( pRect ) ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      Matrix * m = NULL;
      Pen    * p = NULL;
      void * uRect = GP_GET( pRect );

      if( HB_ISPOINTER( 3 ) ){
      	 GDIPLUS * p2 = hb_GDIPLUS_par( 3 );
         m = ( Matrix * ) GP_GET( p2 );
      }


      if( HB_ISPOINTER( 4 ) ){
      	 GDIPLUS * p2 = hb_GDIPLUS_par( 4 );
         p = ( Pen * ) GP_GET( p2 );
      }

      if( GP_IS_RECT( pRect ) )
         sta = gp->GetBounds( ( Rect * ) uRect, m, p );
      else
         sta = gp->GetBounds( ( RectF * ) uRect, m, p );

      hb_retni( ( int ) sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHGETFILLMODE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      hb_retni( ( int ) gp->GetFillMode() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPGRAPHICSPATHGETLASTPOINT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PointF * point;
      PHB_ITEM pitem = GPCreateObjectToFill( (void**)&point, GP_IT_POINTF );
      sta = gp->GetLastPoint( point );
      GDIPLUS_StoreParam( 2, pitem );
      hb_retni( ( int ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHGETLASTSTATUS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      hb_retni( ( int ) gp->GetLastStatus() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHGETPATHPOINTS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) && HB_ISARRAY( 2 ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      PHB_ITEM aPoints = hb_param( 2, HB_IT_ARRAY );
      int iLen = hb_arrayLen( aPoints );
      void * vPoint;
      BOOL lF;
      vPoint = ConvertArray2Point( aPoints, &lF );
      if( lF ){
         sta = gp->GetPathPoints( ( PointF * ) vPoint, iLen );
      }
      else{
         sta = gp->GetPathPoints( ( Point * ) vPoint, iLen );
      }

      hb_retni( ( int ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHGETPOINTCOUNT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      hb_retni( gp->GetPointCount() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPGRAPHICSPATHGETPATHTYPES )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      int count = gp->GetPointCount();
      int j;
      PHB_ITEM aTypes = hb_itemArrayNew( count );
      BYTE * pTypes = ( BYTE * ) hb_xgrab( count );
      sta = gp->GetPathTypes( pTypes, count );
      for( j = 0; j < count; j ++ ){
         hb_arraySetNI( aTypes, j+1, pTypes[ j ] );
      }

      GDIPLUS_StoreParam( 2, aTypes );

      hb_xfree( pTypes );

      hb_retni( ( int ) sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPGRAPHICSPATHISOUTLINEVISIBLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   BOOL lOk;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
      if( HB_ISPOINTER( 2 ) ){
         GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
         GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
         GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
         if( ( GP_IS_POINT( p2 ) || GP_IS_POINTF( p2 ) ) && GP_IS_PEN( p3 ) && GP_IS_GRAPHICS( p4 ) ){
         	  void * vPoint = GP_GET( p2 );
         	  Pen * p = ( Pen * ) GP_GET( p3 );
         	  Graphics * g = ( Graphics * ) GP_GET( p4 );
            if( GP_IS_POINT( p2 ) ){
               lOk = gp->IsOutlineVisible( *( ( Point * ) vPoint ), p, g );
            }	else {
            	 lOk = gp->IsOutlineVisible( *( ( PointF * ) vPoint ), p, g );
            }
            hb_retl( lOk );
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }else {
         GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
         GDIPLUS * p5 = hb_GDIPLUS_par( 5 );
         if( GP_IS_PEN( p4 ) && GP_IS_GRAPHICS( p5 ) ){
         	  Pen * p = ( Pen * ) GP_GET( p4 );
         	  Graphics * g = ( Graphics * ) GP_GET( p5 );
         	  if( HB_ISDOUBLE( 2 ) )
         	     lOk = gp->IsOutlineVisible( ( REAL )hb_parnd( 2 ), ( REAL )hb_parnd( 3 ), p, g );
         	  else
         	     lOk = gp->IsOutlineVisible( hb_parni( 2 ), hb_parni( 3 ), p, g );

         	  hb_retl( lOk );
         }else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }


   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}



/*

HB_FUNC( C5GPGRAPHICSPATH... )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICSPATH( pObj ) ){
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

*/

#pragma ENDDUMP






