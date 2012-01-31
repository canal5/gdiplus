#include "fivewin.ch"

function HueSaturationLighness()
return GPHueSaturationLighness():New()

CLASS GPHueSaturationLighness

   DATA handle

   METHOD New() CONSTRUCTOR

   METHOD GetParameters()
   METHOD SetParameters()

   METHOD Destroy()
   DESTRUCTOR Destroy()

ENDCLASS

*******************************************************************************************
  METHOD New() CLASS GPHueSaturationLighness
*******************************************************************************************

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPHueSaturationLighness
*********************************************************************************************************

return nil

*********************************************************************************************************
   METHOD GetParameters() CLASS GPHueSaturationLighness
*********************************************************************************************************

return 0

*********************************************************************************************************
   METHOD SetParameters() CLASS GPHueSaturationLighness
*********************************************************************************************************

return 0


// Method	                                Description

// HueSaturationLightness::GetParameters	The HueSaturationLightness::GetParameters method gets the current values of the parameters of this HueSaturationLightness object.
// HueSaturationLightness::SetParameters	The HueSaturationLightness::SetParameters method sets the parameters of this HueSaturationLightness object.


#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;







#pragma ENDDUMP

