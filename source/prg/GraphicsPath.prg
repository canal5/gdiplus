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
   METHOD CreateObjRef()
   METHOD Dispose()
   METHOD Equals()
   METHOD Flatten()
   METHOD GetBounds()
   METHOD GetHashCode()
   METHOD GetLastPoint()
   METHOD GetLifetimeService()
   METHOD GetType()
   METHOD InitializeLifetimeService()
   METHOD IsOutlineVisible()
   METHOD IsVisible()
   METHOD ReferenceEquals()
   METHOD Reset()
   METHOD Reverse()
   METHOD SetMarkers()
   METHOD StartFigure()
   METHOD ToString()
   METHOD Transform()
   METHOD Warp()
   METHOD Widen()

ENDCLASS

*********************************************************************************************************
  METHOD New( ... ) CLASS GPGraphicsPath
*********************************************************************************************************

local iParams := PCount()
local handle 
local aParams := hb_aparams()

   switch iParams
      case 0
         handle = _GPGraphicsPath()
         exit
      case 1
         handle = _GPGraphicsPath( aParams[ 1 ] )
         exit
      case 4
         handle = _GPGraphicsPath( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
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
      sta = GPGraphicsPathAddArc(::handle, A:handle, B, C )
   else 
      sta = GPGraphicsPathAddArc(::handle, A, B, C, D, E, F )
   endif
   
return sta

*********************************************************************************************************
   METHOD AddBezier( A, B, C, D, E, F, G, H ) CLASS GPGraphicsPath
*********************************************************************************************************
   local sta

   if ValType( A ) == "O"
      sta = GPGraphicsPathAddBezier(::handle, A:handle, B:handle, C:handle, D:handle)
   else 
      sta = GPGraphicsPathAddBezier(::handle, A, B, C, D, E, F, G, H )
   endif

return sta


*********************************************************************************************************
   METHOD AddBeziers( aPoint, nLen ) CLASS GPGraphicsPath
*********************************************************************************************************
   local sta
   
   nLen = 0

   sta = GPGraphicsPathAddBeziers(::handle, aPoint )

return sta

********************************************************************************************************
   METHOD AddClosedCurve( aPoint, nTension ) CLASS GPGraphicsPath
********************************************************************************************************
   
   local sta
   
   nLen = 0
   
   if nTension != NIL
      sta = GPGraphicsPathAddClosedCurve(::handle, aPoint, nTension )
   else 
      sta = GPGraphicsPathAddClosedCurve(::handle, aPoint )
   endif

return sta

********************************************************************************************************
   METHOD AddCurve( aPoint, A, B, C ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta
   local iParam := PCount()
   nLen = 0
   
   if iParam == 1 
      sta = GPGraphicsPathAddCurve(::handle, aPoint  )
   elseif iParam == 2
      sta = GPGraphicsPathAddCurve(::handle, aPoint, A  )
   else
      sta = GPGraphicsPathAddCurve(::handle, aPoint, A, B, C  )
   endif

return sta

********************************************************************************************************
   METHOD AddEllipse( A,B,C,D ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta
   local iParam := PCount()
   nLen = 0
   
   if iParam == 1 
      sta = GPGraphicsAddEllipse(::handle, A:handle  )
   elseif iParam == 4
      sta = GPGraphicsAddEllipse(::handle, A, B, C, D )
   endif

return sta

********************************************************************************************************
   METHOD AddLine( A, B, C, D ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta
   local iParam := PCount()
   nLen = 0
   
   if iParam == 2 
      sta = GPGraphicsAddLine(::handle, A:handle, B:handle  )
   elseif iParam == 4
      sta = GPGraphicsAddLine(::handle, A, B, C, D )
   endif

return sta

********************************************************************************************************
   METHOD AddLines( A ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta
   
   sta = GPGraphicsAddLines(::handle, A )

return sta

********************************************************************************************************
   METHOD AddPath( A, B ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta
   
   sta = GPGraphicsAddPath(::handle, A:handle, B )

return sta

********************************************************************************************************
   METHOD AddPie( A, B, C, D, E, F ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta
   local iParam := PCount()
   
   if iParam == 3
      sta = GPGraphicsAddPie(::handle, A:handle, B, C  )
   elseif iParam == 6
      sta = GPGraphicsAddPie(::handle, A, B, C, D, E, F )
   endif
   
return sta   

********************************************************************************************************
   METHOD AddPolygon( A ) CLASS GPGraphicsPath
********************************************************************************************************
   local sta
  
   sta = GPGraphicsPathAddPolygon(::handle, A )
   
return sta  

********************************************************************************************************
   METHOD AddRectangle( A ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   sta = GPGraphicsPathAddRectangle(::handle, A:handle )
   
return sta  

********************************************************************************************************
   METHOD AddRectangles( A ) CLASS GPGraphicsPath
********************************************************************************************************

   local sta

   sta = GPGraphicsPathAddRectangles(::handle, A )
   
return sta 

********************************************************************************************************
   METHOD AddString() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD ClearMarkers() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Clone() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD CloseAllFigures() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD CloseFigure() CLASS GPGraphicsPath
********************************************************************************************************

return GPGraphicsPathCloseFigure(::handle)

********************************************************************************************************
   METHOD CreateObjRef() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Dispose() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Equals() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Flatten() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD GetBounds() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD GetHashCode() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD GetLastPoint() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD GetLifetimeService() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD GetType() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD InitializeLifetimeService() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD IsOutlineVisible() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD IsVisible() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD ReferenceEquals() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Reset() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Reverse() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD SetMarkers() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD StartFigure() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD ToString() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Transform() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Warp() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD Widen() CLASS GPGraphicsPath
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

HB_FUNC( _GPGRAPHICSPATH )
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

HB_FUNC( GPGRAPHICSPATHADDARC )
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

HB_FUNC( GPGRAPHICSPATHADDBEZIER )
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


HB_FUNC( GPGRAPHICSPATHADDBEZIERS )
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

HB_FUNC( GPGRAPHICSPATHADDCLOSEDCURVE )
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

HB_FUNC( GPGRAPHICSPATHADDCURVE )
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


HB_FUNC( GPGRAPHICSADDELLIPSE )
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

HB_FUNC( GPGRAPHICSADDLINE )
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


HB_FUNC( GPGRAPHICSADDLINES )
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


HB_FUNC( GPGRAPHICSADDPATH )
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

HB_FUNC( GPGRAPHICSADDPIE )
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

HB_FUNC( GPGRAPHICSPATHADDPOLYGON )
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


HB_FUNC( GPGRAPHICSPATHADDRECTANGLE )
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

HB_FUNC( GPGRAPHICSPATHADDRECTANGLES )
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

HB_FUNC( GPADDSTRING )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   LPWSTR str = hb_mbtowc( (LPSTR) hb_parc( 2 ));
   FontFamily* ff = (FontFamily*) hb_parnl( 3 );
   int style = hb_parni( 4 );
   float emSize = (float) hb_parnd( 5 );
   RectF rect = RectF(hb_parvnd( 6, 1 ), hb_parvnd( 6, 2 ), hb_parvnd( 6, 3 ), hb_parvnd( 6, 4 ));
   StringFormat* sf = (StringFormat*) hb_parni( 7 );
   gp->AddString( str, hb_parclen( 2 ), ff, style, emSize, rect, sf );

   hb_xfree( str );
   hb_ret();
}

HB_FUNC( GPSTARTFIGURE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   gp->StartFigure();
   hb_ret();
}

HB_FUNC( GPGRAPHICSPATHCLOSEFIGURE )
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


#pragma ENDDUMP






