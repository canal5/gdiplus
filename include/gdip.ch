// Este fichero lo he copiado de algun lado pero no soy capaz de recordar de donde
// si alguien sabe que lo diga y si no le gusta que lo copie, lo borro.
// Pero seg�n est� me parece util�simo. Yo no le he quitado ninguna cabecera
// que pone que tenga copyright.


#xcommand PEN                 <oPen>   ( <oColor>[, <n> ] )                                           => <oPen>    := Pen                ( <oColor>[, <n> ] )
#xcommand RECTF               <oRectF> ( [<nX>[, <nY> [, <nWidth>, <nHeight> ] ] ] )                  => <oRectF>  := RectF              ( [ <nX> ] [, <nY> ] [, <nWidth> ] [, <nHeight> ] )
#xcommand RECT                <oRect>  ( [<nX>[, <nY> [, <nWidth>, <nHeight> ] ] ] )                  => <oRect>   := Rect               ( [ <nX> ] [, <nY> ] [, <nWidth> ] [, <nHeight> ] )
#xcommand POINTF              <oPointF>( [ <par1>[, <par2> ] ] )                                      => <oPointF> := PointF             ( [ <par1> ] [, <par2> ] )
#xcommand POINT               <oPoint> ( [ <par1>[, <par2> ] ] )                                      => <oPoint>  := Point              ( [ <par1> ] [, <par2> ] )
#xcommand SIZEF               <oSizeF> ( [<nWidth>[, <nHeight> ] ] )                                  => <oSizeF>  := SizeF              ( [ <nWidth> ] [, <nHeight> ] )
#xcommand SIZE                <oSize>  ( [<nWidth>[, <nHeight> ] ] )                                  => <oSize>   := Size               ( [ <nWidth> ] [, <nHeight> ] )
#xcommand COLOR               <oColor> ( [ <a>[,<r>, <g>[,<b> ] ] ] )                                 => <oColor>  := Color              ( [<a>][,<r>][,<g>][,<b> ] )
#xcommand MATRIX              <oMatrix>( [ <par1> [, <par2> [, <par3>, <par4>, <par5>, <par6> ] ] ] ) => <oMatrix> := Matrix             ( [<par1>][, <par2>][, <par3>][, <par4>][, <par5>][, <par6>] )
#xcommand LINEARGRADIENTBRUSH <ogb>    ( <par1>, <par2>, <par3>, <par4>[, <par5> ]  )                 => <ogb>     := LinearGradientBrush( <par1>, <par2>, <par3>, <par4>[, <par5>] )
#xcommand GRAPHICS            <o>      ( <par1> )                                                     =>  <o>      := Graphics           ( <par1> )
#xcommand IMAGE               <oImage> ( <cImage> )                                                   => <oImage>  := Image              ( <cImage> )
#xcommand IMAGE <o>( <par1> ) =>  <o> := Image( <par1> )
#xcommand SOLIDBRUSH          <oBrush> (  <oColor> )                                                  => <oBrush>  := SolidBrush         ( <oColor> )
#xcommand TEXTUREBRUSH        <oBrush> (  <par1>,<par2>[,<par3>[,<par4>,<par5>,<par6> ] ] )           => <oBrush>  := TextureBrush       ( [<par1>][, <par2>][, <par3>][, <par4>][, <par5>][, <par6>] )
#xcommand GRAPHICSPATH        <oPath>  ( [<par1> [,<par2>,<par3>,<par4>]] )                           => <oPath>   := GraphicsPath       ( [<par1>][, <par2>][, <par3>][, <par4>] )
#xcommand BITMAP              <oBmp>   ( <par1>,<par2>[,<par3>[,<par4>, <par5> ] ] )                  => <oBmp>    := Bitmap             ( [<par1>][, <par2>][, <par3>][, <par4>][, <par5>] )
#xcommand FONTFAMILY          <o>      ( [<par1> [, <par2> ] ] )                                      => <o>       := Fontfamily         ( [<par1>][, <par2>] )
#xcommand FONTCOLLECTION      <o>      ()                                                             => <o>       := FontCollection     ()
#xcommand INSTALLEDFONTCOLLECTION <o>  ()                                                             => <o>       := InstalledFontCollection()
#xcommand PRIVATEFONTCOLLECTION   <o>  ()                                                             => <o>       := PrivateFontCollection()
#xcommand FONT               <o>       ( <par1>[,<par2> ][,<par3> ][,<par4> ][,<par5>] )              => <o>       := Font               ( [<par1>][, <par2>][, <par3>][, <par4>][, <par5>] )
#xcommand STRINGFORMAT       <o>       ( [<par1> [,<par2> ] ] )                                       => <o>       := StringFormat       ( [<par1>][, <par2>] )
#xcommand REGION             <o>       ( [<par1> [,<par2> ] ] )                                       => <o>       := Region             ( [<par1>][, <par2>] )
#xcommand PATHDATA           <o>       ()                                                             => <o>       := PathData           ()
#xcommand BITMAP             <o>       ( <par1> [, <par2> [, <par3> [, <par4>, <par5> ] ] ] )         => <o>       := Bitmap             ( [<par1>][, <par2>][, <par3>][, <par4>][, <par5>] )
#xcommand IMAGEATTRIBUTES    <o>       ()                                                             => <o>       := ImageAttributes    ()
#xcommand BITMAPDATA         <o>       ()                                                             => <o>       := BitmapData         ()
#xcommand CACHEDBITMAP       <o>       ( <par1>, <par2> )                                             => <o>       := CachedBitmap       ( <par1>, <par2> )


