#include "fivewin.ch"

function GraphicsPath()
return GPGraphicsPath():New()


CLASS GPGraphicsPath

   DATA handle

   METHOD New( cFileName )             CONSTRUCTOR
   METHOD     Destroy()
   DESTRUCTOR Destroy()

   METHOD AddArc( rc, start, angle )          INLINE GP_AddArc(::g, rc, start, angle )
   METHOD AddBezier( aPt1, aPt2, aPt3, aPt4 ) INLINE GP_AddBezier(::g, aPt1, aPt2, aPt3, aPt4 )
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
  METHOD New( cFileName ) CLASS GPGraphicsPath
*********************************************************************************************************

  ::handle := _GraphicsPath( cFileName )

return self

********************************************************************************************************
   METHOD AddClosedCurve() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddCurve() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddEllipse() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddLine() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddLines() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddPath() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddPie() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddPolygon() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddRectangle() CLASS GPGraphicsPath
********************************************************************************************************

return 0

********************************************************************************************************
   METHOD AddRectangles() CLASS GPGraphicsPath
********************************************************************************************************

return 0

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

return 0

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


*********************************************************************************************************
  METHOD Destroy() CLASS GPGraphicsPath
*********************************************************************************************************

   DeleteGraphicsPath ( ::handle )

return nil

#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <hbapiitm.h>
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GRAPHICSPATH )
{
   GraphicsPath* gp = new GraphicsPath();
   hb_retni( (long) gp );
}

HB_FUNC( DELETEGRAPHICSPATH )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   delete (GraphicsPath*) gp;
   hb_ret();
}

HB_FUNC( GP_ADDARC )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   RectF rect = RectF(hb_parvnd( 2, 1 ), hb_parvnd( 2, 2 ), hb_parvnd( 2, 3 ), hb_parvnd( 2, 4 ));
   gp->AddArc( rect, (float) hb_parnd( 3 ), (float) hb_parnd( 4 ) );
   hb_ret();
}

HB_FUNC( GP_ADDBEZIER )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   PointF * pf1 = new PointF( (REAL) hb_parvnd( 2, 1 ), (REAL) hb_parvnd( 2, 2 ) );
   PointF * pf2 = new PointF( (REAL) hb_parvnd( 3, 1 ), (REAL) hb_parvnd( 3, 2 ) );
   PointF * pf3 = new PointF( (REAL) hb_parvnd( 4, 1 ), (REAL) hb_parvnd( 4, 2 ) );
   PointF * pf4 = new PointF( (REAL) hb_parvnd( 5, 1 ), (REAL) hb_parvnd( 5, 2 ) );

   gp->AddBezier( *pf1, *pf2, *pf3, *pf4 );

   delete (PointF*) pf1;
   delete (PointF*) pf2;
   delete (PointF*) pf3;
   delete (PointF*) pf4;

   hb_ret();
}

HB_FUNC( GP_ADDCLOSEDCURVE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
//   WORD wArray, wVertex, wItem = 0, wLen = 0;
//   POINT * pBuffer;
//   int * pItems;
//   int wPolygons = ( int ) hb_pcount() - 1;
//
//   pItems = ( int * ) hb_xgrab( ( wPolygons ) * sizeof( int ) );
//
//   for( wArray = 0; wArray < wPolygons; wArray++ )
//   {
//      pItems[ wArray ] = hb_parinfa( wArray + 2, 0 );
//      wLen += pItems[ wArray ];
//   }
//
//   pBuffer = ( POINT * ) hb_xgrab( wLen * sizeof( POINT ) );
//
//   for( wArray = 0; wArray < wPolygons; wArray++ )
//   {
//     for( wVertex = 0; wVertex < pItems[ wArray ]; wVertex++ )
//     {
//         PHB_ITEM pArray = hb_param( wArray + 2, HB_IT_ANY );
//         PHB_ITEM pSubArray = hb_itemNew( NULL );
//         hb_arrayGet( pArray, wVertex + 1, pSubArray );
//         pBuffer[ wItem   ].x = hb_arrayGetNL( pSubArray, 1 );
//         pBuffer[ wItem++ ].y = hb_arrayGetNL( pSubArray, 2 );
//         hb_itemRelease( pSubArray );
//     }
//   }
//
//   hb_retl( PolyPolygon( hDC, pBuffer, pItems, wPolygons ) );
//   hb_xfree( ( void * ) pBuffer );
//   hb_xfree( ( void * ) pItems );
     hb_ret();
}

HB_FUNC( GP_ADDELLIPSE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   gp->AddEllipse( hb_parni( 1 ), hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ));
   hb_ret();
}

HB_FUNC( GP_ADDLINE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   gp->AddLine( hb_parni( 1 ), hb_parni( 2 ), hb_parni( 3 ), hb_parni( 4 ));
   hb_ret();
}

HB_FUNC( GP_ADDRECTANGLE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   RectF rect = RectF(hb_parvnd( 2, 1 ), hb_parvnd( 2, 2 ), hb_parvnd( 2, 3 ), hb_parvnd( 2, 4 ));
   gp->AddRectangle( rect );
   hb_ret();
}

HB_FUNC( GP_ADDSTRING )
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

