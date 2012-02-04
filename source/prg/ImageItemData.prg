#include "fivewin.ch"


function ImageItemData()

return GPImageItemData():New()


CLASS GPImageItemData

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPImageItemData
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := _GPImageItemData()
  elseif iParams == 1
     ::handle := _GPImageItemData( p1 )                               //
  elseif iParams == 3
     ::handle := _GPImageItemData( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := _GPImageItemData( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := _GPImageItemData( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := _GPImageItemData( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := _GPImageItemData( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPImageItemData
*********************************************************************************************************

  if !empty(::handle)
     DeleteImageItemData( ::handle )
  endif

return nil

//*********************************************************************************************************
//  METHOD () CLASS GPImageItemData
//*********************************************************************************************************
//
//return GPImageItemData(::handle)


//Data Members
//
//The following table lists the members exposed by the ImageItemData object.
//
//Data Members    Type    Description
//Size            UINT    Integer that specifies the size of an ImageItemData object. Set to sizeof(ImageItemData).
//Position        UINT    Element of the ItemDataPosition enumeration that specifies the location in an image file that a piece of custom metadata should be stored.
//Desc            VOID *  A sequence of bytes that you create to identify a piece of custom metadata. For JPEG files, the description is one byte. For PNG files, the description is four bytes. For GIF files, the description is eleven bytes.
//DescSize        UINT    Integer that specifies the size, in bytes, of the identifier pointed to by Desc. Set to 1 for JPEG, 4 for PNG, and 11 for GIF.
//Data            UINT *  Pointer to a buffer that contains the metadata.
//DataSize        UINT    Integer that specifies the size, in bytes, of the buffer pointed to by Data.
//Cookie          UINT    Used internally by GDI+.



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( _GPIMAGEITEMDATA )
{
   //ImageItemData* ptr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    ptr = new ImageItemData();
   //else if (iParams == 1 )
   //    ptr = new ImageItemData( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    ptr = new ImageItemData( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    ptr = new ImageItemData( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*) ptr );
}

HB_FUNC( DELETEIMAGEITEMDATA )
{
   //ImageItemData* clr = (ImageItemData*) hb_parptr( 1 );
   //delete (ImageItemData*) clr;
   //hb_ret();
}

//HB_FUNC( GPIMAGEITEMDATA... )
//{
//   ImageItemData* ptr = (ImageItemData*) hb_parptr( 1 );
//}

#pragma ENDDUMP