#xtranslate guidStr.ImageFormatUndefined      =>   "B96B3CA9-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatMemoryBMP      =>   "B96B3CAA-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatBMP            =>   "B96B3CAB-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatEMF            =>   "B96B3CAC-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatWMF            =>   "B96B3CAD-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatJPEG           =>   "B96B3CAE-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatPNG            =>   "B96B3CAF-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatGIF            =>   "B96B3CB0-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatTIFF           =>   "B96B3CB1-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatEXIF           =>   "B96B3CB2-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.ImageFormatIcon           =>   "B96B3CB5-0728-11D3-9D7B-0000F81EF32E"
#xtranslate guidStr.FrameDimensionTime        =>   "6AEDBD6D-3FB5-418A-83A6-7F45229DC872"
#xtranslate guidStr.FrameDimensionResolution  =>   "84236F7B-3BD3-428F-8DAB-4EA1439CA315"
#xtranslate guidStr.FrameDimensionPage        =>   "7462DC86-6180-4C7E-8E3F-EE7333A7A483"
#xtranslate guidStr.FormatIDImageInformation  =>   "E5836CBE-5EEF-4F1D-ACDE-AE4C43B608CE"
#xtranslate guidStr.FormatIDJpegAppHeaders    =>   "1C4AFDCD-6177-43CF-ABC7-5F51AF39EE85"
#xtranslate guidStr.EncoderCompression        =>   "E09D739D-CCD4-44EE-8EBA-3FBF8BE4FC58"
#xtranslate guidStr.EncoderColorDepth         =>   "66087055-AD66-4C7C-9A18-38A2310B8337"
#xtranslate guidStr.EncoderScanMethod         =>   "3A4E2661-3109-4E56-8536-42C156E7DCFA"
#xtranslate guidStr.EncoderVersion            =>   "24D18C76-814A-41A4-BF53-1C219CCCF797"
#xtranslate guidStr.EncoderRenderMethod       =>   "6D42C53A-229A-4825-8BB7-5C99E2B9A8B8"
#xtranslate guidStr.EncoderQuality            =>   "1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB"
#xtranslate guidStr.EncoderTransformation     =>   "8D0EB2D1-A58E-4EA8-AA14-108074B7B6F9"
#xtranslate guidStr.EncoderLuminanceTable     =>   "EDB33BCE-0266-4A77-B904-27216099E717"
#xtranslate guidStr.EncoderChrominanceTable   =>   "F2E455DC-09B3-4316-8260-676ADA32481C"
#xtranslate guidStr.EncoderSaveFlag           =>   "292266FC-AC40-47BF-8CFC-A85B89A655DE"
#xtranslate guidStr.CodecIImageBytes          =>   "025D1823-6C7D-447B-BBDB-A3CBC3DFA2FC"
// ---------------------------------------------------------------------------
#xtranslate Status.Ok                               => ( 0)
#xtranslate Status.GenericError                     => ( 1)
#xtranslate Status.InvalidParameter                 => ( 2)
#xtranslate Status.OutOfMemory                      => ( 3)
#xtranslate Status.ObjectBusy                       => ( 4)
#xtranslate Status.InsufficientBuffer               => ( 5)
#xtranslate Status.NotImplemented                   => ( 6)
#xtranslate Status.Win32Error                       => ( 7)
#xtranslate Status.WrongState                       => ( 8)
#xtranslate Status.Aborted                          => ( 9)
#xtranslate Status.FileNotFound                     => (10)
#xtranslate Status.ValueOverflow                    => (11)
#xtranslate Status.AccessDenied                     => (12)
#xtranslate Status.UnknownImageFormat               => (13)
#xtranslate Status.FontFamilyNotFound               => (14)
#xtranslate Status.FontStyleNotFound                => (15)
#xtranslate Status.NotTrueTypeFont                  => (16)
#xtranslate Status.UnsupportedGdiplusVersion        => (17)
#xtranslate Status.GdiplusNotInitialized            => (18)
#xtranslate Status.PropertyNotFound                 => (19)
#xtranslate Status.PropertyNotSupported             => (20)
// ---------------------------------------------------------------------------
#xtranslate ColorMode.ARGB32 => (0)
#xtranslate ColorMode.ARGB64 => (1)
// ---------------------------------------------------------------------------
#xtranslate ColorChannelFlags.C     => (0)
#xtranslate ColorChannelFlags.M     => (1)
#xtranslate ColorChannelFlags.Y     => (2)
#xtranslate ColorChannelFlags.K     => (3)
#xtranslate ColorChannelFlags.Last  => (4)
// ---------------------------------------------------------------------------
#xtranslate Color.AliceBlue            => 0xFFF0F8FF
#xtranslate Color.AntiqueWhite         => 0xFFFAEBD7
#xtranslate Color.Aqua                 => 0xFF00FFFF
#xtranslate Color.Aquamarine           => 0xFF7FFFD4
#xtranslate Color.Azure                => 0xFFF0FFFF
#xtranslate Color.Beige                => 0xFFF5F5DC
#xtranslate Color.Bisque               => 0xFFFFE4C4
#xtranslate Color.Black                => 0xFF000000
#xtranslate Color.BlanchedAlmond       => 0xFFFFEBCD
#xtranslate Color.Blue                 => 0xFF0000FF
#xtranslate Color.BlueViolet           => 0xFF8A2BE2
#xtranslate Color.Brown                => 0xFFA52A2A
#xtranslate Color.BurlyWood            => 0xFFDEB887
#xtranslate Color.CadetBlue            => 0xFF5F9EA0
#xtranslate Color.Chartreuse           => 0xFF7FFF00
#xtranslate Color.Chocolate            => 0xFFD2691E
#xtranslate Color.Coral                => 0xFFFF7F50
#xtranslate Color.CornflowerBlue       => 0xFF6495ED
#xtranslate Color.Cornsilk             => 0xFFFFF8DC
#xtranslate Color.Crimson              => 0xFFDC143C
#xtranslate Color.Cyan                 => 0xFF00FFFF
#xtranslate Color.DarkBlue             => 0xFF00008B
#xtranslate Color.DarkCyan             => 0xFF008B8B
#xtranslate Color.DarkGoldenrod        => 0xFFB8860B
#xtranslate Color.DarkGray             => 0xFFA9A9A9
#xtranslate Color.DarkGreen            => 0xFF006400
#xtranslate Color.DarkKhaki            => 0xFFBDB76B
#xtranslate Color.DarkMagenta          => 0xFF8B008B
#xtranslate Color.DarkOliveGreen       => 0xFF556B2F
#xtranslate Color.DarkOrange           => 0xFFFF8C00
#xtranslate Color.DarkOrchid           => 0xFF9932CC
#xtranslate Color.DarkRed              => 0xFF8B0000
#xtranslate Color.DarkSalmon           => 0xFFE9967A
#xtranslate Color.DarkSeaGreen         => 0xFF8FBC8B
#xtranslate Color.DarkSlateBlue        => 0xFF483D8B
#xtranslate Color.DarkSlateGray        => 0xFF2F4F4F
#xtranslate Color.DarkTurquoise        => 0xFF00CED1
#xtranslate Color.DarkViolet           => 0xFF9400D3
#xtranslate Color.DeepPink             => 0xFFFF1493
#xtranslate Color.DeepSkyBlue          => 0xFF00BFFF
#xtranslate Color.DimGray              => 0xFF696969
#xtranslate Color.DodgerBlue           => 0xFF1E90FF
#xtranslate Color.Firebrick            => 0xFFB22222
#xtranslate Color.FloralWhite          => 0xFFFFFAF0
#xtranslate Color.ForestGreen          => 0xFF228B22
#xtranslate Color.Fuchsia              => 0xFFFF00FF
#xtranslate Color.Gainsboro            => 0xFFDCDCDC
#xtranslate Color.GhostWhite           => 0xFFF8F8FF
#xtranslate Color.Gold                 => 0xFFFFD700
#xtranslate Color.Goldenrod            => 0xFFDAA520
#xtranslate Color.Gray                 => 0xFF808080
#xtranslate Color.Green                => 0xFF008000
#xtranslate Color.GreenYellow          => 0xFFADFF2F
#xtranslate Color.Honeydew             => 0xFFF0FFF0
#xtranslate Color.HotPink              => 0xFFFF69B4
#xtranslate Color.IndianRed            => 0xFFCD5C5C
#xtranslate Color.Indigo               => 0xFF4B0082
#xtranslate Color.Ivory                => 0xFFFFFFF0
#xtranslate Color.Khaki                => 0xFFF0E68C
#xtranslate Color.Lavender             => 0xFFE6E6FA
#xtranslate Color.LavenderBlush        => 0xFFFFF0F5
#xtranslate Color.LawnGreen            => 0xFF7CFC00
#xtranslate Color.LemonChiffon         => 0xFFFFFACD
#xtranslate Color.LightBlue            => 0xFFADD8E6
#xtranslate Color.LightCoral           => 0xFFF08080
#xtranslate Color.LightCyan            => 0xFFE0FFFF
#xtranslate Color.LightGoldenrodYellow => 0xFFFAFAD2
#xtranslate Color.LightGray            => 0xFFD3D3D3
#xtranslate Color.LightGreen           => 0xFF90EE90
#xtranslate Color.LightPink            => 0xFFFFB6C1
#xtranslate Color.LightSalmon          => 0xFFFFA07A
#xtranslate Color.LightSeaGreen        => 0xFF20B2AA
#xtranslate Color.LightSkyBlue         => 0xFF87CEFA
#xtranslate Color.LightSlateGray       => 0xFF778899
#xtranslate Color.LightSteelBlue       => 0xFFB0C4DE
#xtranslate Color.LightYellow          => 0xFFFFFFE0
#xtranslate Color.Lime                 => 0xFF00FF00
#xtranslate Color.LimeGreen            => 0xFF32CD32
#xtranslate Color.Linen                => 0xFFFAF0E6
#xtranslate Color.Magenta              => 0xFFFF00FF
#xtranslate Color.Maroon               => 0xFF800000
#xtranslate Color.MediumAquamarine     => 0xFF66CDAA
#xtranslate Color.MediumBlue           => 0xFF0000CD
#xtranslate Color.MediumOrchid         => 0xFFBA55D3
#xtranslate Color.MediumPurple         => 0xFF9370DB
#xtranslate Color.MediumSeaGreen       => 0xFF3CB371
#xtranslate Color.MediumSlateBlue      => 0xFF7B68EE
#xtranslate Color.MediumSpringGreen    => 0xFF00FA9A
#xtranslate Color.MediumTurquoise      => 0xFF48D1CC
#xtranslate Color.MediumVioletRed      => 0xFFC71585
#xtranslate Color.MidnightBlue         => 0xFF191970
#xtranslate Color.MintCream            => 0xFFF5FFFA
#xtranslate Color.MistyRose            => 0xFFFFE4E1
#xtranslate Color.Moccasin             => 0xFFFFE4B5
#xtranslate Color.NavajoWhite          => 0xFFFFDEAD
#xtranslate Color.Navy                 => 0xFF000080
#xtranslate Color.OldLace              => 0xFFFDF5E6
#xtranslate Color.Olive                => 0xFF808000
#xtranslate Color.OliveDrab            => 0xFF6B8E23
#xtranslate Color.Orange               => 0xFFFFA500
#xtranslate Color.OrangeRed            => 0xFFFF4500
#xtranslate Color.Orchid               => 0xFFDA70D6
#xtranslate Color.PaleGoldenrod        => 0xFFEEE8AA
#xtranslate Color.PaleGreen            => 0xFF98FB98
#xtranslate Color.PaleTurquoise        => 0xFFAFEEEE
#xtranslate Color.PaleVioletRed        => 0xFFDB7093
#xtranslate Color.PapayaWhip           => 0xFFFFEFD5
#xtranslate Color.PeachPuff            => 0xFFFFDAB9
#xtranslate Color.Peru                 => 0xFFCD853F
#xtranslate Color.Pink                 => 0xFFFFC0CB
#xtranslate Color.Plum                 => 0xFFDDA0DD
#xtranslate Color.PowderBlue           => 0xFFB0E0E6
#xtranslate Color.Purple               => 0xFF800080
#xtranslate Color.Red                  => 0xFFFF0000
#xtranslate Color.RosyBrown            => 0xFFBC8F8F
#xtranslate Color.RoyalBlue            => 0xFF4169E1
#xtranslate Color.SaddleBrown          => 0xFF8B4513
#xtranslate Color.Salmon               => 0xFFFA8072
#xtranslate Color.SandyBrown           => 0xFFF4A460
#xtranslate Color.SeaGreen             => 0xFF2E8B57
#xtranslate Color.SeaShell             => 0xFFFFF5EE
#xtranslate Color.Sienna               => 0xFFA0522D
#xtranslate Color.Silver               => 0xFFC0C0C0
#xtranslate Color.SkyBlue              => 0xFF87CEEB
#xtranslate Color.SlateBlue            => 0xFF6A5ACD
#xtranslate Color.SlateGray            => 0xFF708090
#xtranslate Color.Snow                 => 0xFFFFFAFA
#xtranslate Color.SpringGreen          => 0xFF00FF7F
#xtranslate Color.SteelBlue            => 0xFF4682B4
#xtranslate Color.Tan                  => 0xFFD2B48C
#xtranslate Color.Teal                 => 0xFF008080
#xtranslate Color.Thistle              => 0xFFD8BFD8
#xtranslate Color.Tomato               => 0xFFFF6347
#xtranslate Color.Transparent          => 0x00FFFFFF
#xtranslate Color.Turquoise            => 0xFF40E0D0
#xtranslate Color.Violet               => 0xFFEE82EE
#xtranslate Color.Wheat                => 0xFFF5DEB3
#xtranslate Color.White                => 0xFFFFFFFF
#xtranslate Color.WhiteSmoke           => 0xFFF5F5F5
#xtranslate Color.Yellow               => 0xFFFFFF00
#xtranslate Color.YellowGreen          => 0xFF9ACD32
// ---------------------------------------------------------------------------
#xtranslate Color.AlphaShift  => (24)
#xtranslate Color.RedShift    => (16)
#xtranslate Color.GreenShift  => (8)
#xtranslate Color.BlueShift   => (0)
// ---------------------------------------------------------------------------
#xtranslate Color.AlphaMask   => 0xff000000
#xtranslate Color.RedMask     => 0x00ff0000
#xtranslate Color.GreenMask   => 0x0000ff00
#xtranslate Color.BlueMask    => 0x000000ff
// ---------------------------------------------------------------------------
#xtranslate ColorMatrixFlags.Default   => (0)
#xtranslate ColorMatrixFlags.SkipGrays => (1)
#xtranslate ColorMatrixFlags.AltGray   => (2)
// ---------------------------------------------------------------------------
#xtranslate ColorAdjustType.Default   => (0)
#xtranslate ColorAdjustType.Bitmap    => (1)
#xtranslate ColorAdjustType.Brush     => (2)
#xtranslate ColorAdjustType.Pen       => (3)
#xtranslate ColorAdjustType.Text      => (4)
#xtranslate ColorAdjustType.Count     => (5)
#xtranslate ColorAdjustType.Any       => (6)
// ---------------------------------------------------------------------------
#xtranslate FillMode.Alternate => (0)
#xtranslate FillMode.Winding => (1)
// ---------------------------------------------------------------------------
#xtranslate QualityMode.Invalid    => (dwminus(1))
#xtranslate QualityMode.Default    => (0)
#xtranslate QualityMode.Low        => (1)
#xtranslate QualityMode.High       => (2)
// ---------------------------------------------------------------------------
#xtranslate CompositingMode.SourceOver => (0)
#xtranslate CompositingMode.SourceCopy => (1)
// ---------------------------------------------------------------------------
#xtranslate CompositingQuality.Invalid        => (QualityMode.Invalid)
#xtranslate CompositingQuality.Default        => (QualityMode.Default)
#xtranslate CompositingQuality.HighSpeed      => (QualityMode.Low)
#xtranslate CompositingQuality.HighQuality    => (QualityMode.High)
#xtranslate CompositingQuality.GammaCorrected => (QualityMode.High + 1)
#xtranslate CompositingQuality.AssumeLinear   => (QualityMode.High + 2)
// ---------------------------------------------------------------------------
#xtranslate Unit.World        => (0)
#xtranslate Unit.Display      => (1)
#xtranslate Unit.Pixel        => (2)
#xtranslate Unit.Point        => (3)
#xtranslate Unit.Inch         => (4)
#xtranslate Unit.Document     => (5)
#xtranslate Unit.Millimeter   => (6)
// ---------------------------------------------------------------------------
#xtranslate MetafileFrameUnit.Pixel         => (Unit.Pixel)
#xtranslate MetafileFrameUnit.Point         => (Unit.Point)
#xtranslate MetafileFrameUnit.Inch          => (Unit.Inch)
#xtranslate MetafileFrameUnit.Document      => (Unit.Document)
#xtranslate MetafileFrameUnit.Millimeter    => (Unit.Millimeter)
#xtranslate MetafileFrameUnit.Gdi           => (Unit.Millimeter +1)
// ---------------------------------------------------------------------------
#xtranslate CoordinateSpace.World  => (0)
#xtranslate CoordinateSpace.Page   => (1)
#xtranslate CoordinateSpace.Device => (2)
// ---------------------------------------------------------------------------
#xtranslate WrapMode.Tile            => (0)
#xtranslate WrapMode.TileFlipX       => (1)
#xtranslate WrapMode.TileFlipY       => (2)
#xtranslate WrapMode.TileFlipXY      => (3)
#xtranslate WrapMode.Clamp           => (4)
// ---------------------------------------------------------------------------
#xtranslate HatchStyle.Horizontal                   => (0 )
#xtranslate HatchStyle.Vertical                     => (1 )
#xtranslate HatchStyle.ForwardDiagonal              => (2 )
#xtranslate HatchStyle.BackwardDiagonal             => (3 )
#xtranslate HatchStyle.Cross                        => (4 )
#xtranslate HatchStyle.DiagonalCross                => (5 )
#xtranslate HatchStyle.05Percent                    => (6 )
#xtranslate HatchStyle.10Percent                    => (7 )
#xtranslate HatchStyle.20Percent                    => (8 )
#xtranslate HatchStyle.25Percent                    => (9 )
#xtranslate HatchStyle.30Percent                    => (10)
#xtranslate HatchStyle.40Percent                    => (11)
#xtranslate HatchStyle.50Percent                    => (12)
#xtranslate HatchStyle.60Percent                    => (13)
#xtranslate HatchStyle.70Percent                    => (14)
#xtranslate HatchStyle.75Percent                    => (15)
#xtranslate HatchStyle.80Percent                    => (16)
#xtranslate HatchStyle.90Percent                    => (17)
#xtranslate HatchStyle.LightDownwardDiagonal        => (18)
#xtranslate HatchStyle.LightUpwardDiagonal          => (19)
#xtranslate HatchStyle.DarkDownwardDiagonal         => (20)
#xtranslate HatchStyle.DarkUpwardDiagonal           => (21)
#xtranslate HatchStyle.WideDownwardDiagonal         => (22)
#xtranslate HatchStyle.WideUpwardDiagonal           => (23)
#xtranslate HatchStyle.LightVertical                => (24)
#xtranslate HatchStyle.LightHorizontal              => (25)
#xtranslate HatchStyle.NarrowVertical               => (26)
#xtranslate HatchStyle.NarrowHorizontal             => (27)
#xtranslate HatchStyle.DarkVertical                 => (28)
#xtranslate HatchStyle.DarkHorizontal               => (29)
#xtranslate HatchStyle.DashedDownwardDiagonal       => (30)
#xtranslate HatchStyle.DashedUpwardDiagonal         => (31)
#xtranslate HatchStyle.DashedHorizontal             => (32)
#xtranslate HatchStyle.DashedVertical               => (33)
#xtranslate HatchStyle.SmallConfetti                => (34)
#xtranslate HatchStyle.LargeConfetti                => (35)
#xtranslate HatchStyle.ZigZag                       => (36)
#xtranslate HatchStyle.Wave                         => (37)
#xtranslate HatchStyle.DiagonalBrick                => (38)
#xtranslate HatchStyle.HorizontalBrick              => (39)
#xtranslate HatchStyle.Weave                        => (40)
#xtranslate HatchStyle.Plaid                        => (41)
#xtranslate HatchStyle.Divot                        => (42)
#xtranslate HatchStyle.DottedGrid                   => (43)
#xtranslate HatchStyle.DottedDiamond                => (44)
#xtranslate HatchStyle.Shingle                      => (45)
#xtranslate HatchStyle.Trellis                      => (46)
#xtranslate HatchStyle.Sphere                       => (47)
#xtranslate HatchStyle.SmallGrid                    => (48)
#xtranslate HatchStyle.SmallCheckerBoard            => (49)
#xtranslate HatchStyle.LargeCheckerBoard            => (50)
#xtranslate HatchStyle.OutlinedDiamond              => (51)
#xtranslate HatchStyle.SolidDiamond                 => (52)
#xtranslate HatchStyle.Total                        => (53)
#xtranslate HatchStyle.LargeGrid                    => (HatchStyle.Cross)
#xtranslate HatchStyle.Min                          => (HatchStyle.Horizontal)
#xtranslate HatchStyle.Max                          => (HatchStyle.Total - 1)
// ---------------------------------------------------------------------------
#xtranslate DashStyle.Solid         => (0)
#xtranslate DashStyle.Dash          => (1)
#xtranslate DashStyle.Dot           => (2)
#xtranslate DashStyle.DashDot       => (3)
#xtranslate DashStyle.DashDotDot    => (4)
#xtranslate DashStyle.Custom        => (5)
// ---------------------------------------------------------------------------
#xtranslate DashCap.Flat       => (0)
#xtranslate DashCap.Round      => (2)
#xtranslate DashCap.Triangle   => (3)
// ---------------------------------------------------------------------------
#xtranslate LineCap.Flat            => (0x00)
#xtranslate LineCap.Square          => (0x01)
#xtranslate LineCap.Round           => (0x02)
#xtranslate LineCap.Triangle        => (0x03)
#xtranslate LineCap.NoAnchor        => (0x10)
#xtranslate LineCap.SquareAnchor    => (0x11)
#xtranslate LineCap.RoundAnchor     => (0x12)
#xtranslate LineCap.DiamondAnchor   => (0x13)
#xtranslate LineCap.ArrowAnchor     => (0x14)
#xtranslate LineCap.Custom          => (0xFF)
#xtranslate LineCap.AnchorMask      => (0xF0)
// ---------------------------------------------------------------------------
#xtranslate CustomLineCapType.Default          => (0)
#xtranslate CustomLineCapType.AdjustableArrow  => (1)
// ---------------------------------------------------------------------------
#xtranslate LineJoin.Miter         => (0)
#xtranslate LineJoin.Bevel         => (1)
#xtranslate LineJoin.Round         => (2)
#xtranslate LineJoin.MiterClipped  => (3)
// ---------------------------------------------------------------------------
#xtranslate PathPointType.Start          => (0x00)
#xtranslate PathPointType.Line           => (0x01)
#xtranslate PathPointType.Bezier         => (0x03)
#xtranslate PathPointType.PathTypeMask   => (0x07)
#xtranslate PathPointType.DashMode       => (0x10)
#xtranslate PathPointType.PathMarker     => (0x20)
#xtranslate PathPointType.CloseSubpath   => (0x80)
#xtranslate PathPointType.Bezier3        => (3)
// ---------------------------------------------------------------------------
#xtranslate WarpMode.Perspective   =>0 )
#xtranslate WarpMode.Bilinear      =>1)
// ---------------------------------------------------------------------------
#xtranslate LinearGradientMode.Horizontal           => (0)
#xtranslate LinearGradientMode.Vertical             => (1)
#xtranslate LinearGradientMode.ForwardDiagonal      => (2)
#xtranslate LinearGradientMode.BackwardDiagonal     => (3)
// ---------------------------------------------------------------------------
#xtranslate CombineMode.Replace           => (0)
#xtranslate CombineMode.Intersect         => (1)
#xtranslate CombineMode.Union             => (2)
#xtranslate CombineMode.Xor               => (3)
#xtranslate CombineMode.Exclude           => (4)
#xtranslate CombineMode.Complement        => (5)
// ---------------------------------------------------------------------------
#xtranslate ImageType.Unknown             => (0)
#xtranslate ImageType.Bitmap              => (1)
#xtranslate ImageType.Metafile            => (2)
// ---------------------------------------------------------------------------
#xtranslate InterpolationMode.Invalid               => (QualityMode.Invalid)
#xtranslate InterpolationMode.Default               => (QualityMode.Default)
#xtranslate InterpolationMode.LowQuality            => (QualityMode.Low)
#xtranslate InterpolationMode.HighQuality           => (QualityMode.High)
#xtranslate InterpolationMode.Bilinear              => (QualityMode.High + 1)
#xtranslate InterpolationMode.Bicubic               => (QualityMode.High + 2)
#xtranslate InterpolationMode.NearestNeighbor       => (QualityMode.High + 3)
#xtranslate InterpolationMode.HighQualityBilinear   => (QualityMode.High + 4)
#xtranslate InterpolationMode.HighQualityBicubic    => (QualityMode.High + 5)
// ---------------------------------------------------------------------------
#xtranslate PenAlignment.Center        => (0)
#xtranslate PenAlignment.Inset         => (1)
// ---------------------------------------------------------------------------
#xtranslate BrushType.SolidColor        => (0)
#xtranslate BrushType.HatchFill         => (1)
#xtranslate BrushType.TextureFill       => (2)
#xtranslate BrushType.PathGradient      => (3)
#xtranslate BrushType.LinearGradient    => (4)
// ---------------------------------------------------------------------------
#xtranslate PenType.SolidColor      => (BrushType.SolidColor)
#xtranslate PenType.HatchFill       => (BrushType.HatchFill)
#xtranslate PenType.TextureFill     => (BrushType.TextureFill)
#xtranslate PenType.PathGradient    => (BrushType.PathGradient)
#xtranslate PenType.LinearGradient  => (BrushType.LinearGradient)
#xtranslate PenType.Unknown         => (dwminus(1))
// ---------------------------------------------------------------------------
#xtranslate MatrixOrder.Prepend     => (0)
#xtranslate MatrixOrder.Append      => (1)
// ---------------------------------------------------------------------------
#xtranslate GenericFontFamily.Serif      => (0)
#xtranslate GenericFontFamily.SansSerif  => (1)
#xtranslate GenericFontFamily.Monospace  => (2)
// ---------------------------------------------------------------------------
#xtranslate FontStyle.Regular            => (0)
#xtranslate FontStyle.Bold               => (1)
#xtranslate FontStyle.Italic             => (2)
#xtranslate FontStyle.BoldItalic         => (3)
#xtranslate FontStyle.Underline          => (4)
#xtranslate FontStyle.Strikeout          => (8)
// ---------------------------------------------------------------------------
#xtranslate SmoothingMode.Invalid        => (QualityMode.Invalid)
#xtranslate SmoothingMode.Default        => (QualityMode.Default)
#xtranslate SmoothingMode.HighSpeed      => (QualityMode.Low)
#xtranslate SmoothingMode.HighQuality    => (QualityMode.High)
#xtranslate SmoothingMode.None           => (QualityMode.High + 1)
#xtranslate SmoothingMode.AntiAlias      => (QualityMode.High + 2)
// ---------------------------------------------------------------------------
#xtranslate PixelOffsetMode.Invalid       => (QualityMode.Invalid)
#xtranslate PixelOffsetMode.Default       => (QualityMode.Default)
#xtranslate PixelOffsetMode.HighSpeed     => (QualityMode.Low)
#xtranslate PixelOffsetMode.HighQuality   => (QualityMode.High)
#xtranslate PixelOffsetMode.None          => (QualityMode.High + 1)
#xtranslate PixelOffsetMode.Half          => (QualityMode.High + 2)
// ---------------------------------------------------------------------------
#xtranslate TextRenderingHint.SystemDefault                => (0)
#xtranslate TextRenderingHint.SingleBitPerPixelGridFit     => (1)
#xtranslate TextRenderingHint.SingleBitPerPixel            => (2)
#xtranslate TextRenderingHint.AntiAliasGridFit             => (3)
#xtranslate TextRenderingHint.AntiAlias                    => (4)
#xtranslate TextRenderingHint.ClearTypeGridFit             => (5)
// ---------------------------------------------------------------------------
#xtranslate MetafileType.Invalid                => (0)
#xtranslate MetafileType.Wmf                    => (1)
#xtranslate MetafileType.WmfPlaceable           => (2)
#xtranslate MetafileType.Emf                    => (3)
#xtranslate MetafileType.EmfPlusOnly            => (4)
#xtranslate MetafileType.EmfPlusDual            => (5)
// ---------------------------------------------------------------------------
#xtranslate EmfType.EmfOnly                     => (MetafileType.Emf)
#xtranslate EmfType.EmfPlusOnly                 => (MetafileType.EmfPlusOnly)
#xtranslate EmfType.EmfPlusDual                 => (MetafileType.EmfPlusDual)
// ---------------------------------------------------------------------------
#xtranslate ObjectType.Invalid                  => (0)
#xtranslate ObjectType.Brush                    => (1)
#xtranslate ObjectType.Pen                      => (2)
#xtranslate ObjectType.Path                     => (3)
#xtranslate ObjectType.Region                   => (4)
#xtranslate ObjectType.Image                    => (5)
#xtranslate ObjectType.Font                     => (6)
#xtranslate ObjectType.StringFormat             => (7)
#xtranslate ObjectType.ImageAttributes          => (8)
#xtranslate ObjectType.CustomLineCap            => (9)
#xtranslate ObjectType.Max                      => (ObjectType.CustomLineCap)
#xtranslate ObjectType.Min                      => (ObjectType.Brush)
// ---------------------------------------------------------------------------
#xtranslate StringFormatFlags.DirectionRightToLeft       => (0x00000001)
#xtranslate StringFormatFlags.DirectionVertical          => (0x00000002)
#xtranslate StringFormatFlags.NoFitBlackBox              => (0x00000004)
#xtranslate StringFormatFlags.DisplayFormatControl       => (0x00000020)
#xtranslate StringFormatFlags.NoFontFallback             => (0x00000400)
#xtranslate StringFormatFlags.MeasureTrailingSpaces      => (0x00000800)
#xtranslate StringFormatFlags.NoWrap                     => (0x00001000)
#xtranslate StringFormatFlags.LineLimit                  => (0x00002000)
#xtranslate StringFormatFlags.NoClip                     => (0x00004000)
// ---------------------------------------------------------------------------
#xtranslate StringTrimming.None                    => (0)
#xtranslate StringTrimming.Character               => (1)
#xtranslate StringTrimming.Word                    => (2)
#xtranslate StringTrimming.EllipsisCharacter       => (3)
#xtranslate StringTrimming.EllipsisWord            => (4)
#xtranslate StringTrimming.EllipsisPath            => (5)
// ---------------------------------------------------------------------------
#xtranslate StringDigitSubstitute.User             => (0)
#xtranslate StringDigitSubstitute.None             => (1)
#xtranslate StringDigitSubstitute.National         => (2)
#xtranslate StringDigitSubstitute.Traditional      => (3)
// ---------------------------------------------------------------------------
#xtranslate HotkeyPrefix.None                      => (0)
#xtranslate HotkeyPrefix.Show                      => (1)
#xtranslate HotkeyPrefix.Hide                      => (2)
// ---------------------------------------------------------------------------
#xtranslate StringAlignment.Near       => (0)
#xtranslate StringAlignment.Center     => (1)
#xtranslate StringAlignment.Far        => (2)
// ---------------------------------------------------------------------------
#xtranslate DriverStringOptions.CmapLookup       => (1)
#xtranslate DriverStringOptions.Vertical         => (2)
#xtranslate DriverStringOptions.RealizedAdvance  => (4)
#xtranslate DriverStringOptions.LimitSubpixel    => (8)
// ---------------------------------------------------------------------------
#xtranslate FlushIntention.Flush                 => (0)
#xtranslate FlushIntention.Sync                  => (1)
// ---------------------------------------------------------------------------
#xtranslate EncoderParameterValueType.Byte          => (1)
#xtranslate EncoderParameterValueType.ASCII         => (2)
#xtranslate EncoderParameterValueType.Short         => (3)
#xtranslate EncoderParameterValueType.Long          => (4)
#xtranslate EncoderParameterValueType.Rational      => (5)
#xtranslate EncoderParameterValueType.LongRange     => (6)
#xtranslate EncoderParameterValueType.Undefined     => (7)
#xtranslate EncoderParameterValueType.RationalRange => (8)
// ---------------------------------------------------------------------------
#xtranslate EncoderValue.ColorTypeCMYK                => (0 )
#xtranslate EncoderValue.ColorTypeYCCK                => (1 )
#xtranslate EncoderValue.CompressionLZW               => (2 )
#xtranslate EncoderValue.CompressionCCITT3            => (3 )
#xtranslate EncoderValue.CompressionCCITT4            => (4 )
#xtranslate EncoderValue.CompressionRle               => (5 )
#xtranslate EncoderValue.CompressionNone              => (6 )
#xtranslate EncoderValue.ScanMethodInterlaced         => (7 )
#xtranslate EncoderValue.ScanMethodNonInterlaced      => (8 )
#xtranslate EncoderValue.VersionGif87                 => (9 )
#xtranslate EncoderValue.VersionGif89                 => (10)
#xtranslate EncoderValue.RenderProgressive            => (11)
#xtranslate EncoderValue.RenderNonProgressive         => (12)
#xtranslate EncoderValue.TransformRotate90            => (13)
#xtranslate EncoderValue.TransformRotate180           => (14)
#xtranslate EncoderValue.TransformRotate270           => (15)
#xtranslate EncoderValue.TransformFlipHorizontal      => (16)
#xtranslate EncoderValue.TransformFlipVertical        => (17)
#xtranslate EncoderValue.MultiFrame                   => (18)
#xtranslate EncoderValue.LastFrame                    => (19)
#xtranslate EncoderValue.Flush                        => (20)
#xtranslate EncoderValue.FrameDimensionTime           => (21)
#xtranslate EncoderValue.FrameDimensionResolution     => (22)
#xtranslate EncoderValue.FrameDimensionPage           => (23)
// ---------------------------------------------------------------------------
#xtranslate EmfToWmfBitsFlags.Default                 => (0x00000000)
#xtranslate EmfToWmfBitsFlags.EmbedEmf                => (0x00000001)
#xtranslate EmfToWmfBitsFlags.IncludePlaceable        => (0x00000002)
#xtranslate EmfToWmfBitsFlags.NoXORClip               => (0x00000004)
// ---------------------------------------------------------------------------
#xtranslate TestControl.ForceBilinear                 => (0)
#xtranslate TestControl.NoICM                         => (1)
#xtranslate TestControl.GetBuildNumber                => (2)
// ---------------------------------------------------------------------------
#xtranslate DebugEventLevel.Fatal     => (0)
#xtranslate DebugEventLevel.Warning   => (1)
// ---------------------------------------------------------------------------
#xtranslate ImageCodecFlags.Encoder            => (0x00000001)
#xtranslate ImageCodecFlags.Decoder            => (0x00000002)
#xtranslate ImageCodecFlags.SupportBitmap      => (0x00000004)
#xtranslate ImageCodecFlags.SupportVector      => (0x00000008)
#xtranslate ImageCodecFlags.SeekableEncode     => (0x00000010)
#xtranslate ImageCodecFlags.BlockingDecode     => (0x00000020)
#xtranslate ImageCodecFlags.Builtin            => (0x00010000)
#xtranslate ImageCodecFlags.System             => (0x00020000)
#xtranslate ImageCodecFlags.User               => (0x00040000)
// ---------------------------------------------------------------------------
#xtranslate ImageLockMode.Read         => (0x0001)
#xtranslate ImageLockMode.Write        => (0x0002)
#xtranslate ImageLockMode.UserInputBuf => (0x0004)
// ---------------------------------------------------------------------------
#xtranslate ImageFlags.None                => (0)
#xtranslate ImageFlags.Scalable            => (0x00000001)
#xtranslate ImageFlags.HasAlpha            => (0x00000002)
#xtranslate ImageFlags.HasTranslucent      => (0x00000004)
#xtranslate ImageFlags.PartiallyScalable   => (0x00000008)
#xtranslate ImageFlags.ColorSpaceRGB       => (0x00000010)
#xtranslate ImageFlags.ColorSpaceCMYK      => (0x00000020)
#xtranslate ImageFlags.ColorSpaceGRAY      => (0x00000040)
#xtranslate ImageFlags.ColorSpaceYCBCR     => (0x00000080)
#xtranslate ImageFlags.ColorSpaceYCCK      => (0x00000100)
#xtranslate ImageFlags.HasRealDPI          => (0x00001000)
#xtranslate ImageFlags.HasRealPixelSize    => (0x00002000)
#xtranslate ImageFlags.ReadOnly            => (0x00010000)
#xtranslate ImageFlags.Caching             => (0x00020000)
//-------------------------------------------------------------------------------------------------------------------------)
#xtranslate Rotate.NoneFlipNone => (0,)
#xtranslate Rotate.90FlipNone   => (1,)
#xtranslate Rotate.180FlipNone  => (2,)
#xtranslate Rotate.270FlipNone  => (3,)
#xtranslate Rotate.NoneFlipX    => (4,)
#xtranslate Rotate.90FlipX      => (5,)
#xtranslate Rotate.180FlipX     => (6,)
#xtranslate Rotate.270FlipX     => (7,)
#xtranslate Rotate.NoneFlipY    => (Rotate.180FlipX)
#xtranslate Rotate.90FlipY      => (Rotate.270FlipX)
#xtranslate Rotate.180FlipY     => (Rotate.NoneFlipX)
#xtranslate Rotate.270FlipY     => (Rotate.90FlipX)
#xtranslate Rotate.NoneFlipXY   => (Rotate.180FlipNone)
#xtranslate Rotate.90FlipXY     => (Rotate.270FlipNone)
#xtranslate Rotate.180FlipXY    => (Rotate.NoneFlipNone)
#xtranslate Rotate.270FlipXY    => (Rotate.90FlipNone)
// ---------------------------------------------------------------------------
#xtranslate PaletteFlags.HasAlpha    => ( 0x0001 )
#xtranslate PaletteFlags.GrayScale   => ( 0x0002 )
#xtranslate PaletteFlags.Halftone    => ( 0x0004 )
// ---------------------------------------------------------------------------
#xtranslate WmfRecordType.SetBkColor              => (dwfix(1,0x0201))
#xtranslate WmfRecordType.SetBkMode               => (dwfix(1,0x0102))
#xtranslate WmfRecordType.SetMapMode              => (dwfix(1,0x0103))
#xtranslate WmfRecordType.SetROP2                 => (dwfix(1,0x0104))
#xtranslate WmfRecordType.SetRelAbs               => (dwfix(1,0x0105))
#xtranslate WmfRecordType.SetPolyFillMode         => (dwfix(1,0x0106))
#xtranslate WmfRecordType.SetStretchBltMode       => (dwfix(1,0x0107))
#xtranslate WmfRecordType.SetTextCharExtra        => (dwfix(1,0x0108))
#xtranslate WmfRecordType.SetTextColor            => (dwfix(1,0x0209))
#xtranslate WmfRecordType.SetTextJustification    => (dwfix(1,0x020A))
#xtranslate WmfRecordType.SetWindowOrg            => (dwfix(1,0x020B))
#xtranslate WmfRecordType.SetWindowExt            => (dwfix(1,0x020C))
#xtranslate WmfRecordType.SetViewportOrg          => (dwfix(1,0x020D))
#xtranslate WmfRecordType.SetViewportExt          => (dwfix(1,0x020E))
#xtranslate WmfRecordType.OffsetWindowOrg         => (dwfix(1,0x020F))
#xtranslate WmfRecordType.ScaleWindowExt          => (dwfix(1,0x0410))
#xtranslate WmfRecordType.OffsetViewportOrg       => (dwfix(1,0x0211))
#xtranslate WmfRecordType.ScaleViewportExt        => (dwfix(1,0x0412))
#xtranslate WmfRecordType.LineTo                  => (dwfix(1,0x0213))
#xtranslate WmfRecordType.MoveTo                  => (dwfix(1,0x0214))
#xtranslate WmfRecordType.ExcludeClipRect         => (dwfix(1,0x0415))
#xtranslate WmfRecordType.IntersectClipRect       => (dwfix(1,0x0416))
#xtranslate WmfRecordType.Arc                     => (dwfix(1,0x0817))
#xtranslate WmfRecordType.Ellipse                 => (dwfix(1,0x0418))
#xtranslate WmfRecordType.FloodFill               => (dwfix(1,0x0419))
#xtranslate WmfRecordType.Pie                     => (dwfix(1,0x081A))
#xtranslate WmfRecordType.Rectangle               => (dwfix(1,0x041B))
#xtranslate WmfRecordType.RoundRect               => (dwfix(1,0x061C))
#xtranslate WmfRecordType.PatBlt                  => (dwfix(1,0x061D))
#xtranslate WmfRecordType.SaveDC                  => (dwfix(1,0x001E))
#xtranslate WmfRecordType.SetPixel                => (dwfix(1,0x041F))
#xtranslate WmfRecordType.OffsetClipRgn           => (dwfix(1,0x0220))
#xtranslate WmfRecordType.TextOut                 => (dwfix(1,0x0521))
#xtranslate WmfRecordType.BitBlt                  => (dwfix(1,0x0922))
#xtranslate WmfRecordType.StretchBlt              => (dwfix(1,0x0B23))
#xtranslate WmfRecordType.Polygon                 => (dwfix(1,0x0324))
#xtranslate WmfRecordType.Polyline                => (dwfix(1,0x0325))
#xtranslate WmfRecordType.Escape                  => (dwfix(1,0x0626))
#xtranslate WmfRecordType.RestoreDC               => (dwfix(1,0x0127))
#xtranslate WmfRecordType.FillRegion              => (dwfix(1,0x0228))
#xtranslate WmfRecordType.FrameRegion             => (dwfix(1,0x0429))
#xtranslate WmfRecordType.InvertRegion            => (dwfix(1,0x012A))
#xtranslate WmfRecordType.PaintRegion             => (dwfix(1,0x012B))
#xtranslate WmfRecordType.SelectClipRegion        => (dwfix(1,0x012C))
#xtranslate WmfRecordType.SelectObject            => (dwfix(1,0x012D))
#xtranslate WmfRecordType.SetTextAlign            => (dwfix(1,0x012E))
#xtranslate WmfRecordType.DrawText                => (dwfix(1,0x062F))
#xtranslate WmfRecordType.Chord                   => (dwfix(1,0x0830))
#xtranslate WmfRecordType.SetMapperFlags          => (dwfix(1,0x0231))
#xtranslate WmfRecordType.ExtTextOut              => (dwfix(1,0x0a32))
#xtranslate WmfRecordType.SetDIBToDev             => (dwfix(1,0x0d33))
#xtranslate WmfRecordType.SelectPalette           => (dwfix(1,0x0234))
#xtranslate WmfRecordType.RealizePalette          => (dwfix(1,0x0035))
#xtranslate WmfRecordType.AnimatePalette          => (dwfix(1,0x0436))
#xtranslate WmfRecordType.SetPalEntries           => (dwfix(1,0x0037))
#xtranslate WmfRecordType.PolyPolygon             => (dwfix(1,0x0538))
#xtranslate WmfRecordType.ResizePalette           => (dwfix(1,0x0139))
#xtranslate WmfRecordType.DIBBitBlt               => (dwfix(1,0x0940))
#xtranslate WmfRecordType.DIBStretchBlt           => (dwfix(1,0x0b41))
#xtranslate WmfRecordType.DIBCreatePatternBrush   => (dwfix(1,0x0142))
#xtranslate WmfRecordType.StretchDIB              => (dwfix(1,0x0f43))
#xtranslate WmfRecordType.ExtFloodFill            => (dwfix(1,0x0548))
#xtranslate WmfRecordType.SetLayout               => (dwfix(1,0x0149))
#xtranslate WmfRecordType.ResetDC                 => (dwfix(1,0x014C))
#xtranslate WmfRecordType.StartDoc                => (dwfix(1,0x014D))
#xtranslate WmfRecordType.StartPage               => (dwfix(1,0x004F))
#xtranslate WmfRecordType.EndPage                 => (dwfix(1,0x0050))
#xtranslate WmfRecordType.AbortDoc                => (dwfix(1,0x0052))
#xtranslate WmfRecordType.EndDoc                  => (dwfix(1,0x005E))
#xtranslate WmfRecordType.DeleteObject            => (dwfix(1,0x01f0))
#xtranslate WmfRecordType.CreatePalette           => (dwfix(1,0x00f7))
#xtranslate WmfRecordType.CreateBrush             => (dwfix(1,0x00F8))
#xtranslate WmfRecordType.CreatePatternBrush      => (dwfix(1,0x01F9))
#xtranslate WmfRecordType.CreatePenIndirect       => (dwfix(1,0x02FA))
#xtranslate WmfRecordType.CreateFontIndirect      => (dwfix(1,0x02FB))
#xtranslate WmfRecordType.CreateBrushIndirect     => (dwfix(1,0x02FC))
#xtranslate WmfRecordType.CreateBitmapIndirect    => (dwfix(1,0x02FD))
#xtranslate WmfRecordType.CreateBitmap            => (dwfix(1,0x06FE))
#xtranslate WmfRecordType.CreateRegion            => (dwfix(1,0x06FF))
//-------------------------------------------------------------------------------------------------------------------------)
#xtranslate EmfRecordType.Header                  => (1 )
#xtranslate EmfRecordType.PolyBezier              => (2 )
#xtranslate EmfRecordType.Polygon                 => (3 )
#xtranslate EmfRecordType.Polyline                => (4 )
#xtranslate EmfRecordType.PolyBezierTo            => (5 )
#xtranslate EmfRecordType.PolyLineTo              => (6 )
#xtranslate EmfRecordType.PolyPolyline            => (7 )
#xtranslate EmfRecordType.PolyPolygon             => (8 )
#xtranslate EmfRecordType.SetWindowExtEx          => (9 )
#xtranslate EmfRecordType.SetWindowOrgEx          => (10)
#xtranslate EmfRecordType.SetViewportExtEx        => (11)
#xtranslate EmfRecordType.SetViewportOrgEx        => (12)
#xtranslate EmfRecordType.SetBrushOrgEx           => (13)
#xtranslate EmfRecordType.EOF                     => (14)
#xtranslate EmfRecordType.SetPixelV               => (15)
#xtranslate EmfRecordType.SetMapperFlags          => (16)
#xtranslate EmfRecordType.SetMapMode              => (17)
#xtranslate EmfRecordType.SetBkMode               => (18)
#xtranslate EmfRecordType.SetPolyFillMode         => (19)
#xtranslate EmfRecordType.SetROP2                 => (20)
#xtranslate EmfRecordType.SetStretchBltMode       => (21)
#xtranslate EmfRecordType.SetTextAlign            => (22)
#xtranslate EmfRecordType.SetColorAdjustment      => (23)
#xtranslate EmfRecordType.SetTextColor            => (24)
#xtranslate EmfRecordType.SetBkColor              => (25)
#xtranslate EmfRecordType.OffsetClipRgn           => (26)
#xtranslate EmfRecordType.MoveToEx                => (27)
#xtranslate EmfRecordType.SetMetaRgn              => (28)
#xtranslate EmfRecordType.ExcludeClipRect         => (29)
#xtranslate EmfRecordType.IntersectClipRect       => (30)
#xtranslate EmfRecordType.ScaleViewportExtEx      => (31)
#xtranslate EmfRecordType.ScaleWindowExtEx        => (32)
#xtranslate EmfRecordType.SaveDC                  => (33)
#xtranslate EmfRecordType.RestoreDC               => (34)
#xtranslate EmfRecordType.SetWorldTransform       => (35)
#xtranslate EmfRecordType.ModifyWorldTransform    => (36)
#xtranslate EmfRecordType.SelectObject            => (37)
#xtranslate EmfRecordType.CreatePen               => (38)
#xtranslate EmfRecordType.CreateBrushIndirect     => (39)
#xtranslate EmfRecordType.DeleteObject            => (40)
#xtranslate EmfRecordType.AngleArc                => (41)
#xtranslate EmfRecordType.Ellipse                 => (42)
#xtranslate EmfRecordType.Rectangle               => (43)
#xtranslate EmfRecordType.RoundRect               => (44)
#xtranslate EmfRecordType.Arc                     => (45)
#xtranslate EmfRecordType.Chord                   => (46)
#xtranslate EmfRecordType.Pie                     => (47)
#xtranslate EmfRecordType.SelectPalette           => (48)
#xtranslate EmfRecordType.CreatePalette           => (49)
#xtranslate EmfRecordType.SetPaletteEntries       => (50)
#xtranslate EmfRecordType.ResizePalette           => (51)
#xtranslate EmfRecordType.RealizePalette          => (52)
#xtranslate EmfRecordType.ExtFloodFill            => (53)
#xtranslate EmfRecordType.LineTo                  => (54)
#xtranslate EmfRecordType.ArcTo                   => (55)
#xtranslate EmfRecordType.PolyDraw                => (56)
#xtranslate EmfRecordType.SetArcDirection         => (57)
#xtranslate EmfRecordType.SetMiterLimit           => (58)
#xtranslate EmfRecordType.BeginPath               => (59)
#xtranslate EmfRecordType.EndPath                 => (60)
#xtranslate EmfRecordType.CloseFigure             => (61)
#xtranslate EmfRecordType.FillPath                => (62)
#xtranslate EmfRecordType.StrokeAndFillPath       => (63)
#xtranslate EmfRecordType.StrokePath              => (64)
#xtranslate EmfRecordType.FlattenPath             => (65)
#xtranslate EmfRecordType.WidenPath               => (66)
#xtranslate EmfRecordType.SelectClipPath          => (67)
#xtranslate EmfRecordType.AbortPath               => (68)
#xtranslate EmfRecordType.Reserved_069            => (69)
#xtranslate EmfRecordType.GdiComment              => (70)
#xtranslate EmfRecordType.FillRgn                 => (71)
#xtranslate EmfRecordType.FrameRgn                => (72)
#xtranslate EmfRecordType.InvertRgn               => (73)
#xtranslate EmfRecordType.PaintRgn                => (74)
#xtranslate EmfRecordType.ExtSelectClipRgn        => (75)
#xtranslate EmfRecordType.BitBlt                  => (76)
#xtranslate EmfRecordType.StretchBlt              => (77)
#xtranslate EmfRecordType.MaskBlt                 => (78)
#xtranslate EmfRecordType.PlgBlt                  => (79)
#xtranslate EmfRecordType.SetDIBitsToDevice       => (80)
#xtranslate EmfRecordType.StretchDIBits           => (81)
#xtranslate EmfRecordType.ExtCreateFontIndirect   => (82)
#xtranslate EmfRecordType.ExtTextOutA             => (83)
#xtranslate EmfRecordType.ExtTextOutW             => (84)
#xtranslate EmfRecordType.PolyBezier16            => (85)
#xtranslate EmfRecordType.Polygon16               => (86)
#xtranslate EmfRecordType.Polyline16              => (87)
#xtranslate EmfRecordType.PolyBezierTo16          => (88)
#xtranslate EmfRecordType.PolylineTo16            => (89)
#xtranslate EmfRecordType.PolyPolyline16          => (90)
#xtranslate EmfRecordType.PolyPolygon16           => (91)
#xtranslate EmfRecordType.PolyDraw16              => (92)
#xtranslate EmfRecordType.CreateMonoBrush         => (93)
#xtranslate EmfRecordType.CreateDIBPatternBrushPt => (94)
#xtranslate EmfRecordType.ExtCreatePen            => (95)
#xtranslate EmfRecordType.PolyTextOutA            => (96)
#xtranslate EmfRecordType.PolyTextOutW            => (97)
#xtranslate EmfRecordType.SetICMMode              => (98)
#xtranslate EmfRecordType.CreateColorSpace        => (99)
#xtranslate EmfRecordType.SetColorSpace           => (100)
#xtranslate EmfRecordType.DeleteColorSpace        => (101)
#xtranslate EmfRecordType.GLSRecord               => (102)
#xtranslate EmfRecordType.GLSBoundedRecord        => (103)
#xtranslate EmfRecordType.PixelFormat             => (104)
#xtranslate EmfRecordType.DrawEscape              => (105)
#xtranslate EmfRecordType.ExtEscape               => (106)
#xtranslate EmfRecordType.StartDoc                => (107)
#xtranslate EmfRecordType.SmallTextOut            => (108)
#xtranslate EmfRecordType.ForceUFIMapping         => (109)
#xtranslate EmfRecordType.NamedEscape             => (110)
#xtranslate EmfRecordType.ColorCorrectPalette     => (111)
#xtranslate EmfRecordType.SetICMProfileA          => (112)
#xtranslate EmfRecordType.SetICMProfileW          => (113)
#xtranslate EmfRecordType.AlphaBlend              => (114)
#xtranslate EmfRecordType.SetLayout               => (115)
#xtranslate EmfRecordType.TransparentBlt          => (116)
#xtranslate EmfRecordType.Reserved_117            => (117)
#xtranslate EmfRecordType.GradientFill            => (118)
#xtranslate EmfRecordType.SetLinkedUFIs           => (119)
#xtranslate EmfRecordType.SetTextJustification    => (120)
#xtranslate EmfRecordType.ColorMatchToTargetW     => (121)
#xtranslate EmfRecordType.CreateColorSpaceW       => (122)
#xtranslate EmfRecordType.Max                     => (122)
#xtranslate EmfRecordType.Min                     => (1)
//-------------------------------------------------------------------------------------------------------------------------)
#xtranslate EmfPlusRecordType.Invalid                         => (0x4000)
#xtranslate EmfPlusRecordType.Header                          => (0x4000 + 1 )
#xtranslate EmfPlusRecordType.EndOfFile                       => (0x4000 + 2 )
#xtranslate EmfPlusRecordType.Comment                         => (0x4000 + 3 )
#xtranslate EmfPlusRecordType.GetDC                           => (0x4000 + 4 )
#xtranslate EmfPlusRecordType.MultiFormatStart                => (0x4000 + 5 )
#xtranslate EmfPlusRecordType.MultiFormatSection              => (0x4000 + 6 )
#xtranslate EmfPlusRecordType.MultiFormatEnd                  => (0x4000 + 7 )
#xtranslate EmfPlusRecordType.Object                          => (0x4000 + 8 )
#xtranslate EmfPlusRecordType.Clear                           => (0x4000 + 9 )
#xtranslate EmfPlusRecordType.FillRects                       => (0x4000 + 10)
#xtranslate EmfPlusRecordType.DrawRects                       => (0x4000 + 11)
#xtranslate EmfPlusRecordType.FillPolygon                     => (0x4000 + 12)
#xtranslate EmfPlusRecordType.DrawLines                       => (0x4000 + 13)
#xtranslate EmfPlusRecordType.FillEllipse                     => (0x4000 + 14)
#xtranslate EmfPlusRecordType.DrawEllipse                     => (0x4000 + 15)
#xtranslate EmfPlusRecordType.FillPie                         => (0x4000 + 16)
#xtranslate EmfPlusRecordType.DrawPie                         => (0x4000 + 17)
#xtranslate EmfPlusRecordType.DrawArc                         => (0x4000 + 18)
#xtranslate EmfPlusRecordType.FillRegion                      => (0x4000 + 19)
#xtranslate EmfPlusRecordType.FillPath                        => (0x4000 + 20)
#xtranslate EmfPlusRecordType.DrawPath                        => (0x4000 + 21)
#xtranslate EmfPlusRecordType.FillClosedCurve                 => (0x4000 + 22)
#xtranslate EmfPlusRecordType.DrawClosedCurve                 => (0x4000 + 23)
#xtranslate EmfPlusRecordType.DrawCurve                       => (0x4000 + 24)
#xtranslate EmfPlusRecordType.DrawBeziers                     => (0x4000 + 25)
#xtranslate EmfPlusRecordType.DrawImage                       => (0x4000 + 26)
#xtranslate EmfPlusRecordType.DrawImagePoints                 => (0x4000 + 27)
#xtranslate EmfPlusRecordType.DrawString                      => (0x4000 + 28)
#xtranslate EmfPlusRecordType.SetRenderingOrigin              => (0x4000 + 29)
#xtranslate EmfPlusRecordType.SetAntiAliasMode                => (0x4000 + 30)
#xtranslate EmfPlusRecordType.SetTextRenderingHint            => (0x4000 + 31)
#xtranslate EmfPlusRecordType.SetTextContrast                 => (0x4000 + 32)
#xtranslate EmfPlusRecordType.SetInterpolationMode            => (0x4000 + 33)
#xtranslate EmfPlusRecordType.SetPixelOffsetMode              => (0x4000 + 34)
#xtranslate EmfPlusRecordType.SetCompositingMode              => (0x4000 + 35)
#xtranslate EmfPlusRecordType.SetCompositingQuality           => (0x4000 + 36)
#xtranslate EmfPlusRecordType.Save                            => (0x4000 + 37)
#xtranslate EmfPlusRecordType.Restore                         => (0x4000 + 38)
#xtranslate EmfPlusRecordType.BeginContainer                  => (0x4000 + 39)
#xtranslate EmfPlusRecordType.BeginContainerNoParams          => (0x4000 + 40)
#xtranslate EmfPlusRecordType.EndContainer                    => (0x4000 + 41)
#xtranslate EmfPlusRecordType.SetWorldTransform               => (0x4000 + 42)
#xtranslate EmfPlusRecordType.ResetWorldTransform             => (0x4000 + 43)
#xtranslate EmfPlusRecordType.MultiplyWorldTransform          => (0x4000 + 44)
#xtranslate EmfPlusRecordType.TranslateWorldTransform         => (0x4000 + 45)
#xtranslate EmfPlusRecordType.ScaleWorldTransform             => (0x4000 + 46)
#xtranslate EmfPlusRecordType.RotateWorldTransform            => (0x4000 + 47)
#xtranslate EmfPlusRecordType.SetPageTransform                => (0x4000 + 48)
#xtranslate EmfPlusRecordType.ResetClip                       => (0x4000 + 49)
#xtranslate EmfPlusRecordType.SetClipRect                     => (0x4000 + 50)
#xtranslate EmfPlusRecordType.SetClipPath                     => (0x4000 + 51)
#xtranslate EmfPlusRecordType.SetClipRegion                   => (0x4000 + 52)
#xtranslate EmfPlusRecordType.OffsetClip                      => (0x4000 + 53)
#xtranslate EmfPlusRecordType.DrawDriverString                => (0x4000 + 54)
#xtranslate EmfPlusRecordType.Max                             => (0x4000 + 54)
#xtranslate EmfPlusRecordType.Min                             => (EmfPlusRecordType.Header)
// ---------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
#xtranslate PropertyTag.TypeByte                          =>   1
#xtranslate PropertyTag.TypeASCII                         =>   2
#xtranslate PropertyTag.TypeShort                         =>   3
#xtranslate PropertyTag.TypeLong                          =>   4
#xtranslate PropertyTag.TypeRational                      =>   5
#xtranslate PropertyTag.TypeUndefined                     =>   7
#xtranslate PropertyTag.TypeSLONG                         =>   9
#xtranslate PropertyTag.TypeSRational                     =>   10
#xtranslate PropertyTag.ExifIFD                           =>   0x8769
#xtranslate PropertyTag.GpsIFD                            =>   0x8825
#xtranslate PropertyTag.NewSubfileType                    =>   0x00FE
#xtranslate PropertyTag.SubfileType                       =>   0x00FF
#xtranslate PropertyTag.ImageWidth                        =>   0x0100
#xtranslate PropertyTag.ImageHeight                       =>   0x0101
#xtranslate PropertyTag.BitsPerSample                     =>   0x0102
#xtranslate PropertyTag.Compression                       =>   0x0103
#xtranslate PropertyTag.PhotometricInterp                 =>   0x0106
#xtranslate PropertyTag.ThreshHolding                     =>   0x0107
#xtranslate PropertyTag.CellWidth                         =>   0x0108
#xtranslate PropertyTag.CellHeight                        =>   0x0109
#xtranslate PropertyTag.FillOrder                         =>   0x010A
#xtranslate PropertyTag.DocumentName                      =>   0x010D
#xtranslate PropertyTag.ImageDescription                  =>   0x010E
#xtranslate PropertyTag.EquipMake                         =>   0x010F
#xtranslate PropertyTag.EquipModel                        =>   0x0110
#xtranslate PropertyTag.StripOffsets                      =>   0x0111
#xtranslate PropertyTag.Orientation                       =>   0x0112
#xtranslate PropertyTag.SamplesPerPixel                   =>   0x0115
#xtranslate PropertyTag.RowsPerStrip                      =>   0x0116
#xtranslate PropertyTag.StripBytesCount                   =>   0x0117
#xtranslate PropertyTag.MinSampleValue                    =>   0x0118
#xtranslate PropertyTag.MaxSampleValue                    =>   0x0119
#xtranslate PropertyTag.XResolution                       =>   0x011A
#xtranslate PropertyTag.YResolution                       =>   0x011B
#xtranslate PropertyTag.PlanarConfig                      =>   0x011C
#xtranslate PropertyTag.PageName                          =>   0x011D
#xtranslate PropertyTag.XPosition                         =>   0x011E
#xtranslate PropertyTag.YPosition                         =>   0x011F
#xtranslate PropertyTag.FreeOffset                        =>   0x0120
#xtranslate PropertyTag.FreeByteCounts                    =>   0x0121
#xtranslate PropertyTag.GrayResponseUnit                  =>   0x0122
#xtranslate PropertyTag.GrayResponseCurve                 =>   0x0123
#xtranslate PropertyTag.T4Option                          =>   0x0124
#xtranslate PropertyTag.T6Option                          =>   0x0125
#xtranslate PropertyTag.ResolutionUnit                    =>   0x0128
#xtranslate PropertyTag.PageNumber                        =>   0x0129
#xtranslate PropertyTag.TransferFuncition                 =>   0x012D
#xtranslate PropertyTag.SoftwareUsed                      =>   0x0131
#xtranslate PropertyTag.DateTime                          =>   0x0132
#xtranslate PropertyTag.Artist                            =>   0x013B
#xtranslate PropertyTag.HostComputer                      =>   0x013C
#xtranslate PropertyTag.Predictor                         =>   0x013D
#xtranslate PropertyTag.WhitePoint                        =>   0x013E
#xtranslate PropertyTag.PrimaryChromaticities             =>   0x013F
#xtranslate PropertyTag.ColorMap                          =>   0x0140
#xtranslate PropertyTag.HalftoneHints                     =>   0x0141
#xtranslate PropertyTag.TileWidth                         =>   0x0142
#xtranslate PropertyTag.TileLength                        =>   0x0143
#xtranslate PropertyTag.TileOffset                        =>   0x0144
#xtranslate PropertyTag.TileByteCounts                    =>   0x0145
#xtranslate PropertyTag.InkSet                            =>   0x014C
#xtranslate PropertyTag.InkNames                          =>   0x014D
#xtranslate PropertyTag.NumberOfInks                      =>   0x014E
#xtranslate PropertyTag.DotRange                          =>   0x0150
#xtranslate PropertyTag.TargetPrinter                     =>   0x0151
#xtranslate PropertyTag.ExtraSamples                      =>   0x0152
#xtranslate PropertyTag.SampleFormat                      =>   0x0153
#xtranslate PropertyTag.SMinSampleValue                   =>   0x0154
#xtranslate PropertyTag.SMaxSampleValue                   =>   0x0155
#xtranslate PropertyTag.TransferRange                     =>   0x0156
#xtranslate PropertyTag.JPEGProc                          =>   0x0200
#xtranslate PropertyTag.JPEGInterFormat                   =>   0x0201
#xtranslate PropertyTag.JPEGInterLength                   =>   0x0202
#xtranslate PropertyTag.JPEGRestartInterval               =>   0x0203
#xtranslate PropertyTag.JPEGLosslessPredictors            =>   0x0205
#xtranslate PropertyTag.JPEGPointTransforms               =>   0x0206
#xtranslate PropertyTag.JPEGQTables                       =>   0x0207
#xtranslate PropertyTag.JPEGDCTables                      =>   0x0208
#xtranslate PropertyTag.JPEGACTables                      =>   0x0209
#xtranslate PropertyTag.YCbCrCoefficients                 =>   0x0211
#xtranslate PropertyTag.YCbCrSubsampling                  =>   0x0212
#xtranslate PropertyTag.YCbCrPositioning                  =>   0x0213
#xtranslate PropertyTag.REFBlackWhite                     =>   0x0214
#xtranslate PropertyTag.ICCProfile                        =>   0x8773
#xtranslate PropertyTag.Gamma                             =>   0x0301
#xtranslate PropertyTag.ICCProfileDescriptor              =>   0x0302
#xtranslate PropertyTag.SRGBRenderingIntent               =>   0x0303
#xtranslate PropertyTag.ImageTitle                        =>   0x0320
#xtranslate PropertyTag.Copyright                         =>   0x8298
#xtranslate PropertyTag.ResolutionXUnit                   =>   0x5001
#xtranslate PropertyTag.ResolutionYUnit                   =>   0x5002
#xtranslate PropertyTag.ResolutionXLengthUnit             =>   0x5003
#xtranslate PropertyTag.ResolutionYLengthUnit             =>   0x5004
#xtranslate PropertyTag.PrintFlags                        =>   0x5005
#xtranslate PropertyTag.PrintFlagsVersion                 =>   0x5006
#xtranslate PropertyTag.PrintFlagsCrop                    =>   0x5007
#xtranslate PropertyTag.PrintFlagsBleedWidth              =>   0x5008
#xtranslate PropertyTag.PrintFlagsBleedWidthScale         =>   0x5009
#xtranslate PropertyTag.HalftoneLPI                       =>   0x500A
#xtranslate PropertyTag.HalftoneLPIUnit                   =>   0x500B
#xtranslate PropertyTag.HalftoneDegree                    =>   0x500C
#xtranslate PropertyTag.HalftoneShape                     =>   0x500D
#xtranslate PropertyTag.HalftoneMisc                      =>   0x500E
#xtranslate PropertyTag.HalftoneScreen                    =>   0x500F
#xtranslate PropertyTag.JPEGQuality                       =>   0x5010
#xtranslate PropertyTag.GridSize                          =>   0x5011
#xtranslate PropertyTag.ThumbnailFormat                   =>   0x5012
#xtranslate PropertyTag.ThumbnailWidth                    =>   0x5013
#xtranslate PropertyTag.ThumbnailHeight                   =>   0x5014
#xtranslate PropertyTag.ThumbnailColorDepth               =>   0x5015
#xtranslate PropertyTag.ThumbnailPlanes                   =>   0x5016
#xtranslate PropertyTag.ThumbnailRawBytes                 =>   0x5017
#xtranslate PropertyTag.ThumbnailSize                     =>   0x5018
#xtranslate PropertyTag.ThumbnailCompressedSize           =>   0x5019
#xtranslate PropertyTag.ColorTransferFunction             =>   0x501A
#xtranslate PropertyTag.ThumbnailData                     =>   0x501B
#xtranslate PropertyTag.ThumbnailImageWidth               =>   0x5020
#xtranslate PropertyTag.ThumbnailImageHeight              =>   0x5021
#xtranslate PropertyTag.ThumbnailBitsPerSample            =>   0x5022
#xtranslate PropertyTag.ThumbnailCompression              =>   0x5023
#xtranslate PropertyTag.ThumbnailPhotometricInterp        =>   0x5024
#xtranslate PropertyTag.ThumbnailImageDescription         =>   0x5025
#xtranslate PropertyTag.ThumbnailEquipMake                =>   0x5026
#xtranslate PropertyTag.ThumbnailEquipModel               =>   0x5027
#xtranslate PropertyTag.ThumbnailStripOffsets             =>   0x5028
#xtranslate PropertyTag.ThumbnailOrientation              =>   0x5029
#xtranslate PropertyTag.ThumbnailSamplesPerPixel          =>   0x502A
#xtranslate PropertyTag.ThumbnailRowsPerStrip             =>   0x502B
#xtranslate PropertyTag.ThumbnailStripBytesCount          =>   0x502C
#xtranslate PropertyTag.ThumbnailResolutionX              =>   0x502D
#xtranslate PropertyTag.ThumbnailResolutionY              =>   0x502E
#xtranslate PropertyTag.ThumbnailPlanarConfig             =>   0x502F
#xtranslate PropertyTag.ThumbnailResolutionUnit           =>   0x5030
#xtranslate PropertyTag.ThumbnailTransferFunction         =>   0x5031
#xtranslate PropertyTag.ThumbnailSoftwareUsed             =>   0x5032
#xtranslate PropertyTag.ThumbnailDateTime                 =>   0x5033
#xtranslate PropertyTag.ThumbnailArtist                   =>   0x5034
#xtranslate PropertyTag.ThumbnailWhitePoint               =>   0x5035
#xtranslate PropertyTag.ThumbnailPrimaryChromaticities    =>   0x5036
#xtranslate PropertyTag.ThumbnailYCbCrCoefficients        =>   0x5037
#xtranslate PropertyTag.ThumbnailYCbCrSubsampling         =>   0x5038
#xtranslate PropertyTag.ThumbnailYCbCrPositioning         =>   0x5039
#xtranslate PropertyTag.ThumbnailRefBlackWhite            =>   0x503A
#xtranslate PropertyTag.ThumbnailCopyRight                =>   0x503B
#xtranslate PropertyTag.LuminanceTable                    =>   0x5090
#xtranslate PropertyTag.ChrominanceTable                  =>   0x5091
#xtranslate PropertyTag.FrameDelay                        =>   0x5100
#xtranslate PropertyTag.LoopCount                         =>   0x5101
#xtranslate PropertyTag.PixelUnit                         =>   0x5110
#xtranslate PropertyTag.PixelPerUnitX                     =>   0x5111
#xtranslate PropertyTag.PixelPerUnitY                     =>   0x5112
#xtranslate PropertyTag.PaletteHistogram                  =>   0x5113
#xtranslate PropertyTag.ExifExposureTime                  =>   0x829A
#xtranslate PropertyTag.ExifFNumber                       =>   0x829D
#xtranslate PropertyTag.ExifExposureProg                  =>   0x8822
#xtranslate PropertyTag.ExifSpectralSense                 =>   0x8824
#xtranslate PropertyTag.ExifISOSpeed                      =>   0x8827
#xtranslate PropertyTag.ExifOECF                          =>   0x8828
#xtranslate PropertyTag.ExifVer                           =>   0x9000
#xtranslate PropertyTag.ExifDTOrig                        =>   0x9003
#xtranslate PropertyTag.ExifDTDigitized                   =>   0x9004
#xtranslate PropertyTag.ExifCompConfig                    =>   0x9101
#xtranslate PropertyTag.ExifCompBPP                       =>   0x9102
#xtranslate PropertyTag.ExifShutterSpeed                  =>   0x9201
#xtranslate PropertyTag.ExifAperture                      =>   0x9202
#xtranslate PropertyTag.ExifBrightness                    =>   0x9203
#xtranslate PropertyTag.ExifExposureBias                  =>   0x9204
#xtranslate PropertyTag.ExifMaxAperture                   =>   0x9205
#xtranslate PropertyTag.ExifSubjectDist                   =>   0x9206
#xtranslate PropertyTag.ExifMeteringMode                  =>   0x9207
#xtranslate PropertyTag.ExifLightSource                   =>   0x9208
#xtranslate PropertyTag.ExifFlash                         =>   0x9209
#xtranslate PropertyTag.ExifFocalLength                   =>   0x920A
#xtranslate PropertyTag.ExifMakerNote                     =>   0x927C
#xtranslate PropertyTag.ExifUserComment                   =>   0x9286
#xtranslate PropertyTag.ExifDTSubsec                      =>   0x9290
#xtranslate PropertyTag.ExifDTOrigSS                      =>   0x9291
#xtranslate PropertyTag.ExifDTDigSS                       =>   0x9292
#xtranslate PropertyTag.ExifFPXVer                        =>   0xA000
#xtranslate PropertyTag.ExifColorSpace                    =>   0xA001
#xtranslate PropertyTag.ExifPixXDim                       =>   0xA002
#xtranslate PropertyTag.ExifPixYDim                       =>   0xA003
#xtranslate PropertyTag.ExifRelatedWav                    =>   0xA004
#xtranslate PropertyTag.ExifInterop                       =>   0xA005
#xtranslate PropertyTag.ExifFlashEnergy                   =>   0xA20B
#xtranslate PropertyTag.ExifSpatialFR                     =>   0xA20C
#xtranslate PropertyTag.ExifFocalXRes                     =>   0xA20E
#xtranslate PropertyTag.ExifFocalYRes                     =>   0xA20F
#xtranslate PropertyTag.ExifFocalResUnit                  =>   0xA210
#xtranslate PropertyTag.ExifSubjectLoc                    =>   0xA214
#xtranslate PropertyTag.ExifExposureIndex                 =>   0xA215
#xtranslate PropertyTag.ExifSensingMethod                 =>   0xA217
#xtranslate PropertyTag.ExifFileSource                    =>   0xA300
#xtranslate PropertyTag.ExifSceneType                     =>   0xA301
#xtranslate PropertyTag.ExifCfaPattern                    =>   0xA302
#xtranslate PropertyTag.GpsVer                            =>   0x0000
#xtranslate PropertyTag.GpsLatitudeRef                    =>   0x0001
#xtranslate PropertyTag.GpsLatitude                       =>   0x0002
#xtranslate PropertyTag.GpsLongitudeRef                   =>   0x0003
#xtranslate PropertyTag.GpsLongitude                      =>   0x0004
#xtranslate PropertyTag.GpsAltitudeRef                    =>   0x0005
#xtranslate PropertyTag.GpsAltitude                       =>   0x0006
#xtranslate PropertyTag.GpsGpsTime                        =>   0x0007
#xtranslate PropertyTag.GpsGpsSatellites                  =>   0x0008
#xtranslate PropertyTag.GpsGpsStatus                      =>   0x0009
#xtranslate PropertyTag.GpsGpsMeasureMode                 =>   0x000A
#xtranslate PropertyTag.GpsGpsDop                         =>   0x000B
#xtranslate PropertyTag.GpsSpeedRef                       =>   0x000C
#xtranslate PropertyTag.GpsSpeed                          =>   0x000D
#xtranslate PropertyTag.GpsTrackRef                       =>   0x000E
#xtranslate PropertyTag.GpsTrack                          =>   0x000F
#xtranslate PropertyTag.GpsImgDirRef                      =>   0x0010
#xtranslate PropertyTag.GpsImgDir                         =>   0x0011
#xtranslate PropertyTag.GpsMapDatum                       =>   0x0012
#xtranslate PropertyTag.GpsDestLatRef                     =>   0x0013
#xtranslate PropertyTag.GpsDestLat                        =>   0x0014
#xtranslate PropertyTag.GpsDestLongRef                    =>   0x0015
#xtranslate PropertyTag.GpsDestLong                       =>   0x0016
#xtranslate PropertyTag.GpsDestBearRef                    =>   0x0017
#xtranslate PropertyTag.GpsDestBear                       =>   0x0018
#xtranslate PropertyTag.GpsDestDistRef                    =>   0x0019
#xtranslate PropertyTag.GpsDestDist                       =>   0x001A