HB_FUNC( GP_STARTFIGURE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   gp->StartFigure();
   hb_ret();
}

HB_FUNC( GP_CLOSEFIGURE )
{
   GraphicsPath* gp = (GraphicsPath*) hb_parnl( 1 );
   gp->CloseFigure();
   hb_ret();
}


#pragma ENDDUMP



//   AddArc                       Sobrecargado. Agrega un arco el�ptico a la figura actual.
//   AddBezier                    Sobrecargado. Agrega una curva B�zier c�bica a la figura actual.
//   AddBeziers                   Sobrecargado. Agrega una secuencia de curvas B�zier c�bicas conectadas a la figura actual.
//   AddClosedCurve               Sobrecargado. Agrega una curva cerrada a este trazado. Se utiliza una curva spline cardinal porque la curva recorre todos los puntos de la matriz.
//   AddCurve                     Sobrecargado. Agrega una curva spline a la figura actual. Se utiliza una curva spline cardinal porque la curva recorre todos los puntos de la matriz.
//   AddEllipse                   Sobrecargado. Agrega una elipse al trazado actual.
//   AddLine                      Sobrecargado. Anexa un segmento de l�nea a este trazado GraphicsPath.
//   AddLines                     Sobrecargado. Anexa una serie de segmentos de l�nea conectados al final de este trazado GraphicsPath.
//   AddPath                      Anexa el trazado GraphicsPath especificado a este trazado.
//   AddPie                       Sobrecargado. Agrega el contorno de una forma circular a este trazado.
//   AddPolygon                   Sobrecargado. Agrega un pol�gono a este trazado.
//   AddRectangle                 Sobrecargado. Agrega un rect�ngulo a este trazado.
//   AddRectangles                Sobrecargado. Agrega una serie de rect�ngulos a este trazado.
//   AddString                    Sobrecargado. Agrega una cadena de texto a este trazado.
//   ClearMarkers                 Borra todos los marcadores de este trazado.
//   Clone                        Crea una copia exacta de este trazado.
//   CloseAllFigures              Cierra todas las figuras abiertas de este trazado e inicia una nueva figura. Cierra cada figura abierta conectando una l�nea desde su extremo hasta su punto inicial.
//   CloseFigure                  Cierra la figura actual e inicia una nueva figura. Si la figura actual contiene una secuencia de l�neas y curvas interconectadas, este m�todo cierra el bucle conectando una l�nea desde el extremo hasta el punto inicial.
//   CreateObjRef                 Crea un objeto que contiene toda la informaci�n relevante necesaria para generar un proxy utilizado para comunicarse con un objeto remoto. (Se hereda de MarshalByRefObject).
//   Dispose                      Libera todos los recursos utilizados por este trazado GraphicsPath.
//   Equals                       Sobrecargado. Determina si dos instancias de Object son iguales. (Se hereda de Object).
//   Flatten                      Sobrecargado. Convierte cada una de las curvas de este trazado en una secuencia de segmentos conectados.
//   GetBounds                    Sobrecargado. Devuelve un rect�ngulo que delimita este trazado GraphicsPath.
//   GetHashCode                  Sirve como funci�n hash para un tipo concreto. GetHashCode es apropiado para su utilizaci�n en algoritmos de hash y en estructuras de datos como las tablas hash. (Se hereda de Object).
//   GetLastPoint                 Obtiene el �ltimo punto de la matriz PathPoints de este trazado GraphicsPath.
//   GetLifetimeService           Recupera el objeto de servicio de duraci�n actual que controla la directiva de duraci�n de esta instancia. (Se hereda de MarshalByRefObject).
//   GetType                      Obtiene el objeto Type de la instancia actual. (Se hereda de Object).
//   InitializeLifetimeService    Obtiene un objeto de servicio de duraci�n para controlar la directiva de duraci�n de esta instancia. (Se hereda de MarshalByRefObject).
//   IsOutlineVisible             Sobrecargado. Indica si el punto especificado est� dentro del contorno de este trazado GraphicsPath cuando se dibuja con el Pen especificado.
//   IsVisible                    Sobrecargado. Indica si el punto especificado est� dentro de este trazado GraphicsPath.
//   ReferenceEquals              Determina si las instancias de Object especificadas son la misma instancia. (Se hereda de Object).
//   Reset                        Vac�a las matrices PathPoints y PathTypes y establece FillMode en Alternate.
//   Reverse                      Invierte el orden de los puntos en la matriz de PathPoints de este trazado GraphicsPath.
//   SetMarkers                   Establece un marcador en este trazado GraphicsPath.
//   StartFigure                  Inicia una nueva figura sin cerrar la actual. Todos los puntos siguientes agregados al trazado se incorporan a esta nueva figura.
//   ToString                     Devuelve una clase String que representa la clase Object actual. (Se hereda de Object).
//   Transform                    Aplica una matriz de transformaci�n a este trazado GraphicsPath.
//   Warp                         Sobrecargado. Aplica una transformaci�n de alabeo, definida por un rect�ngulo y un paralelogramo, a este trazado GraphicsPath.
//   Widen                        Sobrecargado. Reemplaza este trazado con curvas que rodean el �rea que est� rellena cuando ese trazado se dibuja con el l�piz especificado.




