#include "fivewin.ch"
#include "xbrowse.ch"

static oSelf

CLASS TTestUnit
      
      DATA oWnd
      DATA bRun
      DATA aDisplay
      DATA cDescription
      DATA cSeparator


      METHOD New() CONSTRUCTOR
      METHOD End()

      METHOD Assert( cProcName, cProcLine, cValue,  bAction, cDescription, bDisplay )
      METHOD Show()
      METHOD OnError( oError )
      METHOD Separator( cHeader )


ENDCLASS


************************************************************************
  METHOD New() CLASS TTestUnit
************************************************************************

   if file( "result.dbf" )
      delete file result.dbf
   endif

   dbCreate( "result.dbf", { {"RESULTADO", "N",   3, 0 },;
                             {"DESCRIP"  , "C", 160, 0 },;
                             {"TEST"     , "C", 100, 0 },;
                             {"ERRORCODE", "C", 100, 0 },;
                             {"DATE"     , "D",   8, 0 },;
                             {"TIME"     , "C",  15, 0 },;
                             {"PROCNAME" , "C", 100, 0 },;
                             {"PROCLINE" , "C",  10, 0 } } )
   USE result ALIAS result
   ::aDisplay = {}
   oSelf = self

return self

************************************************************************
  METHOD Show() CLASS TTestUnit
************************************************************************
local aColSizes := { 70, 280, 260, 280, 60, 60 }

select result
result->(DbGoTop())


 zBrowse( "Sumario de errores", , , , , , , aColSizes, {|| if( result->resultado == 2, CLR_HRED, 0 )}, {|| if( result->resultado == 2, CLR_YELLOW,  CLR_WHITE  )} )


return nil

************************************************************************
  METHOD End() CLASS TTestUnit
************************************************************************


return nil


*****************************************************************************************
  METHOD Separator( cDescription ) CLASS TTestUnit
*****************************************************************************************

DEFAULT cDescription := ""

result->(DbAppend())
result->descrip := left(cDescription, 160)
AAdd( ::aDisplay, NIL )
::cSeparator = cDescription

return 0

*****************************************************************************************
  METHOD Assert( cProcname, cProcline, cValue, bAction, cDescription, bDisplay ) CLASS TTestUnit
*****************************************************************************************

Local oValor
Local bErr := ErrorBlock( { |oError| ::OnError( oError ) } )

DEFAULT cDescription := ""

BEGIN SEQUENCE

result->(DbAppend())

result->Test    = cValue
result->Date    = DATE()
result->Time    = TIME()
result->descrip = left(cDescription,160)
result->procname = left(Procname(1),100)
result->procline = left(str(procline(1)),10)

::cDescription = cDescription

if eval( bAction )
   result->Resultado := 1
   if hb_IsBlock( bDisplay )
      AAdd( ::aDisplay, bDisplay )
   else
      AAdd( ::aDisplay, NIL )
   endif
else
   result->Resultado := 2
   if hb_IsBlock( bDisplay )
      AAdd( ::aDisplay, {| | MsgInfo( "No se puede ejecutar" + CRLF + "Se genero un error" ) } )
   else
      AAdd( ::aDisplay, NIL )
   endif
endif



RECOVER USING oValor

  ErrorBlock( bErr )

END SEQUENCE


return nil

************************************************************************
  METHOD OnError( oError ) CLASS TTestUnit
************************************************************************

      result->Resultado := 2
      result->Errorcode := oError:Description

      if oError:severity > 1
         Break( oError )
      endif

RETURN NIL

function ThisTest( oTest )

   static oTesteo

   if pcount() > 0
      oTesteo = oTest
   endif

return oTesteo