#xtranslate MatrixOrderPrepend                            => 0
#xtranslate MatrixOrderAppend                             => 1

#xtranslate LinearGradientModeHorizontal                  => 0
#xtranslate LinearGradientModeVertical                    => 1
#xtranslate LinearGradientModeForwardDiagonal             => 2
#xtranslate LinearGradientModeBackwardDiagonal            => 3

#xtranslate WrapModeTile                                  => 0
#xtranslate WrapModeTileFlipX                             => 1
#xtranslate WrapModeTileFlipY                             => 2
#xtranslate WrapModeTileFlipXY                            => 3
#xtranslate WrapModeClamp                                 => 4

#xtranslate PenAlignmentCenter                            => 0
#xtranslate PenAlignmentInset                             => 1

#xtranslate DashCapFlat                                   => 0
#xtranslate DashCapRound                                  => 2
#xtranslate DashCapTriangle                               => 3

#xtranslate DashStyleSolid                                => 0
#xtranslate DashStyleDash                                 => 1
#xtranslate DashStyleDot                                  => 2
#xtranslate DashStyleDashDot                              => 3
#xtranslate DashStyleDashDotDot                           => 4
#xtranslate DashStyleCustom                               => 5

#xtranslate LineCapFlat                                   => 0
#xtranslate LineCapSquare                                 => 1
#xtranslate LineCapRound                                  => 2
#xtranslate LineCapTriangle                               => 3
#xtranslate LineCapNoAnchor                               => 0x10
#xtranslate LineCapSquareAnchor                           => 0x11
#xtranslate LineCapRoundAnchor                            => 0x12
#xtranslate LineCapDiamondAnchor                          => 0x13
#xtranslate LineCapArrowAnchor                            => 0x14
#xtranslate LineCapCustom                                 => 0xff

