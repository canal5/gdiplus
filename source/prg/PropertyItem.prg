#include "fivewin.ch"


function PropertyItem()

return GPPropertyItem():New()


CLASS GPPropertyItem

  DATA handle
  DATA id
  DATA length
  DATA type
  DATA value

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPPropertyItem
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPPropertyItem()
  elseif iParams == 1
     ::handle := _GPPropertyItem( p1 )                               //
  elseif iParams == 3
     ::handle := _GPPropertyItem( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPPropertyItem( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPPropertyItem( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPPropertyItem( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPPropertyItem( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPropertyItem
*********************************************************************************************************

  ::handle := nil

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPPropertyItem
//*********************************************************************************************************
//
//return GPPropertyItem(::handle)


//Data Members
//
//The following table lists the members exposed by the PropertyItem object.
//
//Data Members    Type    Description
//id              PROPID  Integer that identifies the kind of metadata stored in this PropertyItem object. Constants that identify various kinds of metadata (PropertyTagEquipMake, PropertyTagEquipModel, and the like) are defined in Gdiplusimaging.h. The PROPID data type is defined in Wtypes.h.
//length          ULONG   Size, in bytes, of the value array.
//type            WORD    Integer that identifies the data type of the values in the value array. Constants that identify various data types (PropertyTagTypeByte, PropertyTagTypeASCII, and the like) are defined in Gdiplusimaging.h.
//value           VOID *  Pointer to an array of values. Each value in the array has the data type specified by the type data member.














#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPPROPERTYITEM )
{
   //PropertyItem* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new PropertyItem();
   //else if (iParams == 1 )
   //    ptr = new PropertyItem( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new PropertyItem( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new PropertyItem( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEPROPERTYITEM )
{
   //PropertyItem* clr = (PropertyItem*) hb_parptr( 1 );
   //delete (PropertyItem*) clr;
   //hb_ret();
}

//HB_FUNC( GPPROPERTYITEM... )
//{
//   PropertyItem* ptr = (PropertyItem*) hb_parptr( 1 );
//}

#pragma ENDDUMP




