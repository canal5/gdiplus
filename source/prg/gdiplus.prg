#include "fivewin.ch"

static oWnd
static nPaint := 1

function main()

local oIcon
local oMenu

MENU oMenu
   MENUITEM "Línea"         ACTION ( nPaint := 1, oWnd:Refresh() )
   MENUITEM "Rectangle"     ACTION ( nPaint := 2, oWnd:Refresh() )
   MENUITEM "FillRectangle" ACTION ( nPaint := 3, oWnd:Refresh() )
ENDMENU

DEFINE ICON oIcon NAME 1

gdiplusstartup()

DEFINE WINDOW oWnd TITLE "Test GdiPlus" MENU oMenu



ACTIVATE WINDOW oWnd ON PAINT Pinta( hDC ) MAXIMIZED

GdiplusShutdown()

return nil


function pinta( hDC )
do case
   case nPaint == 1
        Pinta1( hDC )
   case nPaint == 2
        Pinta2( hDC )
   case nPaint == 3
        Pinta3( hDC )
   case nPaint == 4
   case nPaint == 5
   case nPaint == 6
   case nPaint == 7
   case nPaint == 8
   case nPaint == 9
endcase



return 0


function pinta0( hDC )

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
local oFont   := Font( "Segoe UI", 30 )
local oPen1   := Pen( oColor, 1 )
local oPen2   := Pen( oColor, 2 )
local oPen3   := Pen( oColor, 3 )
local oBrush1 := SolidBrush( oColor )
g:SetSmoothingMode()
g:SetPen( oPen1 )
g:DrawLine( 10, 10, 300, 300 )

g:SetPen( oPen2 )
g:DrawRectangle( {50, 50, 200, 300} )

return 0

****************************************************************************
  function pinta1( hDC )
****************************************************************************

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
local oPen1   := Pen( oColor, 1 )

g:SetSmoothingMode()
g:SetPen( oPen1 )

g:DrawLine( 10, 10, 300, 300 )

return 0

****************************************************************************
  function pinta2( hDC )
****************************************************************************

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
local oPen1   := Pen( oColor, 1 )
local oPen2   := Pen( oColor, 2 )

g:SetSmoothingMode()
g:SetPen( oPen1 )
g:DrawRectangle( {50, 50, 200, 300} )

g:DrawRectangle( {150, 150, 100, 300}, oPen2 )


return 0

****************************************************************************
  function pinta3( hDC )
****************************************************************************

local g      := Graphics( hDC )
local oColor := Color( 255, 0, 0, 0 )
local oPen   := Pen( oColor, 1 )
local oBrush := SolidBrush( Color( 200, 255, 0, 0 ) )

g:SetSmoothingMode()

g:SetPen( oPen )
g:SetBrush( oBrush )

g:DrawLine( 10, 10, 300, 300 )
g:FillRectangle( {50, 50, 200, 300} )

return 0

/*
****************************************************************************
  function pinta0( hDC )
****************************************************************************

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
local oFont   := Font( "Segoe UI", 30 )
local oPen1   := Pen( oColor, 1 )
local oPen2   := Pen( oColor, 2 )
local oPen3   := Pen( oColor, 3 )
local oBrush1 := SolidBrush( oColor )
g:SetSmoothingMode()
g:SetPen( oPen1 )
g:DrawLine( 10, 10, 300, 300 )

g:SetPen( oPen2 )
g:DrawRectangle( {50, 50, 200, 300} )

return 0
*/