#xtranslate LineJoinMiter                                 => 0
#xtranslate LineJoinBevel                                 => 1
#xtranslate LineJoinRound                                 => 2
#xtranslate LineJoinMiterClipped                          => 3

#xtranslate FillModeAlternate                             => 0
#xtranslate FillModeWinding                               => 1

#xtranslate PathPointTypeStart                            => 0
#xtranslate PathPointTypeLine                             => 1
#xtranslate PathPointTypeBezier                           => 3
#xtranslate PathPointTypePathTypeMask                     => 0x7
#xtranslate PathPointTypePathDashMode                     => 0x10

#xtranslate PathPointTypePathMarker                       => 0x20
#xtranslate PathPointTypeCloseSubpath                     => 0x80
#xtranslate PathPointTypeBezier3                          => 3

#xtranslate FontStyleRegular                              => 0
#xtranslate FontStyleBold                                 => 1
#xtranslate FontStyleItalic                               => 2
#xtranslate FontStyleBoldItalic                           => 3
#xtranslate FontStyleUnderline                            => 4
#xtranslate FontStyleStrikeout                            => 8

#xtranslate StringFormatFlagsDirectionRightToLeft         => 0x0001
#xtranslate StringFormatFlagsDirectionVertical            => 0x0002
#xtranslate StringFormatFlagsNoFitBlackBox                => 0x0004
#xtranslate StringFormatFlagsDisplayFormatControl         => 0x0020
#xtranslate StringFormatFlagsNoFontFallback               => 0x0400
#xtranslate StringFormatFlagsMeasureTrailingSpaces        => 0x0800
#xtranslate StringFormatFlagsNoWrap                       => 0x1000
#xtranslate StringFormatFlagsLineLimit                    => 0x2000
#xtranslate StringFormatFlagsNoClip                       => 0x4000

