#include "fivewin.ch"

function CustomLineCap()
return GPCustomLineCap():New()

CLASS GPCustomLineCap

   DATA handle

   METHOD New() CONSTRUCTOR

   METHOD Clone()
   METHOD GetBaseCap()
   METHOD GetBaseInset()
   METHOD GetLastStatus()
   METHOD GetStrokeCaps()
   METHOD GetStrokeJoin()
   METHOD GetWidthScale()
   METHOD SetBaseCap()
   METHOD SetBaseInset()
   METHOD SetStrokeCap()
   METHOD SetStrokeCaps()
   METHOD SetStrokeJoin()
   METHOD SetWidthScale()

   METHOD Destroy()
   DESTRUCTOR Destroy()

ENDCLASS

//CustomLineCap(
//  [in]  const GraphicsPath *fillPath,
//  [in]  const GraphicsPath *strokePath,
//  [in]  LineCap baseCap,
//  [in]  REAL baseInset
//);
*******************************************************************************************
  METHOD New() CLASS GPCustomLineCap
*******************************************************************************************

return self


*******************************************************************************************
   METHOD Clone() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetBaseCap() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetBaseInset() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetLastStatus() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetStrokeCaps() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetStrokeJoin() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD GetWidthScale() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetBaseCap() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetBaseInset() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetStrokeCap() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetStrokeCaps() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetStrokeJoin() CLASS GPCustomLineCap
*******************************************************************************************

return 0

*******************************************************************************************
   METHOD SetWidthScale() CLASS GPCustomLineCap
*******************************************************************************************

return 0


*********************************************************************************************************
  METHOD Destroy() CLASS GPCustomLineCap
*********************************************************************************************************

return nil

// CustomLineCap::Clone           The CustomLineCap::Clone method copies the contents of the existing object into a new CustomLineCap object.
// CustomLineCap::GetBaseCap      The CustomLineCap::GetBaseCap method gets the style of the base cap. The base cap is a LineCap object used as a cap at the end of a line along with this CustomLineCap object.
// CustomLineCap::GetBaseInset    The CustomLineCap::GetBaseInset method gets the distance between the base cap to the start of the line.
// CustomLineCap::GetLastStatus   The CustomLineCap::GetLastStatus method returns a value that indicates the nature of this CustomLineCap object's most recent method failure.
// CustomLineCap::GetStrokeCaps   The CustomLineCap::GetStrokeCaps method gets the end cap styles for both the start line cap and the end line cap. Line caps are LineCap objects that end the individual lines within a path.
// CustomLineCap::GetStrokeJoin   The CustomLineCap::GetStrokeJoin method returns the style of LineJoin used to join multiple lines in the same GraphicsPath object.
// CustomLineCap::GetWidthScale   The CustomLineCap::GetWidthScale method gets the value of the scale width. This is the amount to scale the custom line cap relative to the width of the Pen object used to draw a line. The default value of 1.0 does not scale the line cap.
// CustomLineCap::SetBaseCap      The CustomLineCap::SetBaseCap method sets the LineCap that appears as part of this CustomLineCap at the end of a line.
// CustomLineCap::SetBaseInset    The CustomLineCap::SetBaseInset method sets the base inset value of this custom line cap. This is the distance between the end of a line and the base cap.
// CustomLineCap::SetStrokeCap    The CustomLineCap::SetStrokeCap method sets the LineCap object used to start and end lines within the GraphicsPath object that defines this CustomLineCap object.
// CustomLineCap::SetStrokeCaps   The CustomLineCap::SetStrokeCaps method sets the LineCap objects used to start and end lines within the GraphicsPath object that defines this CustomLineCap object.
// CustomLineCap::SetStrokeJoin   The CustomLineCap::SetStrokeJoin method sets the style of line join for the stroke. The line join specifies how two lines that intersect within the GraphicsPath object that makes up the custom line cap are joined.
// CustomLineCap::SetWidthScale   The CustomLineCap::SetWidthScale method sets the value of the scale width. This is the amount to scale the custom line cap relative to the width of the Pen used to draw lines. The default value of 1.0 does not scale the line cap.






#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;







#pragma ENDDUMP