function zBrowse( cTitle, cListName, bNew, bModify, bDelete, bSearch, bList,;
                 aColSizes, nClrText, nClrForeFocus )

   local oWnd, oLbx, oFont, oBar
   local btnNew, btnModify, btnDelete, btnSearch, btnList, btnEnd
   local n
   local oIcon

   DEFAULT cTitle  := "Browse", cListName := "Fields"

   DEFINE ICON oIcon NAME 1

   DEFINE WINDOW oWnd FROM 1, 1 TO 700, 900 PIXEL TITLE cTitle ICON oIcon

   DEFINE FONT oFont NAME "Tahoma" SIZE 0,-12

   @ 10,10 XBROWSE oBrw SIZE -10,-10 PIXEL OF oWnd ;
      FONT oFont ;
      ALIAS "RESULT" CELL LINES NOBORDER ;
      FIELDS                  "", "",;
                              result->RESULTADO,;
                              result->Descrip   ,;
                              result->test      ,;
                              result->errorcode ,;
                              dtoc(result->date),;
                              result->time      ,;
                              result->procname  ,;
                              result->procline  ;
      HEADERS "", "Sample", "Resultado", "Descripción", "Test", "Errorcode", "Fecha", "Hora", "Procname", "Procline" ;
      FIELDSIZES 25, 18, 48, 280, 260, 280, 60, 60, 150, 70  ;






   WITH OBJECT oBrw
      :bClrSel       := { || { CLR_WHITE, CLR_GRAY } }
      :nStretchCol   := STRETCHCOL_LAST
      :bLDblClick    := { | nRow, nCol, nKeyFlags, o | If( oSelf:aDisplay[ o:KeyNo() ] != NIL, Eval( oSelf:aDisplay[ o:KeyNo() ], oSelf ), NIL ) }
      :nMarqueeStyle := 4
      :nRowHeight    := 20
      :nColDividerStyle := 0
      :nRowDividerStyle := 0
      :CreateFromCode()
   END


   oBrw:aCols[ 1 ]:AddBitmap("LED1")
   oBrw:aCols[ 1 ]:AddBitmap("LED2")
   oBrw:aCols[ 1 ]:AddBitmap("NOLED")
   oBrw:aCols[ 1 ]:bBmpData   := { || If( result->RESULTADO==1, 1, If( result->RESULTADO==2,2,3) ) }

   oBrw:aCols[ 2 ]:AddBitmap(".\bitmaps\checked.bmp")
   oBrw:aCols[ 2 ]:bBmpData   := { || If( oSelf:aDisplay[ oBrw:KeyNo() ] != NIL, 1, 0 ) }


   oSelf:oWnd = oWnd

   ACTIVATE WINDOW oWnd MAXIMIZED

//DEFINE WINDOW oWnd FROM 1, 1 TO 700, 900 PIXEL TITLE cTitle
//
//   DEFINE BUTTONBAR oBar OF oBar 2007
//
//   @ 1, 1 LISTBOX oLbx FIELDS aHBitmaps[ if( result->RESULTADO == 0, 5, result->RESULTADO ) ],;
//                              result->Descrip   ,;
//                              result->test      ,;
//                              result->errorcode ,;
//                              dtoc(result->date),;
//                              result->time      ,;
//                              result->procname  ,;
//                              result->procline  ;
//          FIELDSIZES 14, 280, 260, 280, 60, 60, 150, 70  ;
//      SIZE 284, 137  OF oWnd
//
//   oLbx:aActions   = Array( ( Alias() )->( FCount() ) )
//   oLbx:nClrText = nClrText
//   oLbx:nClrForeFocus = nClrForeFocus
//
////   if aColSizes != nil
////      oLbx:aColSizes = aColSizes
////   endif
////
////   for n = 1 to Len( oLbx:aActions )
////      oLbx:aActions[ n ] = { || MsgInfo( "Column action" ) }
////   next
//
//   oWnd:oClient := oLbx
//
//   ACTIVATE WINDOW oWnd MAXIMIZED

   AEval( aHBitmaps, { | hBmp | DeleteObject( hBmp ) } )

return nil