#xtranslate UnitWorld                                     => 0
#xtranslate UnitDisplay                                   => 1
#xtranslate UnitPixel                                     => 2
#xtranslate UnitPoint                                     => 3
#xtranslate UnitInch                                      => 4
#xtranslate UnitDocument                                  => 5
#xtranslate UnitMillimeter                                => 6


#xtranslate StringAlignmentNear                           => 0
#xtranslate StringAlignmentCenter                         => 1
#xtranslate StringAlignmentFar                            => 2

#xtranslate StringDigitSubstituteUser                     => 0
#xtranslate StringDigitSubstituteNone                     => 1
#xtranslate StringDigitSubstituteNational                 => 2
#xtranslate StringDigitSubstituteTraditional              => 3

#xtranslate HotkeyPrefixNone                              => 0
#xtranslate HotkeyPrefixShow                              => 1
#xtranslate HotkeyPrefixHide                              => 2

#xtranslate StringTrimmingNone                            => 0
#xtranslate StringTrimmingCharacter                       => 1
#xtranslate StringTrimmingWord                            => 2
#xtranslate StringTrimmingEllipsisCharacter               => 3
#xtranslate StringTrimmingEllipsisWord                    => 4
#xtranslate StringTrimmingEllipsisPath                    => 5

#xtranslate WarpModePerspective                           => 0
#xtranslate WarpModeBilinear                              => 1

