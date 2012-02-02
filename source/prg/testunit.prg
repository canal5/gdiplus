#include "fivewin.ch"

CLASS TTestUnit

      METHOD New() CONSTRUCTOR
      METHOD End()

      METHOD Assert( cProcName, cProcLine, cValue,  bAction )
      METHOD Show()
      METHOD OnError( oError )

ENDCLASS


************************************************************************
  METHOD New() CLASS TTestUnit
************************************************************************

   if file( "result.dbf" )
      delete file result.dbf
   endif

   dbCreate( "result.dbf", { {"TEST"     , "C", 100, 0 },;
                             {"DATE"     , "D",   8, 0 },;
                             {"TIME"     , "C",  15, 0 },;
                             {"RESULTADO", "C",   5, 0 },;
                             {"DESCRIP"  , "C",  60, 0 },;
                             {"ERRORCODE", "C",   5, 0 } } )
   USE result ALIAS result

return self

************************************************************************
  METHOD Show() CLASS TTestUnit
************************************************************************
local aColSizes := { 150, 60, 60, 60, 160, 50 }

select result
result->(DbGoTop())


 zBrowse( "Sumario de errores", , , , , , , aColSizes, {|| if( result->resultado == "fault", CLR_HRED, 0 )}, {|| if( result->resultado == "fault", CLR_YELLOW, CLR_WHITE )} )


return nil

************************************************************************
  METHOD End() CLASS TTestUnit
************************************************************************


return nil


************************************************************************
  METHOD Assert( cProcname, cProcline, cValue, bAction ) CLASS TTestUnit
************************************************************************

Local oValor
Local bErr := ErrorBlock( { |oError| ::OnError( oError ) } )

BEGIN SEQUENCE

result->(DbAppend())

result->Test = cValue
result->Date = DATE()
result->Time = TIME()

if eval( bAction )
   result->Resultado := "OK"
else
   result->Resultado := "fault"
endif



RECOVER USING oValor

  ErrorBlock( bErr )

END SEQUENCE


return nil

************************************************************************
  METHOD OnError( oError ) CLASS TTestUnit
************************************************************************



      result->Resultado := "fault"
      result->Descrip := oError:Description
      result->Errorcode := str(oError:genCode )

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

   local oDlg, oLbx, oFont
   local btnNew, btnModify, btnDelete, btnSearch, btnList, btnEnd
   local n

   DEFAULT cTitle  := "Browse", cListName := "Fields"

   DEFINE DIALOG oDlg FROM 3, 3 TO 26, 79 TITLE cTitle FONT oFont

   @ 0.1, 1.4 SAY cListName  OF oDlg

   @ 1, 1 LISTBOX oLbx FIELDS ;
      SIZE 284, 137  OF oDlg

   oLbx:aActions   = Array( ( Alias() )->( FCount() ) )
   oLbx:nClrText = nClrText
   oLbx:nClrForeFocus = nClrForeFocus

   if aColSizes != nil
      oLbx:aColSizes = aColSizes
   endif

   for n = 1 to Len( oLbx:aActions )
      oLbx:aActions[ n ] = { || MsgInfo( "Column action" ) }
   next

   @ 8.7, 41.9 BUTTON btnEnd    PROMPT "&Salir"    OF oDlg SIZE 40, 12


   btnEnd:bAction    = { || oDlg:End() }

   ACTIVATE DIALOG oDlg CENTERED

return nil

