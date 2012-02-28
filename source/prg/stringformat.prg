#include "fivewin.ch"

function StringFormat( ... )
   local aParams := hb_aparams()
   local oFont
   local nLen := Len( aParams )
   

   switch nLen
      case 0
         oFont = GPStringFormat():New()
         exit
      case 1
         oFont = GPStringFormat():New( aParams[ 1 ] )
         exit         
      case 2
         oFont = GPStringFormat():New( aParams[ 1 ], aParams[ 2 ] )
         exit
   endswitch

return oFont

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
  METHOD New( ... ) CLASS GPStringFormat
*******************************************************************************************
local iParams := PCount()
local handle 
local aParams := hb_aparams()

   switch iParams
      case 0
         handle = _GPStringFormat()
         exit
      case 1
         if( valType( aParams[ 1 ] ) == "O" )
            handle = _GPStringFormat( aParams[ 1 ]:handle )
         else 
            handle = _GPStringFormat( aParams[ 1 ] )
         endif
         exit
      case 2
         handle = _GPStringFormat( aParams[ 1 ], aParams[ 2 ] )
        exit
   endswitch
   
   ::handle = handle
  
return self

*******************************************************************************************
  METHOD Destroy() CLASS GPStringFormat
*******************************************************************************************
   
   ::handle = NIL

return self


*******************************************************************************************
  METHOD Clone() CLASS GPStringFormat
*******************************************************************************************

return GPStringFormatClone( ::handle )

*******************************************************************************************
  METHOD GenericDefault() CLASS GPStringFormat
*******************************************************************************************

return GPStringFormatGenericDefault( ::handle )

*******************************************************************************************
  METHOD GenericTypographic() CLASS GPStringFormat
*******************************************************************************************
return GPStringFormatGenericTypographic( ::handle )

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
  METHOD SetAlignment( n ) CLASS GPStringFormat
*******************************************************************************************

return GPStringFormatSetAlignment( ::handle, n )

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
#include <gc.h>

HB_FUNC( _GPSTRINGFORMAT )
{
   StringFormat * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_STRINGFORMAT );
   int iParams = hb_pcount();
   BOOL lOk = true;   
   
   switch( iParams ){
      case 0:
         o = new StringFormat();
         break;
      case 1:{         
         if( HB_ISPOINTER( 1 ) ){         	  
            GDIPLUS * pSF = hb_GDIPLUS_par( 1 );
               if( GP_IS_STRINGFORMAT( pSF ) ) {
               StringFormat * sf = ( StringFormat * ) GP_GET( pSF );
               o = new StringFormat( sf );      
            }else 
               lOk = false;
         }else if( HB_ISNUM( 1 ) )
            o = new StringFormat( hb_parni( 1 ) );
         else
            lOk = false;
      }
         break;
      case 2:
         o = new StringFormat( hb_parni( 1 ), hb_parnl( 2 ) );
         break;
   }
   
   if( lOk )
   {
      GP_SET( pObj, ( void * ) o );
      hb_GDIPLUS_ret( pObj ); 
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( GPSTRINGFORMATCLONE ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_STRINGFORMAT( pObj ) )
   {
      StringFormat * o = ( StringFormat * ) GP_GET( pObj );
      StringFormat * oClone;
      PHB_ITEM pClone;
      oClone = o->Clone();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_STRINGFORMAT );
      hb_itemReturnRelease( pClone );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}


HB_FUNC( GPSTRINGFORMATSETALIGNMENT ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_STRINGFORMAT( pObj ) )
   {  
      StringFormat * o = ( StringFormat * ) GP_GET( pObj );
      sta = o->SetAlignment( ( StringAlignment ) hb_parni( 2 ) );
      hb_retni( ( Status ) sta );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}


HB_FUNC( GPSTRINGFORMATGENERICDEFAULT ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_STRINGFORMAT( pObj ) )
   {  
   	  int style;
      StringFormat * o = ( StringFormat * ) GP_GET( pObj );
      StringFormat * oClone;
      PHB_ITEM pClone;
      oClone = ( StringFormat *) o->GenericDefault();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_STRINGFORMAT );
      hb_itemReturnRelease( pClone );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}


HB_FUNC( GPSTRINGFORMATGENERICTYPOGRAPHIC ){
  
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_STRINGFORMAT( pObj ) )
   {  
   	  int style;
      StringFormat * o = ( StringFormat * ) GP_GET( pObj );
      StringFormat * oClone;
      PHB_ITEM pClone;
      oClone = ( StringFormat *) o->GenericTypographic();
      pClone = GPNewGDIPLUSObject( oClone, GP_IT_STRINGFORMAT );
      hb_itemReturnRelease( pClone );
   }else 
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ); 
  
}

#pragma ENDDUMP