#xtranslate CombineModeReplace                            => 0
#xtranslate CombineModeIntersect                          => 1
#xtranslate CombineModeUnion                              => 2
#xtranslate CombineModeXor                                => 3
#xtranslate CombineModeExclude                            => 4
#xtranslate CombineModeComplement                         => 5

#xtranslate ColorAdjustTypeDefault                        => 0
#xtranslate ColorAdjustTypeBitmap                         => 1
#xtranslate ColorAdjustTypeBrush                          => 2
#xtranslate ColorAdjustTypePen                            => 3
#xtranslate ColorAdjustTypeText                           => 4
#xtranslate ColorAdjustTypeCount                          => 5
#xtranslate ColorAdjustTypeAny                            => 6

#xtranslate ColorMatrixFlagsDefault                       => 0
#xtranslate ColorMatrixFlagsSkipGrays                     => 1
#xtranslate ColorMatrixFlagsAltGray                       => 2

#xtranslate HistogramFormatARGB                           => 0
#xtranslate HistogramFormatPARGB                          => 1
#xtranslate HistogramFormatRGB                            => 2
#xtranslate HistogramFormatGray                           => 3
#xtranslate HistogramFormatB                              => 4
#xtranslate HistogramFormatG                              => 5
#xtranslate HistogramFormatR                              => 6
#xtranslate HistogramFormatA                              => 7

