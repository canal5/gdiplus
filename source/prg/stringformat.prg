#include "fivewin.ch"

function StringFormat(ff, idlang)
return GPStringFormat():New(ff, idlang)

CLASS GPStringFormat

   DATA handle


   METHOD New(ff, idlang) CONSTRUCTOR

   METHOD Clone()
   METHOD GenericDefault()
   METHOD GenericTypographic()
   METHOD GetAlignment()
   METHOD GetDigitSubstitutionLanguage()
   METHOD GetDigitSubstitutionMethod()
   METHOD GetFormatFlags()
   METHOD GetHotkeyPrefix()
   METHOD GetLastStatus()
   METHOD GetLineAlignment()
   METHOD GetMeasurableCharacterRangeCount()
   METHOD GetTabStopCount()
   METHOD GetTabStops()
   METHOD GetTrimming()
   METHOD SetAlignment()
   METHOD SetDigitSubstitution()
   METHOD SetFormatFlags()
   METHOD SetHotkeyPrefix()
   METHOD SetLineAlignment()
   METHOD SetMeasurableCharacterRanges()
   METHOD SetTabStops()
   METHOD SetTrimming()

   METHOD Destroy()
   DESTRUCTOR Destroy            ( )

ENDCLASS

*******************************************************************************************
  METHOD New(ff, idlang) CLASS GPStringFormat
*******************************************************************************************

return self

*******************************************************************************************
  METHOD Clone() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GenericDefault() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GenericTypographic() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetAlignment() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetDigitSubstitutionLanguage() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetDigitSubstitutionMethod() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetFormatFlags() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetHotkeyPrefix() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetLastStatus() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetLineAlignment() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetMeasurableCharacterRangeCount() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetTabStopCount() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetTabStops() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD GetTrimming() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetAlignment() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetDigitSubstitution() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetFormatFlags() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetHotkeyPrefix() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetLineAlignment() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetMeasurableCharacterRanges() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetTabStops() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD SetTrimming() CLASS GPStringFormat
*******************************************************************************************
return self

*******************************************************************************************
  METHOD Destroy() CLASS GPStringFormat
*******************************************************************************************
return self


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;







#pragma ENDDUMP

