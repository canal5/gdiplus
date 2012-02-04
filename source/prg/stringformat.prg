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

local iParams := PCount()


  if iParams == 0
     ::handle := _GPStringFormat()
  elseif iParams == 1
     ::handle := _GPStringFormat( p1 )                               //
  elseif iParams == 3
     ::handle := _GPStringFormat( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPStringFormat( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPStringFormat( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPStringFormat( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPStringFormat( p1, p2, p3, p4, p5, p6, p7 )       //
  endif


return self

*******************************************************************************************
  METHOD Destroy() CLASS GPStringFormat
*******************************************************************************************

if !empty(::Handle )

endif

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



//Constructors
//
//The StringFormat class has the following constructors.
//
//Constructor                                           Description
//StringFormat::StringFormat(INT,LANGID)                Creates a StringFormat object based on string format flags and a language.
//StringFormat::StringFormat(StringFormat*)             Creates a StringFormat object from another StringFormat object.
//
//
//Methods
//
//The StringFormat class has the following methods.
//
//Method                                                Description
//StringFormat::Clone                                   The StringFormat::Clone method creates a new StringFormat object and initializes it with the contents of this StringFormat object.
//StringFormat::GenericDefault                          The StringFormat::GenericDefault method creates a generic, default StringFormat object.
//StringFormat::GenericTypographic                      The StringFormat::GenericTypographic method creates a generic, typographic StringFormat object.
//StringFormat::GetAlignment                            The StringFormat::GetAlignment method gets an element of the StringAlignment enumeration that indicates the character alignment of this StringFormat object in relation to the origin of the layout rectangle. A layout rectangle is used to position the displayed string.
//StringFormat::GetDigitSubstitutionLanguage            The StringFormat::GetDigitSubstitutionLanguage method gets the language that corresponds with the digits that are to be substituted for Western European digits.
//StringFormat::GetDigitSubstitutionMethod              The StringFormat::GetDigitSubstitutionMethod method gets an element of the StringDigitSubstitute enumeration that indicates the digit substitution method that is used by this StringFormat object.
//StringFormat::GetFormatFlags                          The StringFormat::GetFormatFlags method gets the string format flags for this StringFormat object.
//StringFormat::GetHotkeyPrefix                         The StringFormat::GetHotkeyPrefix method gets an element of the HotkeyPrefix enumeration that indicates the type of processing that is performed on a string when a hot key prefix, an ampersand (&), is encountered.
//StringFormat::GetLastStatus                           The StringFormat::GetLastStatus method returns a value that indicates the nature of this StringFormat object's most recent method failure.
//StringFormat::GetLineAlignment                        The StringFormat::GetLineAlignment method gets an element of the StringAlignment enumeration that indicates the line alignment of this StringFormat object in relation to the origin of the layout rectangle. The line alignment setting specifies how to align the string vertically in the layout rectangle. The layout rectangle is used to position the displayed string.
//StringFormat::GetMeasurableCharacterRangeCount        The StringFormat::GetMeasurableCharacterRangeCount method gets the number of measurable character ranges that are currently set. The character ranges that are set can be measured in a string by using the Graphics::MeasureCharacterRanges method.
//StringFormat::GetTabStopCount                         The StringFormat::GetTabStopCount method gets the number of tab-stop offsets in this StringFormat object.
//StringFormat::GetTabStops                             The StringFormat::GetTabStops method gets the offsets of the tab stops in this StringFormat object.
//StringFormat::GetTrimming                             The StringFormat::GetTrimming method gets an element of the StringTrimming enumeration that indicates the trimming style of this StringFormat object. The trimming style determines how to trim characters from a string that is too large to fit in the layout rectangle.
//StringFormat::SetAlignment                            The StringFormat::SetAlignment method sets the character alignment of this StringFormat object in relation to the origin of the layout rectangle. A layout rectangle is used to position the displayed string.
//StringFormat::SetDigitSubstitution                    The StringFormat::SetDigitSubstitution method sets the digit substitution method and the language that corresponds to the digit substitutes.
//StringFormat::SetFormatFlags                          The StringFormat::SetFormatFlags method sets the format flags for this StringFormat object. The format flags determine most of the characteristics of a StringFormat object.
//StringFormat::SetHotkeyPrefix                         The StringFormat::SetHotkeyPrefix method sets the type of processing that is performed on a string when the hot key prefix, an ampersand (&), is encountered. The ampersand is called the hot key prefix and can be used to designate certain keys as hot keys.
//StringFormat::SetLineAlignment                        The StringFormat::SetLineAlignment method sets the line alignment of this StringFormat object in relation to the origin of the layout rectangle. The line alignment setting specifies how to align the string vertically in the layout rectangle. The layout rectangle is used to position the displayed string.
//StringFormat::SetMeasurableCharacterRanges            The StringFormat::SetMeasurableCharacterRanges method sets a series of character ranges for this StringFormat object that, when in a string, can be measured by the Graphics::MeasureCharacterRanges method.
//StringFormat::SetTabStops                             The StringFormat::SetTabStops method sets the offsets for tab stops in this StringFormat object.
//StringFormat::SetTrimming                             The StringFormat::SetTrimming method sets the trimming style for this StringFormat object. The trimming style determines how to trim a string so that it fits into the layout rectangle.







#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>


using namespace Gdiplus;

HB_FUNC( _GPSTRINGFORMAT )
{
   //StringFormat* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new StringFormat();
   //else if (iParams == 1 )
   //    ptr = new StringFormat( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new StringFormat( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new StringFormat( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETESTRINGFORMAT )
{
   //StringFormat* clr = (StringFormat*) hb_parptr( 1 );
   //delete (StringFormat*) clr;
   //hb_ret();
}

//HB_FUNC( GPSTRINGFORMAT... )
//{
//   StringFormat* ptr = (StringFormat*) hb_parptr( 1 );
//}






#pragma ENDDUMP