#xtranslate ImageLockModeRead                             => 0x1
#xtranslate ImageLockModeWrite                            => 0x2
#xtranslate ImageLockModeUserInputBuf                     => 0x4 



#define    PixelFormatDontCare        0

#define    PixelFormatIndexed      0x00010000 // Indexes into a palette
#define    PixelFormatGDI          0x00020000 // Is a GDI-supported format
#define    PixelFormatAlpha        0x00040000 // Has an alpha component
#define    PixelFormatPAlpha       0x00080000 // Pre-multiplied alpha
#define    PixelFormatExtended     0x00100000 // Extended color 16 bits/channel
#define    PixelFormatCanonical    0x00200000

#define    PixelFormat1bppIndexed     hb_bitOr(1,  hb_bitShift( 1, 8), PixelFormatIndexed , PixelFormatGDI)
#define    PixelFormat4bppIndexed     hb_bitOr(2,  hb_bitShift( 4, 8), PixelFormatIndexed , PixelFormatGDI)
#define    PixelFormat8bppIndexed     hb_bitOr(3,  hb_bitShift( 8, 8), PixelFormatIndexed , PixelFormatGDI)
#define    PixelFormat16bppGrayScale  hb_bitOr(4,  hb_bitShift(16, 8), PixelFormatExtended)
#define    PixelFormat16bppRGB555     hb_bitOr(5,  hb_bitShift(16, 8), PixelFormatGDI)
#define    PixelFormat16bppRGB565     hb_bitOr(6,  hb_bitShift(16, 8), PixelFormatGDI)
#define    PixelFormat16bppARGB1555   hb_bitOr(7,  hb_bitShift(16, 8), PixelFormatAlpha , PixelFormatGDI)
#define    PixelFormat24bppRGB        hb_bitOr(8,  hb_bitShift(24, 8), PixelFormatGDI)
#define    PixelFormat32bppRGB        hb_bitOr(9,  hb_bitShift(32, 8), PixelFormatGDI)
#define    PixelFormat32bppARGB       hb_bitOr(10, hb_bitShift(32, 8), PixelFormatAlpha , PixelFormatGDI , PixelFormatCanonical)
#define    PixelFormat32bppPARGB      hb_bitOr(11, hb_bitShift(32, 8), PixelFormatAlpha , PixelFormatPAlpha , PixelFormatGDI)
#define    PixelFormat48bppRGB        hb_bitOr(12, hb_bitShift(48, 8), PixelFormatExtended)
#define    PixelFormat64bppARGB       hb_bitOr(13, hb_bitShift(64, 8), PixelFormatAlpha  , PixelFormatCanonical , PixelFormatExtended)
#define    PixelFormat64bppPARGB      hb_bitOr(14, hb_bitShift(64, 8), PixelFormatAlpha  , PixelFormatPAlpha , PixelFormatExtended)
#define    PixelFormatMax             15

// ---------------------------------------------------------------------------
#define GDIP_EMFPLUSFLAGS_DISPLAY     1
// ---------------------------------------------------------------------------
#define ALPHA_SHIFT 24
#define RED_SHIFT   16
#define GREEN_SHIFT 8
#define BLUE_SHIFT  0
#define ALPHA_MASK  nLShift(0xFF , ALPHA_SHIFT )
//-------------------------------------------------------------------------------------------------------------------------

#translate ARGB( <alpha>, <nRed>, <nGreen>, <nBlue> ) => ;
              ( ( <alpha> * ( 2 ^ 24 ) ) + ( <nRed> * ( 2 ^ 16 ) ) + ( <nGreen> * ( 2 ^ 8 ) ) + <nBlue> )

#xtranslate PixelFormat.Indexed         => 0x00010000
#xtranslate PixelFormat.GDI             => 0x00020000
#xtranslate PixelFormat.Alpha           => 0x00040000
#xtranslate PixelFormat.PAlpha          => 0x00080000
#xtranslate PixelFormat.Extended        => 0x00100000
#xtranslate PixelFormat.Canonical       => 0x00200000
#xtranslate PixelFormat.Undefined       => 0
#xtranslate PixelFormat.DontCare        => 0
#xtranslate PixelFormat.1bppIndexed     => nOr(1 ,nLShift( 1,8),PixelFormat.Indexed,PixelFormat.GDI)
#xtranslate PixelFormat.4bppIndexed     => nOr(2 ,nLShift( 4,8),PixelFormat.Indexed,PixelFormat.GDI)
#xtranslate PixelFormat.8bppIndexed     => nOr(3 ,nLShift( 8,8),PixelFormat.Indexed,PixelFormat.GDI)
#xtranslate PixelFormat.16bppGrayScale  => nOr(4 ,nLShift(16,8),PixelFormat.Extended)
#xtranslate PixelFormat.16bppRGB555     => nOr(5 ,nLShift(16,8),PixelFormat.GDI)
#xtranslate PixelFormat.16bppRGB565     => nOr(6 ,nLShift(16,8),PixelFormat.GDI)
#xtranslate PixelFormat.16bppARGB1555   => nOr(7 ,nLShift(16,8),PixelFormat.Alpha,PixelFormat.GDI)
#xtranslate PixelFormat.24bppRGB        => nOr(8 ,nLShift(24,8),PixelFormat.GDI)
#xtranslate PixelFormat.32bppRGB        => nOr(9 ,nLShift(32,8),PixelFormat.GDI)
#xtranslate PixelFormat.32bppARGB       => nOr(10,nLShift(32,8),PixelFormat.Alpha,PixelFormat.GDI,PixelFormat.Canonical)
#xtranslate PixelFormat.32bppPARGB      => nOr(11,nLShift(32,8),PixelFormat.Alpha,PixelFormat.PAlpha,PixelFormat.GDI)
#xtranslate PixelFormat.48bppRGB        => nOr(12,nLShift(48,8),PixelFormat.Extended)
#xtranslate PixelFormat.64bppARGB       => nOr(13,nLShift(64,8),PixelFormat.Alpha,PixelFormat.Canonical,PixelFormat.Extended)
#xtranslate PixelFormat.64bppPARGB      => nOr(14,nLShift(64,8),PixelFormat.Alpha,PixelFormat.PAlpha ,PixelFormat.Extended)
#xtranslate PixelFormat.Max             => 15
// ---------------------------------------------------------------------------


