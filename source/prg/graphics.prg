// TODO: Revisar los métodos y sus sobrecargas y hacer los que falten
//Constructors
//
//The Graphics class has the following constructors.
//
//Constructor                                                              Description
//Graphics::Graphics(HDC)                                                  Creates a Graphics::Graphics object that is associated with a specified device context.
//Graphics::Graphics(HDC,HANDLE)                                           Creates a Graphics::Graphics object that is associated with a specified device context and a specified device.
//Graphics::Graphics(HWND,BOOL)                                            Creates a Graphics::Graphics object that is associated with a specified window.
//Graphics::Graphics(Image*)                                               Creates a Graphics::Graphics object that is associated with an Image object.
//
//
//Methods
//
//The Graphics class has the following methods.
//
//Method                                                                   Description
//OK, Graphics::AddMetafileComment                                             The Graphics::AddMetafileComment method adds a text comment to an existing metafile.
//OK, Graphics::BeginContainer()                                               The Graphics::BeginContainer method begins a new graphics container.
//Graphics::BeginContainer(Rect&,Rect&,Unit)                               The Graphics::BeginContainer method begins a new graphics container.
//Graphics::BeginContainer(RectF&,RectF&,Unit)                             The Graphics::BeginContainer method begins a new graphics container.
//Graphics::Clear                                                          The Graphics::Clear method clears a Graphics object to a specified color.
//Graphics::DrawArc(Pen*,INT,INT,INT,INT,REAL,REAL)                        The Graphics::DrawArc method draws an arc. The arc is part of an ellipse.
//Graphics::DrawArc(Pen*,REAL,REAL,REAL,REAL,REAL,REAL)                    The Graphics::DrawArc method draws an arc. The arc is part of an ellipse.
//Graphics::DrawArc(Pen*,Rect&,REAL,REAL)                                  The Graphics::DrawArc method draws an arc. The arc is part of an ellipse.
//Graphics::DrawArc(Pen*,RectF&,REAL,REAL)                                 The Graphics::DrawArc method draws an arc. The arc is part of an ellipse.
//Graphics::DrawBezier(Pen*,INT,INT,INT,INT,INT,INT,INT,INT)               The Graphics::DrawBezier method draws a Bézier spline.
//Graphics::DrawBezier(Pen*,POINT&,POINT&,POINT&,POINT&)                   The Graphics::DrawBezier method draws a Bézier spline.
//Graphics::DrawBezier(Pen*,POINTF&,POINTF&,POINTF&,POINTF&)               The Graphics::DrawBezier method draws a Bézier spline.
//Graphics::DrawBezier(Pen*,REAL,REAL,REAL,REAL,REAL,REAL,REAL,REAL)       The Graphics::DrawBezier method draws a Bézier spline.
//Graphics::DrawBeziers(Pen*,Point*,INT)                                   The Graphics::DrawBeziers method draws a sequence of connected Bézier splines.
//Graphics::DrawBeziers(Pen*,PointF*,INT)                                  The Graphics::DrawBeziers method draws a sequence of connected Bézier splines.
//Graphics::DrawCachedBitmap                                               The Graphics::DrawCachedBitmap method draws the image stored in a CachedBitmap object.
//Graphics::DrawClosedCurve(Pen*,Point*,INT)                               The Graphics::DrawClosedCurve method draws a closed cardinal spline.
//Graphics::DrawClosedCurve(Pen*,Point*,INT,REAL)                          The Graphics::DrawClosedCurve method draws a closed cardinal spline.
//Graphics::DrawClosedCurve(Pen*,PointF*,INT)                              The Graphics::DrawClosedCurve method draws a closed cardinal spline.
//Graphics::DrawClosedCurve(Pen*,PointF*,INT,REAL)                         The Graphics::DrawClosedCurve method draws a closed cardinal spline.
//Graphics::DrawCurve(Pen*,Point*,INT)                                     The Graphics::DrawCurve method draws a cardinal spline.
//Graphics::DrawCurve(Pen*,Point*,INT,INT,INT,REAL)                        The Graphics::DrawCurve method draws a cardinal spline.
//Graphics::DrawCurve(Pen*,Point*,INT,REAL)                                The Graphics::DrawCurve method draws a cardinal spline.
//Graphics::DrawCurve(Pen*,PointF*,INT)                                    The Graphics::DrawCurve method draws a cardinal spline.
//Graphics::DrawCurve(Pen*,PointF*,INT,INT,INT,REAL)                       The Graphics::DrawCurve method draws a cardinal spline.
//Graphics::DrawCurve(Pen*,PointF*,INT,REAL)                               The Graphics::DrawCurve method draws a cardinal spline.
//Graphics::DrawDriverString                                               The Graphics::DrawDriverString method draws characters at the specified positions. The method gives the client complete control over the appearance of text. The method assumes that the client has already set up the format and layout to be applied.
//Graphics::DrawEllipse(Pen*,INT,INT,INT,INT)                              The Graphics::DrawEllipse method draws an ellipse.
//Graphics::DrawEllipse(Pen*,REAL,REAL,REAL,REAL)                          The Graphics::DrawEllipse method draws an ellipse.
//Graphics::DrawEllipse(Pen*,Rect&)                                        The Graphics::DrawEllipse method draws an ellipse.
//Graphics::DrawEllipse(Pen*,RectF&)                                       The Graphics::DrawEllipse method draws an ellipse.
//Graphics::DrawImage(Image*,INT,INT)                                      The Graphics::DrawImage method draws an image at a specified location.
//Graphics::DrawImage(Image*,INT,INT,INT,INT)                              The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,INT,INT,INT,INT,INT,INT,Unit)                 The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,Point&)                                       The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,Point*,INT)                                   The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,Point*,INT,INT,INT,INT,INT,Unit,ImageAttributes*,DrawImageAbort,VOID*) The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,PointF&)                                      The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,PointF*,INT)                                  The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,PointF*,INT,REAL,REAL,REAL,REAL,Unit,ImageAttributes*,DrawImageAbort,VOID*)  The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,REAL,REAL)                                    The Graphics::DrawImage method draws an image at a specified location.
//Graphics::DrawImage(Image*,REAL,REAL,REAL,REAL)                          The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,REAL,REAL,REAL,REAL,REAL,REAL,Unit)           The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,Rect&)                                        The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,Rect&,INT,INT,INT,INT,Unit,ImageAttributes*,DrawImageAbort,VOID*)  The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,RectF&)                                       The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,RectF&,REAL,REAL,REAL,REAL,Unit,ImageAttributes*,DrawImageAbort,VOID*)   The Graphics::DrawImage method draws an image.
//Graphics::DrawImage(Image*,RectF&,RectF&,Unit,ImageAttributes*)          The Graphics::DrawImage method draws a specified portion of an image at a specified location.
//Graphics::DrawImage(Image*,RectF*,Matrix*,Effect*,ImageAttributes*,Unit*) The method draws a portion of an image after applying a specified effect.
//Graphics::DrawLine(Pen*,INT,INT,INT,INT)                                 The Graphics::DrawLine method draws a line that connects two points.
//Graphics::DrawLine(Pen*,Point&,Point&)                                   The Graphics::DrawLine method draws a line that connects two points.
//Graphics::DrawLine(Pen*,PointF&,PointF&)                                 The Graphics::DrawLine method draws a line that connects two points.
//Graphics::DrawLine(Pen*,REAL,REAL,REAL,REAL)                             The Graphics::DrawLine method draws a line that connects two points.
//Graphics::DrawLines(Pen*,Point*,INT)                                     The Graphics::DrawLines method draws a sequence of connected lines.
//Graphics::DrawLines(Pen*,PointF*,INT)                                    The Graphics::DrawLines method draws a sequence of connected lines.
//Graphics::DrawPath                                                       The Graphics::DrawPath method draws a sequence of lines and curves defined by a GraphicsPath object.
//Graphics::DrawPie(Pen*,INT,INT,INT,INT,REAL,REAL)                        The Graphics::DrawPie method draws a pie.
//Graphics::DrawPie(Pen*,REAL,REAL,REAL,REAL,REAL,REAL)                    The Graphics::DrawPie method draws a pie.
//Graphics::DrawPie(Pen*,Rect&,REAL,REAL)                                  The Graphics::DrawPie method draws a pie.
//Graphics::DrawPie(Pen*,RectF&,REAL,REAL)                                 The Graphics::DrawPie method draws a pie.
//Graphics::DrawPolygon(Pen*,Point*,INT*)                                  The Graphics::DrawPolygon method draws a polygon.
//Graphics::DrawPolygon(Pen*,PointF*,INT*)                                 The Graphics::DrawPolygon method draws a polygon.
//Graphics::DrawRectangle(Pen*,INT,INT,INT,INT)                            The Graphics::DrawRectangle method draws a rectangle.
//Graphics::DrawRectangle(Pen*,REAL,REAL,REAL,REAL)                        The Graphics::DrawRectangle method draws a rectangle.
//Graphics::DrawRectangle(Pen*,Rect&)                                      The Graphics::DrawRectangle method draws a rectangle.
//Graphics::DrawRectangle(Pen*,RectF&)                                     The Graphics::DrawRectangle method draws a rectangle.
//Graphics::DrawRectangles(Pen*,Rect*,INT)                                 The Graphics::DrawRectangles method draws a sequence of rectangles.
//Graphics::DrawRectangles(Pen*,RectF*,INT)                                The Graphics::DrawRectangles method draws a sequence of rectangles.
//Graphics::DrawString(WCHAR*,INT,Font*,PointF&,Brush*)                    The Graphics::DrawString method draws a string based on a font and an origin for the string.
//Graphics::DrawString(WCHAR*,INT,Font*,PointF&,StringFormat*,Brush*)      The Graphics::DrawString method draws a string based on a font, a string origin, and a format.
//Graphics::DrawString(WCHAR*,INT,Font*,RectF&,StringFormat*,Brush*)       The Graphics::DrawString method draws a string based on a font, a layout rectangle, and a format.
//Graphics::EndContainer                                                   The Graphics::EndContainer method closes a graphics container that was previously opened by the Graphics::BeginContainer method.
//Graphics::EnumerateMetafile(Metafile*,Metafile&,EnumerateMetafileProc,VOID*,ImageAttributes*)           The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Point&,Rect&,Unit,EnumerateMetafileProc,VOID*,ImageAttributes*)   The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Point&,Rect&,Unit,EnumerateMetafileProc,VOID*,ImageAttributes*)   The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Point*,INT,EnumerateMetafileProc,VOID*,ImageAttributes*)          The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Point*,INT,EnumerateMetafileProc,VOID*,ImageAttributes*)          The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Point*,INT,Rect&,Unit,EnumerateMetafileProc,VOID*,ImageAttributes*) The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Point*,INT,RectF&,Unit,EnumerateMetafileProc,VOID*,ImageAttributes*) The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,PointF&,EnumerateMetafileProc,VOID*,ImageAttributes*)             The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Rect&,EnumerateMetafileProc,VOID*,ImageAttributes*)               The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,Rect&,Rect&,Unit,EnumerateMetafileProc,VOID*,ImageAttributes*)    The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,RectF&,EnumerateMetafileProc,VOID*,ImageAttributes*)              The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::EnumerateMetafile(Metafile*,RectF&,RectF&,Unit,EnumerateMetafileProc,VOID*,ImageAttributes*)  The Graphics::EnumerateMetafile method calls an application-defined callback function for each record in a specified metafile. You can use this method to display a metafile by calling Metafile::PlayRecord in the callback function.
//Graphics::ExcludeClip(Rect&)                                                                            The Graphics::ExcludeClip method updates the clipping region to the portion of itself that does not intersect the specified rectangle.
//Graphics::ExcludeClip(RectF&)                                            The Graphics::ExcludeClip method updates the clipping region to the portion of itself that does not intersect the specified rectangle.
//Graphics::ExcludeClip(Region*)                                           The Graphics::ExcludeClip method updates the clipping region with the portion of itself that does not overlap the specified region.
//Graphics::FillClosedCurve(Brush*,Point*,INT)                             The Graphics::FillClosedCurve method creates a closed cardinal spline from an array of points and uses a brush to fill the interior of the spline.
//Graphics::FillClosedCurve(Brush*,Point*,INT,FillMode,REAL)               The Graphics::FillClosedCurve method creates a closed cardinal spline from an array of points and uses a brush to fill, according to a specified mode, the interior of the spline.
//Graphics::FillClosedCurve(Brush*,PointF*,INT)                            The Graphics::FillClosedCurve method creates a closed cardinal spline from an array of points and uses a brush to fill the interior of the spline.
//Graphics::FillClosedCurve(Brush*,PointF*,INT,FillMode,REAL)              The Graphics::FillClosedCurve method creates a closed cardinal spline from an array of points and uses a brush to fill, according to a specified mode, the interior of the spline.
//Graphics::FillEllipse(Brush*,INT,INT,INT,INT)                            The Graphics::FillEllipse method uses a brush to fill the interior of an ellipse that is specified by coordinates and dimensions.
//Graphics::FillEllipse(Brush*,REAL,REAL,REAL,REAL)                        The Graphics::FillEllipse method uses a brush to fill the interior of an ellipse that is specified by coordinates and dimensions.
//Graphics::FillEllipse(Brush*,Rect&)                                      The Graphics::FillEllipse method uses a brush to fill the interior of an ellipse that is specified by a rectangle.
//Graphics::FillEllipse(Brush*,RectF&)                                     The Graphics::FillEllipse method uses a brush to fill the interior of an ellipse that is specified by a rectangle.
//Graphics::FillPath                                                       The Graphics::FillPath method uses a brush to fill the interior of a path. If a figure in the path is not closed, this method treats the nonclosed figure as if it were closed by a straight line that connects the figure's starting and ending points.
//Graphics::FillPie(Brush*,INT,INT,INT,INT,REAL,REAL)                      The Graphics::FillPie method uses a brush to fill the interior of a pie.
//Graphics::FillPie(Brush*,REAL,REAL,REAL,REAL,REAL,REAL)                  The Graphics::FillPie method uses a brush to fill the interior of a pie.
//Graphics::FillPie(Brush*,Rect&,REAL,REAL)                                The Graphics::FillPie method uses a brush to fill the interior of a pie.
//Graphics::FillPie(Brush*,RectF&,REAL,REAL)                               The Graphics::FillPie method uses a brush to fill the interior of a pie.
//Graphics::FillPolygon(Brush*,Point*,INT)                                 The Graphics::FillPolygon method uses a brush to fill the interior of a polygon.
//Graphics::FillPolygon(Brush*,Point*,INT,FillMode)                        The Graphics::FillPolygon method uses a brush to fill the interior of a polygon.
//Graphics::FillPolygon(Brush*,PointF*,INT)                                The Graphics::FillPolygon method uses a brush to fill the interior of a polygon.
//Graphics::FillPolygon(Brush*,PointF*,INT,FillMode)                       The Graphics::FillPolygon method uses a brush to fill the interior of a polygon.
//Graphics::FillRectangle(Brush*,INT,INT,INT,INT)                          The Graphics::FillRectangle method uses a brush to fill the interior of a rectangle.
//Graphics::FillRectangle(Brush*,REAL,REAL,REAL,REAL)                      The Graphics::FillRectangle method uses a brush to fill the interior of a rectangle.
//Graphics::FillRectangle(Brush*,Rect&)                                    The Graphics::FillRectangle method uses a brush to fill the interior of a rectangle.
//Graphics::FillRectangle(Brush*,RectF&)                                   The Graphics::FillRectangle method uses a brush to fill the interior of a rectangle.
//Graphics::FillRectangles(Brush*,Rect*,INT)                               The Graphics::FillRectangles method uses a brush to fill the interior of a sequence of rectangles.
//Graphics::FillRectangles(Brush*,RectF*,INT)                              The Graphics::FillRectangles method uses a brush to fill the interior of a sequence of rectangles.
//Graphics::FillRegion                                                     The Graphics::FillRegion method uses a brush to fill a specified region.
//Graphics::Flush                                                          The Graphics::Flush method flushes all pending graphics operations.
//Graphics::FromHDC(HDC)                                                   The Graphics::FromHDC method creates a Graphics object that is associated with a specified device context.
//Graphics::FromHDC(HDD,HANDLE)                                            The Graphics::FromHDC method creates a Graphics object that is associated with a specified device context and a specified device.
//Graphics::FromHWND                                                       The Graphics::FromHWND method creates a Graphics object that is associated with a specified window.
//Graphics::FromImage                                                      The Graphics::FromImage method creates a Graphics object that is associated with a specified Image object.
//Graphics::GetClip                                                        The Graphics::GetClip method gets the clipping region of this Graphics object.
//Graphics::GetClipBounds(Rect*)                                           The Graphics::GetClipBounds method gets a rectangle that encloses the clipping region of this Graphics object.
//Graphics::GetClipBounds(RectF*)                                          The Graphics::GetClipBounds method gets a rectangle that encloses the clipping region of this Graphics object.
//Graphics::GetCompositingMode                                             The Graphics::GetCompositingMode method gets the compositing mode currently set for this Graphics object.
//Graphics::GetCompositingQuality                                          The Graphics::GetCompositingQuality method gets the compositing quality currently set for this Graphics object.
//Graphics::GetDpiX                                                        The Graphics::GetDpiX method gets the horizontal resolution, in dots per inch, of the display device associated with this Graphics object.
//Graphics::GetDpiY                                                        The Graphics::GetDpiY method gets the vertical resolution, in dots per inch, of the display device associated with this Graphics object.
//Graphics::GetHalftonePalette                                             The Graphics::GetHalftonePalette method gets a Windows halftone palette.
//Graphics::GetHDC                                                         The Graphics::GetHDC method gets a handle to the device context associated with this Graphics object.
//Graphics::GetInterpolationMode                                           The Graphics::GetInterpolationMode method gets the interpolation mode currently set for this Graphics object. The interpolation mode determines the algorithm that is used when images are scaled or rotated.
//Graphics::GetLastStatus                                                  The Graphics::GetLastStatus method returns a value that indicates the nature of this Graphics object's most recent method failure.
//Graphics::GetNearestColor                                                The Graphics::GetNearestColor method gets the nearest color to the color that is passed in. This method works on 8-bits per pixel or lower display devices for which there is an 8-bit color palette.
//Graphics::GetPageScale                                                   The Graphics::GetPageScale method gets the scaling factor currently set for the page transformation of this Graphics object. The page transformation converts page coordinates to device coordinates.
//Graphics::GetPageUnit                                                    The Graphics::GetPageUnit method gets the unit of measure currently set for this Graphics object.
//Graphics::GetPixelOffsetMode                                             The Graphics::GetPixelOffsetMode method gets the pixel offset mode currently set for this Graphics object.
//Graphics::GetRenderingOrigin                                             The Graphics::GetRenderingOrigin method gets the rendering origin currently set for this Graphics object. The rendering origin is used to set the dither origin for 8-bits per pixel and 16-bits per pixel dithering and is also used to set the origin for hatch brushes.
//Graphics::GetSmoothingMode                                               The Graphics::GetSmoothingMode method determines whether smoothing (antialiasing) is applied to the Graphics object.
//Graphics::GetTextContrast                                                The Graphics::GetTextContrast method gets the contrast value currently set for this Graphics object. The contrast value is used for antialiasing text.
//Graphics::GetTextRenderingHint                                           The Graphics::GetTextRenderingHint method returns the text rendering mode currently set for this Graphics object.
//Graphics::GetTransform                                                   The Graphics::GetTransform method gets the world transformation matrix of this Graphics object.
//Graphics::GetVisibleClipBounds(Rect*)                                    The Graphics::GetVisibleClipBounds method gets a rectangle that encloses the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::GetVisibleClipBounds(RectF*)                                   The Graphics::GetVisibleClipBounds method gets a rectangle that encloses the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IntersectClip(Rect&)                                           The Graphics::IntersectClip method updates the clipping region of this Graphics object to the portion of the specified rectangle that intersects with the current clipping region of this Graphics object.
//Graphics::IntersectClip(RectF&)                                          The Graphics::IntersectClip method updates the clipping region of this Graphics object to the portion of the specified rectangle that intersects with the current clipping region of this Graphics object.
//Graphics::IntersectClip(Region*)                                         The Graphics::IntersectClip method updates the clipping region of this Graphics object to the portion of the specified region that intersects with the current clipping region of this Graphics object.
//Graphics::IsClipEmpty                                                    The Graphics::IsClipEmpty method determines whether the clipping region of this Graphics object is empty.
//Graphics::IsVisible(INT,INT)                                             The Graphics::IsVisible method determines whether the specified point is inside the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(INT,INT,INT,INT)                                     The Graphics::IsVisible method determines whether the specified rectangle intersects the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(Point&)                                              The Graphics::IsVisible method determines whether the specified point is inside the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(PointF&)                                             The Graphics::IsVisible method determines whether the specified point is inside the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(REAL,REAL)                                           The Graphics::IsVisible method determines whether the specified point is inside the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(REAL,REAL,REAL,REAL)                                 The Graphics::IsVisible method determines whether the specified rectangle intersects the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(Rect&)                                               The Graphics::IsVisible method determines whether the specified rectangle intersects the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisible(RectF&)                                              The Graphics::IsVisible method determines whether the specified rectangle intersects the visible clipping region of this Graphics object. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::IsVisibleClipEmpty                                             The Graphics::IsVisibleClipEmpty method determines whether the visible clipping region of this Graphics object is empty. The visible clipping region is the intersection of the clipping region of this Graphics object and the clipping region of the window.
//Graphics::MeasureCharacterRanges                                         The Graphics::MeasureCharacterRanges method gets a set of regions each of which bounds a range of character positions within a string.
//Graphics::MeasureDriverString                                            The Graphics::MeasureDriverString method measures the bounding box for the specified characters and their corresponding positions.
//Graphics::MeasureString(WCHAR*,INT,Font*,PointF&,RectF*)                 The Graphics::MeasureString method measures the extent of the string in the specified font and layout rectangle.
//Graphics::MeasureString(WCHAR*,INT,Font*,PointF&,StringFormat*,RectF*)   The Graphics::MeasureString method measures the extent of the string in the specified font, format, and layout rectangle.
//Graphics::MeasureString(WCHAR*,INT,Font*,RectF&,RectF*)                  The Graphics::MeasureString method measures the extent of the string in the specified font and layout rectangle.
//Graphics::MeasureString(WCHAR*,INT,Font*,RectF&,StringFormat*,RectF*,INT*,INT*)  The Graphics::MeasureString method measures the extent of the string in the specified font, format, and layout rectangle.
//Graphics::MeasureString(WCHAR*,INT,Font*,SizeF&,StringFormat*,SizeF*,INT*,INT*)  The Graphics::MeasureString method measures the extent of the string in the specified font, format, and layout rectangle.
//Graphics::MultiplyTransform                                              The Graphics::MultiplyTransform method updates this Graphics object's world transformation matrix with the product of itself and another matrix.
//Graphics::ReleaseHDC                                                     The Graphics::ReleaseHDC method releases a device context handle obtained by a previous call to the Graphics::GetHDC method of this Graphics object.
//Graphics::ResetClip                                                      The Graphics::ResetClip method sets the clipping region of this Graphics object to an infinite region.
//Graphics::ResetTransform                                                 The Graphics::ResetTransform method sets the world transformation matrix of this Graphics object to the identity matrix.
//Graphics::Restore                                                        The Graphics::Restore method sets the state of this Graphics object to the state stored by a previous call to the Graphics::Save method of this Graphics object.
//Graphics::RotateTransform                                                The Graphics::RotateTransform method updates the world transformation matrix of this Graphics object with the product of itself and a rotation matrix.
//Graphics::Save                                                           The Graphics::Save method saves the current state (transformations, clipping region, and quality settings) of this Graphics object. You can restore the state later by calling the Graphics::Restore method.
//Graphics::ScaleTransform                                                 The Graphics::ScaleTransform method updates this Graphics object's world transformation matrix with the product of itself and a scaling matrix.
//Graphics::SetAbort                                                       Not used in GDI+ versions 1.0 and 1.1.
//Graphics::SetClip(Graphics*,CombineMode)                                 The Graphics::SetClip method updates the clipping region of this Graphics object to a region that is the combination of itself and the clipping region of another Graphics object.
//Graphics::SetClip(GraphicsPath*,CombineMode)                             The Graphics::SetClip method updates the clipping region of this Graphics object to a region that is the combination of itself and the region specified by a graphics path. If a figure in the path is not closed, this method treats the nonclosed figure as if it were closed by a straight line that connects the figure's starting and ending points.
//Graphics::SetClip(HRGN,CombineMode)                                      The Graphics::SetClip method updates the clipping region of this Graphics object to a region that is the combination of itself and a GDI region.
//Graphics::SetClip(Rect&,CombineMode)                                     The Graphics::SetClip method updates the clipping region of this Graphics object to a region that is the combination of itself and a rectangle.
//Graphics::SetClip(RectF&,CombineMode)                                    The Graphics::SetClip method updates the clipping region of this Graphics object to a region that is the combination of itself and a rectangle.
//Graphics::SetClip(Region*,CombineMode)                                   The Graphics::SetClip method updates the clipping region of this Graphics object to a region that is the combination of itself and the region specified by a Region object.
//Graphics::SetCompositingMode                                             The Graphics::SetCompositingMode method sets the compositing mode of this Graphics object.
//Graphics::SetCompositingQuality                                          The Graphics::SetCompositingQuality method sets the compositing quality of this Graphics object.
//Graphics::SetInterpolationMode                                           The Graphics::SetInterpolationMode method sets the interpolation mode of this Graphics object. The interpolation mode determines the algorithm that is used when images are scaled or rotated.
//Graphics::SetPageScale                                                   The Graphics::SetPageScale method sets the scaling factor for the page transformation of this Graphics object. The page transformation converts page coordinates to device coordinates.
//Graphics::SetPageUnit                                                    The Graphics::SetPageUnit method sets the unit of measure for this Graphics object. The page unit belongs to the page transformation, which converts page coordinates to device coordinates.
//Graphics::SetPixelOffsetMode                                             The Graphics::SetPixelOffsetMode method sets the pixel offset mode of this Graphics object.
//Graphics::SetRenderingOrigin                                             The Graphics::SetRenderingOrigin method sets the rendering origin of this Graphics object. The rendering origin is used to set the dither origin for 8-bits-per-pixel and 16-bits-per-pixel dithering and is also used to set the origin for hatch brushes.
//Graphics::SetSmoothingMode                                               The Graphics::SetSmoothingMode method sets the rendering quality of the Graphics object.
//Graphics::SetTextContrast                                                The Graphics::SetTextContrast method sets the contrast value of this Graphics object. The contrast value is used for antialiasing text.
//Graphics::SetTextRenderingHint                                           The Graphics::SetTextRenderingHint method sets the text rendering mode of this Graphics object.
//Graphics::SetTransform                                                   The Graphics::SetTransform method sets the world transformation of this Graphics object.
//Graphics::TransformPoints                                                The Graphics::TransformPoints method converts an array of points from one coordinate space to another. The conversion is based on the current world and page transformations of this Graphics object.
//Graphics::TranslateClip(INT,INT)                                         The Graphics::TranslateClip method translates the clipping region of this Graphics object.
//Graphics::TranslateClip(REAL,REAL)                                       The Graphics::TranslateClip method translates the clipping region of this Graphics object.
//Graphics::TranslateTransform                                             The Graphics::TranslateTransform method updates this Graphics object's world transformation matrix with the product of itself and a translation matrix.



#include "fivewin.ch"

function Graphics( ... )

   local aParams := hb_aparams()
   local oObj
   local nLen := Len( aParams )

   //TODO resto de parametros
   switch nLen
      case 1
         oObj := GPGraphics():New( aParams[ 1 ] )
         exit
   endswitch

return oObj


CLASS GPGraphics

      DATA handle

      DATA oBrush
      DATA oPen
      DATA oColor
      DATA oFont

      METHOD New( hDCOrImage ) CONSTRUCTOR

      METHOD AddMetafileComment     ( cComment )
      METHOD BeginContainer         ( )
      METHOD BitBlt                 ( oImage, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units )
      METHOD Clear                  ( oColor )
      METHOD DrawArc                ( nTop, nLeft, nWidth, nHeight, nStartFrom, nAngle )
      METHOD DrawBezier             ( nTop1, nLeft1, nTop2, nLeft2, nTop3, nLeft3, nTop4, nLeft4 )
      METHOD DrawBeziers            ( )
      METHOD DrawCachedBitmap       ( oCBitmap, nTop, nLeft )
      METHOD DrawClosedCurve        ( )
      METHOD DrawCurve              ( )
      METHOD DrawDriverString       ( )
      METHOD DrawEllipse            ( nTop, nLeft, nwidth, nHeight )
      METHOD DrawImage              ( oImage,   nTop, nLeft, nWidth, nHeight )
      METHOD DrawLine               ( nTop, nLeft, nBottom, nRight )
      METHOD DrawLines              ( )
      METHOD DrawPath               ( oPath )
      METHOD DrawPie                ( )
      METHOD DrawPolygon            ( )
      METHOD DrawRectangle          ( nTop, nLeft, nWidth, nHeight )
      METHOD DrawRectangles         ( )
      METHOD DrawRoundRect          ( nTop, nLeft, nWidth, nHeight )
      METHOD DrawString             ( cText, nTop, nLeft )
      METHOD EndContainer           ( )
      METHOD EnumerateMetafile      ( )
      METHOD ExcludeClip            ( )
      METHOD FillClosedCurve        ( )
      METHOD FillEllipse            ( oBrush, nTop, nLeft, nwidth, nHeight )
      METHOD FillPath               ( oPath )
      METHOD FillPie                ( )
      METHOD FillPolygon            ( )
      METHOD FillRectangle          ( rc, oBrush, oPen )
      METHOD FillRectangles         ( )
      METHOD FillRegion             ( )
      METHOD FillRoundRect          ( rc, oBrush, oPen )
      METHOD Flush                  ( )
      METHOD FromHDC                ( )
      METHOD FromHWND               ( )
      METHOD FromImage              ( )
      METHOD GetClip                ( )
      METHOD GetClipBounds          ( )
      METHOD GetCompositingMode     ( )
      METHOD GetCompositingQuality  ( )
      METHOD GetDpiX                ( )
      METHOD GetDpiY                ( )
      METHOD GetHDC                 ( )
      METHOD GetHalftonePalette     ( )
      METHOD GetInterpolationMode   ( )
      METHOD GetLastStatus          ( )
      METHOD GetNearestColor        ( )
      METHOD GetPageScale           ( )
      METHOD GetPageUnit            ( )
      METHOD GetPixelOffsetMode     ( )
      METHOD GetRenderingOrigin     ( )
      METHOD GetSmoothingMode       ( )
      METHOD GetTextContrast        ( )
      METHOD GetTextRenderingHint   ( )
      METHOD GetTransform           ( )
      METHOD GetVisibleClipBounds   ( )
      METHOD IntersectClip          ( )
      METHOD IsClipEmpty            ( )
      METHOD IsVisible              ( )
      METHOD IsVisibleClipEmpty     ( )
      METHOD MeasureCharacterRanges ( )
      METHOD MeasureDriverString    ( )
      METHOD MeasureString          ( )
      METHOD MultiplyTransform      ( )
      METHOD ReleaseHDC             ( )
      METHOD ResetClip              ( )
      METHOD ResetTransform         ( )
      METHOD Restore                ( )
      METHOD RotateTransform        ( angle, order )
      METHOD Save                   ( )
      METHOD ScaleTransform         ( hor, ver, order )
      METHOD SetAbort               ( )
      METHOD SetClip                ( )
      METHOD SetCompositingMode     ( )
      METHOD SetCompositingQuality  ( )
      METHOD SetInterpolationMode   ( )
      METHOD SetPageScale           ( )
      METHOD SetPageUnit            ( )
      METHOD SetPixelOffsetMode     ( )
      METHOD SetRenderingOrigin     ( )
      METHOD SetSmoothingMode       ( nMode )
      METHOD SetTextContrast        ( )
      METHOD SetTextRenderingHint   ( )
      METHOD SetTransform           ( )
      METHOD TransformPoints        ( )
      METHOD TranslateClip          ( )
      METHOD TranslateTransform     ( nTop, nLeft, order )

      METHOD     Destroy            ( )
      DESTRUCTOR Destroy            ( )

      METHOD SetColor( oColor ) INLINE ::oColor := oColor
      METHOD SetBrush( oBrush ) INLINE ::oBrush := oBrush
      METHOD SetFont ( oFont  ) INLINE ::oFont  := oFont
      METHOD SetPen  ( oPen   ) INLINE ::oPen   := oPen


ENDCLASS

**********************************************************************************************************
  METHOD New( hDCOrImage ) CLASS GPGraphics
**********************************************************************************************************

  if valtype( hDCOrImage ) == "N"
     ::handle:= C5GdiPlusNewGraphics( hDCOrImage )
  elseif valtype( hDCOrImage ) == "O"
     ::handle:= C5GdiPlusNewGraphicsFromBitmap( hDCOrImage:handle )
  endif

return self

**********************************************************************************************************
  METHOD Destroy() CLASS GPGraphics
**********************************************************************************************************

::handle := nil

return nil


**********************************************************************************************************
  METHOD AddMetafileComment( cComment ) CLASS GPGraphics
**********************************************************************************************************

return C5GPAddMetafileComment( ::handle, cComment )

**********************************************************************************************************
  METHOD BeginContainer( p1, p2, p3  ) CLASS GPGraphics
**********************************************************************************************************

   if( p1 != NIL )
      p1 = p1:handle
   endif

   if( p2 != NIL )
      p2 = p2:handle
   endif

return C5GPBeginContainer(::handle, p1, p2, p3 )

**********************************************************************************************************
  METHOD BitBlt( oImage, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units ) CLASS GPGraphics
**********************************************************************************************************


return C5GBitBlt( ::handle, oImage:handle, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units )


**********************************************************************************************************
  METHOD Clear( oColor ) CLASS GPGraphics
**********************************************************************************************************

return C5GClear( ::handle, oColor:handle )



**********************************************************************************************************
  METHOD DrawArc( p1, p2, p3, p4, p5, p6, p7 ) CLASS GPGraphics
**********************************************************************************************************

   local sta

   DEFAULT p1 := ::oPen

   if valtype( p2 ) == "O"
      sta = C5GDrawArc( ::handle, p1:handle, p2:handle, p3, p4 )
   else
      sta = C5GDrawArc( ::handle, p1:handle, p2, p3, p4, p5, p6, p7 )
   endif

return sta

**********************************************************************************************************
  METHOD DrawBezier( p1, p2, p3, p4, p5, p6, p7, p8, p9  ) CLASS GPGraphics
**********************************************************************************************************

   local sta

   DEFAULT p1 := ::oPen

   if ValType( p2 ) == "O"
      sta = C5GDrawBezier( ::handle, p1:handle, p2:handle, p3:handle, p4:handle, p5:handle )
   else
      sta = C5GDrawBezier( ::handle, p1:handle, p2, p3, p4, p5, p6, p7, p8, p9 )
   endif

return sta

**********************************************************************************************************
  METHOD DrawBeziers( p1, p2 ) CLASS GPGraphics
**********************************************************************************************************

   DEFAULT p1 := ::oPen

return C5GDrawBeziers( ::handle, p1:handle, p2 )

**********************************************************************************************************
  METHOD DrawCachedBitmap( oCBitmap, nTop, nLeft ) CLASS GPGraphics
**********************************************************************************************************

  C5GDrawCachedBitmap( ::handle, oCBitmap:handle, nTop, nLeft )

return 0

**********************************************************************************************************
  METHOD DrawClosedCurve( ) CLASS GPGraphics
**********************************************************************************************************

return 0

**********************************************************************************************************
  METHOD DrawCurve( oPen, B, C, D, E, F ) CLASS GPGraphics
**********************************************************************************************************
   DEFAULT oPen := ::oPen

   if D != NIL
      return C5GDrawCurve( ::handle, oPen:handle, B:handle, C, D, E, F )
   else
      return C5GDrawCurve( ::handle, oPen:handle, B, C )
   endif


return 0

**********************************************************************************************************
  METHOD DrawDriverString( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawEllipse( oPen, nTop, nLeft, nwidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oPen := ::oPen

  if valtype( nTop ) == "A"
     nLeft   := nTop[2]
     nWidth  := nTop[4]-nTop[2]
     nHeight := nTop[3]-nTop[1]
     nTop    := nTop[1]
  endif

return C5GDrawEllipse( ::handle, oPen:handle, nTop, nLeft, nwidth, nHeight )

**********************************************************************************************************
  METHOD DrawImage( oImage, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11  ) CLASS GPGraphics
**********************************************************************************************************

   local sta

   if ValType( p2 ) == "O"
      p2 = p2:handle
   endif

   if ValType( p3 ) == "O"
      p3 = p3:handle
   endif

   if ValType( p5 ) == "O"
      p5 = p5:handle
   endif

   if ValType( p8 ) == "O"
      p8 = p8:handle
   endif

   if ValType( p9 ) == "O"
      p9 = p9:handle
   endif

   if p11 != NIL
      sta = C5GDrawImage( ::handle, oImage:handle, p2:handle, p3, p4, p5, p6, p7, p8, p9, p10, p11 )
   elseif p10 != nil
      sta = C5GDrawImage( ::handle, oImage:handle, p2:handle, p3, p4, p5, p6, p7, p8, p9, p10 )
   elseif p9 != nil
      sta = C5GDrawImage( ::handle, oImage:handle, p2, p3, p4, p5, p6, p7, p8, p9 )
   elseif p8 != NIL
      sta = C5GDrawImage( ::handle, oImage:handle, p2, p3, p4, p5, p6, p7, p8 )
   elseif p5 != NIL
      sta = C5GDrawImage( ::handle, oImage:handle, p2, p3, p4, p5 )
   elseif p3 != NIL
      sta = C5GDrawImage( ::handle, oImage:handle, p2, p3 )
   else
      sta = C5GDrawImage( ::handle, oImage:handle, p2 )
   endif

return sta

**********************************************************************************************************
  METHOD FillEllipse( oBrush, nTop, nLeft, nwidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oBrush := ::oBrush

  if valtype( nTop ) == "A"
     nLeft   := nTop[2]
     nWidth  := nTop[4]-nTop[2]
     nHeight := nTop[3]-nTop[1]
     nTop    := nTop[1]
     C5GFillEllipse( ::handle, oBrush:handle, nTop, nLeft, nwidth, nHeight )
  elseif ( valtype( nTop ) == "O" )
     C5GFillEllipse( ::handle, oBrush:handle, nTop:handle )
  elseif ( valtype( nTop ) == "N" )
     C5GFillEllipse( ::handle, oBrush:handle, nTop, nLeft, nwidth, nHeight )
  endif

return 0


**********************************************************************************************************
  METHOD FillPath( oPath ) CLASS GPGraphics
**********************************************************************************************************

return C5GFillPath( ::oBrush:handle, oPath:handle )

**********************************************************************************************************
  METHOD FillPie( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillPolygon( ) CLASS GPGraphics
**********************************************************************************************************


return 0

*********************************************************************************************************
  METHOD FillRectangle( ... ) CLASS GPGraphics
**********************************************************************************************************

   local aParams := hb_aparams()
   local nLen := Len( aParams )
   local nStatus


   if nLen == 5
      nStatus = C5GFillRectangle( ::handle, aParams[ 1 ]:handle /*Brush*/, aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
   elseif nLen == 2
      nStatus = C5GFillRectangle( ::handle, aParams[ 1 ]:handle /*Brush*/, aParams[ 2 ]:handle /*Rect(F)*/ )
   endif
   /*
  if oPen == nil
     GP_FillRect( ::handle, {rc[1],rc[2], rc[4]-rc[2], rc[3]-rc[1]}, oBrush:handle )
  else
     GP_FillRect( ::handle, {rc[1],rc[2], rc[4]-rc[2], rc[3]-rc[1]}, oBrush:handle, oPen:handle )
  endif
*/
return 0

**********************************************************************************************************
  METHOD FillRectangles( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillRegion( oBrush, oRegion ) CLASS GPGraphics
**********************************************************************************************************

   DEFAULT oBrush := ::oBrush

return C5GFillRegion( ::handle, oBrush:handle, oRegion:handle )

**********************************************************************************************************
  METHOD FillRoundRect( rc, nRad1, nRad2, oBrush, oPen ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oBrush := ::oBrush
  DEFAULT oPen   := ::oPen


return C5GRoundRect( ::handle, oPen:handle, rc[1], rc[2], rc[4]-rc[2], rc[3]-rc[1], nRad1, nRad2, oBrush:handle )

**********************************************************************************************************
  METHOD Flush( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FromHDC( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FromHWND( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FromImage( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetClipBounds( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetCompositingMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetCompositingQuality( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetDpiX( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetDpiY( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetHDC( ) CLASS GPGraphics
**********************************************************************************************************


return C5GetHDC( ::handle )

**********************************************************************************************************
  METHOD GetHalftonePalette( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetInterpolationMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetLastStatus( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetNearestColor( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetPageScale( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetPageUnit( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetPixelOffsetMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetRenderingOrigin( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetSmoothingMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetTextContrast( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetTextRenderingHint( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD GetTransform( oMatrix ) CLASS GPGraphics
**********************************************************************************************************
   local sta
   sta = C5GGetTransform( ::handle, @oMatrix )
return sta

**********************************************************************************************************
  METHOD GetVisibleClipBounds( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IntersectClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IsClipEmpty( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IsVisible( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD IsVisibleClipEmpty( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MeasureCharacterRanges( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MeasureDriverString( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MeasureString( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD MultiplyTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ReleaseHDC( hDC ) CLASS GPGraphics
**********************************************************************************************************


return C5ReleaseHDC(::handle, hDC )

**********************************************************************************************************
  METHOD ResetClip( ) CLASS GPGraphics
**********************************************************************************************************
   local sta
   sta = C5GResetClip( ::handle )
return sta


**********************************************************************************************************
  METHOD ResetTransform( ) CLASS GPGraphics
**********************************************************************************************************


return C5ResetTransform(::handle)

**********************************************************************************************************
  METHOD Restore( ) CLASS GPGraphics
**********************************************************************************************************


return 0




**********************************************************************************************************
  METHOD DrawPath( oPen, oPath ) CLASS GPGraphics
**********************************************************************************************************

   DEFAULT oPen := ::oPen


return C5GDrawPath( ::handle, oPen:handle, oPath:handle )

**********************************************************************************************************
  METHOD DrawPie( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawPolygon( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawRectangle( oPen, x, y, width, height ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oPen := ::oPen

  if ValType( x ) == "O"
     return C5GDrawRectangle( ::handle, oPen:handle, x:handle )

  else
     return C5GDrawRectangle( ::handle, oPen:handle, x, y, width, height )
  endif

return 0

**********************************************************************************************************
  METHOD DrawRectangles( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawRoundRect( rc, oPen, nRad1, nRad2 ) CLASS GPGraphics
**********************************************************************************************************

  C5GRoundRect( ::handle, oPen:handle, rc[1], rc[2], rc[4]-rc[2], rc[3]-rc[1], nRad1, nRad2 )

return 0

**********************************************************************************************************
  METHOD DrawString( cText, font, point, A, B  ) CLASS GPGraphics
**********************************************************************************************************
  local sta

  DEFAULT font := ::oFont
  if B != NIL
     DEFAULT B := ::oBrush
     sta = C5GDrawString( ::handle, cText, font:handle, point:handle, A:handle, B:handle )
  else
     DEFAULT A := ::oBrush
     sta = C5GDrawString( ::handle, cText, font:handle, point:handle, A:handle )
  endif

return sta

**********************************************************************************************************
  METHOD EndContainer( p1 ) CLASS GPGraphics
**********************************************************************************************************

return C5GEndContainer( ::handle, p1 )

**********************************************************************************************************
  METHOD EnumerateMetafile( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ExcludeClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillClosedCurve( ) CLASS GPGraphics
**********************************************************************************************************


return 0



**********************************************************************************************************
  METHOD DrawLine( oPen, nTop, nLeft, nBottom, nRight ) CLASS GPGraphics
**********************************************************************************************************

   DEFAULT oPen := ::oPen

   if ValType( nTop ) == "O"
      return C5GDrawLine( ::handle, oPen:handle, nTop:handle, nLeft:handle )
   else
      return C5GDrawLine( ::handle, oPen:handle, nTop, nLeft, nBottom, nRight )
   endif


return 0


**********************************************************************************************************
  METHOD DrawLines( )  CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD RotateTransform( angle, order ) CLASS GPGraphics
**********************************************************************************************************

  C5GRotateTransform( ::handle, angle, order )

return nil

**********************************************************************************************************
  METHOD Save( ) CLASS GPGraphics
**********************************************************************************************************
  return nil

**********************************************************************************************************
  METHOD ScaleTransform( hor, ver, order ) CLASS GPGraphics
**********************************************************************************************************

return C5GScaleTransform( ::handle, hor, ver, order )

**********************************************************************************************************
  METHOD SetAbort( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetClip( p1, p2 ) CLASS GPGraphics
**********************************************************************************************************

   local sta

   if( ValType( p1 ) == "O" )
      p1 = p1:handle
   elseif( ValType( p1 ) == "N" )
      p1 = C5_Long2Ptr( p1 )
   endif

   sta = C5GSetClip( ::handle, p1, p2 )

return sta

**********************************************************************************************************
  METHOD SetCompositingMode( ) CLASS GPGraphics
**********************************************************************************************************

return 0

**********************************************************************************************************
  METHOD SetCompositingQuality( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetInterpolationMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetPageScale( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetPageUnit( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetPixelOffsetMode( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetRenderingOrigin( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetSmoothingMode( nMode ) CLASS GPGraphics
**********************************************************************************************************
//enum QualityMode
//{
//    QualityModeInvalid   = -1,
//    QualityModeDefault   = 0,
//    QualityModeLow       = 1, // Best performance
//    QualityModeHigh      = 2  // Best rendering quality
//};

return C5SetSmoothingMode(::handle, nMode )




**********************************************************************************************************
  METHOD SetTextContrast( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetTextRenderingHint( nMode ) CLASS GPGraphics
**********************************************************************************************************

return C5SetTextRenderingHint( ::handle, nMode )

**********************************************************************************************************
  METHOD SetTransform( oMatrix ) CLASS GPGraphics
**********************************************************************************************************


return C5GSetTransform( ::handle, oMatrix:handle )

**********************************************************************************************************
  METHOD TransformPoints( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD TranslateClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0


**********************************************************************************************************
  METHOD TranslateTransform( hor, ver, order ) CLASS GPGraphics
**********************************************************************************************************



return C5GTranslateTransform( ::handle, hor, ver, order )

function _GPConvertHandle( o, h )
   o:handle = getGdiplusHandle( h )
return o


FUNCTION BuildPointArray( nCount )

   local aPoint := {}
   local n

   for n = 1 to nCount
     AAdd( aPoint, GPPoint():New() )
   next

RETURN aPoint


FUNCTION BuildPointFArray( nCount )

   local aPoint := {}
   local n

   for n = 1 to nCount
     AAdd( aPoint, GPPointF():New() )
   next

RETURN aPoint



#pragma BEGINDUMP
#include <gc.h>
#include <hbapicls.h>
#include <hbvm.h>


GdiplusStartupInput gdiplusStartupInput;

ULONG_PTR gdiplusToken;

HB_FUNC( C5GDIPLUSSTARTUP )
{

    GdiplusStartup(&gdiplusToken, &gdiplusStartupInput, NULL);
    hb_retni( (int) gdiplusToken );

}

HB_FUNC( C5GDIPLUSSHUTDOWN )
{
    GdiplusShutdown(gdiplusToken);
    hb_ret                        ();
}


//VOID Example_DrawString2(HDC hdc)
//{
//   Graphics graphics(hdc);
//
//   // Create a string.
//   WCHAR string[] = L"Sample Text";
//
//   // Initialize arguments.
//   Font myFont(L"Arial", 16);
//   PointF origin(0.0f, 0.0f);
//   SolidBrush blackBrush(Color(255, 0, 0, 0));
//
//   // Draw string.
//   graphics.DrawString(
//   string,
//   11,
//   &myFont,
//   origin,
//   &blackBrush);
//}

HB_FUNC( C5GDIPLUSNEWGRAPHICS )
{
   GDIPLUS * pG = gdiplus_new( GP_IT_GRAPHICS );
   Graphics *g = new Graphics( (HDC) hb_parnl(1));
   pG->pObject = g;
   hb_GDIPLUS_ret( pG );
}

HB_FUNC( C5GDIPLUSNEWGRAPHICSFROMBITMAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_ANYIMAGE( pObj ) ){
      GDIPLUS * pG = gdiplus_new( GP_IT_GRAPHICS );
      Graphics *g = new Graphics( (Image*) pObj->pObject );
      pG->pObject = g;
      hb_GDIPLUS_ret( pG );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


//Status AddMetafileComment(
//  [in]  const BYTE *data,
//  [in]  UINT sizeData
//);

HB_FUNC( C5GPADDMETAFILECOMMENT )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_GRAPHICS( pObj ) )
   {
     Graphics *g = ( Graphics * ) pObj->pObject;
     LPSTR bByte  = (char*)hb_parc( 2 );
     hb_retni( g->AddMetafileComment( (BYTE*) bByte, hb_parclen( 2 ) ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}



HB_FUNC( C5GPBEGINCONTAINER )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_GRAPHICS( pObj ) )
   {
     Graphics *g = ( Graphics * ) pObj->pObject;
     GraphicsContainer gc;
     if( HB_ISPOINTER( 2 ) ){
        GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
        GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
        Unit p4 = ( Unit ) hb_parni( 4 );
        if( GP_IS_RECT( p2 ) ){
           Rect * r1 = ( Rect * )   GP_GET( p2 );
           Rect * r2 = ( Rect * )   GP_GET( p3 );
          gc = g->BeginContainer( *r1, *r2, p4 );
        }else {
           RectF * r1 = ( RectF * ) GP_GET( p2 );
           RectF * r2 = ( RectF * ) GP_GET( p3 );
          gc = g->BeginContainer( *r1, *r2, p4 );
        }
     }else
        gc = g->BeginContainer( );

     hb_retnl( gc );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}


// Status DrawImage(IN Image* image,
//                     IN INT x,
//                     IN INT y,
//                     IN INT srcx,
//                     IN INT srcy,
//                     IN INT srcwidth,
//                     IN INT srcheight,
//                     IN Unit srcUnit)

//enum Unit
//{
//    UnitWorld,      // 0 -- World coordinate (non-physical unit)
//    UnitDisplay,    // 1 -- Variable -- for PageTransform only
//    UnitPixel,      // 2 -- Each unit is one device pixel.
//    UnitPoint,      // 3 -- Each unit is a printer's point, or 1/72 inch.
//    UnitInch,       // 4 -- Each unit is 1 inch.
//    UnitDocument,   // 5 -- Each unit is 1/300 inch.
//    UnitMillimeter  // 6 -- Each unit is 1 millimeter.
//};


HB_FUNC( C5GBITBLT )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if( GP_IS_GRAPHICS( pG ) && GP_IS_IMAGE( pObj ) && hb_pcount() > 8 )
   {
       Graphics *g = ( Graphics * ) pG->pObject;
       Image * img = ( Image * ) pObj->pObject;
       Unit u = (Unit) hb_parnl( 9 );
       hb_retni( g->DrawImage( img, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 6 ), hb_parni( 5 ), hb_parni( 7 ), hb_parni( 8 ), u ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GCLEAR )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if( GP_IS_GRAPHICS( pG ) && GP_IS_COLOR( pObj ) )
   {
     Graphics *g = ( Graphics * ) GP_GET( pG );
     Color* c = (Color*) GP_GET( pObj );
     hb_retni( ( int ) g->Clear( *c ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GDRAWARC )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if( GP_IS_GRAPHICS( pG ) && GP_IS_PEN( pObj ) )
   {
     Graphics *g = ( Graphics * ) GP_GET( pG );
     Pen * pen = ( Pen * ) GP_GET( pObj );
     Status sta;
     BOOL lOk = true;
     if( HB_ISNUM( 3 ) ){
        if( HB_ISDOUBLE( 3 ) ){
           sta = g->DrawArc( pen, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ), ( REAL ) hb_parnd( 8 ) );
        }else{
           sta = g->DrawArc( pen, hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ), ( REAL ) hb_parnd( 7 ), ( REAL ) hb_parnd( 8 ) );
        }
     }else if( HB_ISPOINTER( 3 ) ){
        GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
        void * rect = GP_GET( p3 );
        if( GP_IS_RECT( p3 ) ){
           sta = g->DrawArc( pen, *( ( Rect * ) rect ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ) );
        }else{
          sta = g->DrawArc( pen, *( ( RectF * ) rect ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ) );
        }
     }else
        lOk = false;
     if( lOk )
        hb_retni( ( int ) sta );
     else
        hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GDRAWBEZIER )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if( GP_IS_GRAPHICS( pG ) && GP_IS_PEN( pObj ) )
   {
     Graphics *g = ( Graphics * ) GP_GET( pG );
     Pen * pen = ( Pen * ) GP_GET( pObj );
     Status sta;
     BOOL lOk = true;
     if( HB_ISNUM( 3 ) ){
        if( HB_ISDOUBLE( 3 ) ){
           sta = g->DrawBezier( pen, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ),
                                     ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ), ( REAL ) hb_parnd( 8 ), ( REAL ) hb_parnd( 9 ), ( REAL ) hb_parnd( 10 ) );
        }else {
          sta = g->DrawBezier( pen, hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ), hb_parni( 7 ), hb_parni( 8 ), hb_parni( 9 ), hb_parni( 10 ) );
        }

     }else if( HB_ISPOINTER( 3 ) ){
        GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
        GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
        GDIPLUS * p5 = hb_GDIPLUS_par( 5 );
        GDIPLUS * p6 = hb_GDIPLUS_par( 6 );
        void * point1 = GP_GET( p3 );
        void * point2 = GP_GET( p4 );
        void * point3 = GP_GET( p5 );
        void * point4 = GP_GET( p6 );
        if( GP_IS_POINT( p3 ) && GP_IS_POINT( p4 ) && GP_IS_POINT( p5 ) && GP_IS_POINT( p6 ) ){
            sta = g->DrawBezier( pen, *( ( Point * ) point1 ), *( ( Point * ) point2 ), *( ( Point * ) point3 ), *( ( Point * ) point4 ) );
        }else if( GP_IS_POINTF( p3 ) && GP_IS_POINTF( p4 ) && GP_IS_POINTF( p5 ) && GP_IS_POINTF( p6 ) ){
           sta = g->DrawBezier( pen, *( ( PointF * ) point1 ), *( ( PointF * ) point2 ), *( ( PointF * ) point3 ), *( ( PointF * ) point4 ) );
        }else
           lOk = false;
     }else
        lOk = false;

     if( lOk )
        hb_retni( ( int ) sta );
     else
        hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GDRAWBEZIERS )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   Traza( "0");
   if( GP_IS_GRAPHICS( pG ) && GP_IS_PEN( pObj ) && HB_ISARRAY( 3 ) )
   {
     Graphics *g = ( Graphics * ) GP_GET( pG );
     Pen * pen = ( Pen * ) GP_GET( pObj );
     Status sta;
     BOOL lF;
     void * pPoints;
     PHB_ITEM aPoints = hb_param( 3, HB_IT_ARRAY );
     Traza( "1");
     pPoints = ConvertArray2Point( aPoints, &lF );
     Traza( "2");
     int iLen = hb_arrayLen( aPoints );
     Traza( "3");
     if( lF )
        sta = g->DrawBeziers( pen, ( PointF * ) pPoints, iLen );
     else
        sta = g->DrawBeziers( pen, ( Point * ) pPoints, iLen );
     Traza( "4");
     hb_retni( ( int ) sta );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );



}

HB_FUNC( C5GDRAWCACHEDBITMAP )
{
    Graphics* g = hb_Graphics_par( 1 );
    CachedBitmap* b = (CachedBitmap*) hb_parptr( 2 );

   if( g && b && hb_pcount() > 3 )
   {
    //TODO Garbage Collector for CachedBitmap
     g->DrawCachedBitmap( b, hb_parni( 4 ), hb_parni( 3 ));
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );



    hb_ret();
}

HB_FUNC( C5GDRAWCURVE ){

   GDIPLUS *p = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   Status sta;
   int iParam = hb_pcount();
   if(GP_IS_GRAPHICS( p )  && GP_IS_PEN( pObj ) && hb_pcount() < 5 )
   {
      Graphics *g = ( Graphics * ) GP_GET( p ) ;
      Pen* p = (Pen*) GP_GET( pObj );
      if( HB_ISARRAY( 3 ) ){
         PHB_ITEM aPoint = hb_param( 3, HB_IT_ARRAY );
         int iLen = hb_arrayLen( aPoint );
         int n;
         BOOL lF = false;
         Point * pPoint;
         PointF * pPointF;

         for( n = 0; n < iLen; n ++ ){
           PHB_ITEM pItem = hb_arrayGetItemPtr( aPoint, n + 1 );
           PHB_ITEM pitemP;
           GDIPLUS * ptrPoint;
           pitemP = hb_objSendMsg( pItem, "_HANDLE", 0 );
           ptrPoint = GDIPLUSItemGet( pitemP );
           if( GP_IS_POINT( ptrPoint ) ){
              if( n == 0 )
                 pPoint = ( Point * ) hb_xgrab( sizeof( Point ) * iLen );
              Point * pObj = ( Point * )GP_GET( ptrPoint );
              pPoint[ n ] = *pObj;
           }else if( GP_IS_POINTF( ptrPoint ) ){
              if( n == 0 )
                 pPointF = ( PointF * ) hb_xgrab( sizeof( PointF ) * iLen );
              PointF * pObj = ( PointF * )GP_GET( ptrPoint );
              pPointF[ n ] = *pObj;
              lF = true;
            }
         }

         if( iParam < 5 ){
            if( !lF )
               sta = g->DrawCurve( p, pPoint, iLen );
            else
               sta = g->DrawCurve( p, pPointF, iLen );
         }
         else if( iParam > 4 && iParam < 6 ){
            REAL tension = ( REAL ) hb_parnd( 5 );
            if( !lF )
               sta = g->DrawCurve( p, pPoint, iLen, tension );
            else
               sta = g->DrawCurve( p, pPointF, iLen, tension );
         }else if( iParam > 5 ){
            int offset = hb_parni( 5 );
            int numberOfSegments = hb_parni( 6 );
            REAL tension = ( REAL ) hb_parnd( 7 );
            if( !lF )
               sta = g->DrawCurve( p, pPoint, iLen, offset, numberOfSegments, tension );
            else
               sta = g->DrawCurve( p, pPointF, iLen, offset, numberOfSegments, tension );
         }

         if( !lF )
            hb_xfree( pPoint );
         else
            hb_xfree( pPointF );
       }
       hb_retni( sta );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GDRAWELLIPSE )
{

   GDIPLUS *p = hb_GDIPLUS_par( 1 );

   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   if(GP_IS_GRAPHICS( p )  && GP_IS_PEN( pObj ) && hb_pcount() > 5 )
   {
      Graphics *g = ( Graphics * ) GP_GET( p ) ;
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( g->DrawEllipse( p, hb_parni(4), hb_parni(3), hb_parni(5), hb_parni(6) ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GDRAWIMAGE )
{
   GDIPLUS *p = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   if( GP_IS_GRAPHICS( p )  && ( GP_IS_ANYIMAGE( pObj ) ) )
   {
       int iParams = hb_pcount();
       Graphics * g = ( Graphics * ) GP_GET( p );
       Image * c = ( Image * ) GP_GET( pObj );
       Status sta;
       BOOL lOk = true;
       switch( iParams ){
          case 3:{
             GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
             void * uRP = GP_GET( p3 );
             if( GP_IS_RECT( p3 ) || GP_IS_RECTF( p3 ) ){
                 if( GP_IS_RECT( p3 ) )
                   sta = g->DrawImage( c, *( ( Rect * ) uRP ) );
                else
                   sta = g->DrawImage( c, *( ( RectF * ) uRP ) );

             }else if( GP_IS_POINT( p3 ) || GP_IS_POINTF( p3 ) ){
                if( GP_IS_POINT( p3 ) )
                   sta = g->DrawImage( c, *( ( Point * ) uRP ) );
                else
                   sta = g->DrawImage( c, *( ( PointF * ) uRP ) );
             }else
                lOk = false;
          }
          break;
          case 4:{
             if( HB_ISARRAY( 3 ) ){
                 PHB_ITEM aPoint = hb_param( 3, HB_IT_ARRAY );
                 BOOL lF;
                 int iLen = hb_arrayLen( aPoint );
                void * pPoint = ConvertArray2Point( aPoint, &lF );
                if( lF )
                   sta = g->DrawImage( c, ( PointF * ) pPoint, iLen );
                else
                   sta = g->DrawImage( c, ( Point * ) pPoint, iLen );

                hb_xfree( pPoint );
             }else if( HB_ISNUM( 3 ) ){
                if( HB_ISDOUBLE( 3 ) )
                   sta = g->DrawImage( c, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ) );
                else
                   sta = g->DrawImage( c, hb_parni( 3 ), hb_parni( 4 ) );
             }else
                lOk = false;
          }
          break;
          case 6:{
             if( HB_ISDOUBLE( 3 ) )
                sta = g->DrawImage( c, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ) );
             else if( HB_ISINTEGER( 3 ) )
                sta = g->DrawImage( c, hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ) );
             else if( HB_ISPOINTER ( 3 ) ){
                GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
                GDIPLUS * p4 = hb_GDIPLUS_par( 4 );
                GDIPLUS * p6 = hb_GDIPLUS_par( 6 );
                RectF * destRect = ( RectF * ) GP_GET( p3 );
                RectF * srcRect = ( RectF * ) GP_GET( p4 );
                ImageAttributes *imageAttributes = ( ImageAttributes * ) GP_GET( p6 );
                sta = g->DrawImage( c, *destRect, srcRect->X, srcRect->Y, srcRect->Width, srcRect->Height, ( Unit ) hb_parni( 5 ), imageAttributes );
              }
             else
                lOk = false;
          }
          break;
          case 9:{
             if( HB_ISDOUBLE( 3 ) )
                sta = g->DrawImage( c, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ), ( REAL ) hb_parnd( 7 ), ( REAL ) hb_parnd( 8 ), ( Unit ) hb_parni( 9 ) );
             else if( HB_ISINTEGER( 3 ) )
                sta = g->DrawImage( c, hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ), hb_parni( 7 ), hb_parni( 8 ), ( Unit ) hb_parni( 9 ) );
             else
                lOk = false;
          }
          break;
          //TODO PARANETER 11 Y 12
//          case 11:{
//             GDIPLUS * p3 = hb_GDIPLUS_par( 3 );
//             void * uRP = GP_GET( p3 );
//             if( HB_ISPOINTER( 9 ){
//                GDIPLUS * p9 = hb_GDIPLUS_par( 9 );
//
//
//             }
//
//
//
//          }
       }

       if( lOk ){
          hb_retni( sta );
       }else
          hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


//       hb_retni( g->DrawImage( c, hb_parni(3), hb_parni(4), hb_parni(5), hb_parni(6) ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GDRAWLINE )
{
   GDIPLUS *p = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if(GP_IS_GRAPHICS( p )  && GP_IS_PEN( pObj ) )
   {
      Graphics *g = ( Graphics * ) GP_GET( p ) ;
      Pen* p = (Pen*) GP_GET( pObj );
      if( hb_pcount() > 4 ){
         if( HB_IS_DOUBLE( hb_param( 3, HB_IT_ANY ) ) )
            hb_retni( g->DrawLine( p, ( REAL ) hb_parnd(4), ( REAL ) hb_parnd(3), ( REAL ) hb_parnd(6), ( REAL ) hb_parnd(5) ) );
         else
            hb_retni( g->DrawLine( p, hb_parni(4), hb_parni(3), hb_parni(6), hb_parni(5) ) );
      }else if( hb_pcount() < 5 ){
         GDIPLUS * pPoint1 = hb_GDIPLUS_par( 3 );
         GDIPLUS * pPoint2 = hb_GDIPLUS_par( 4 );
         if( GP_IS_POINTF( pPoint1 ) && GP_IS_POINTF( pPoint2 ) ){
            PointF * point1 = ( PointF * ) GP_GET( pPoint1 );
            PointF * point2 = ( PointF * ) GP_GET( pPoint2 );
            hb_retni( g->DrawLine( p, *point1, *point2 ) );
         }else if( GP_IS_POINT( pPoint1 ) && GP_IS_POINT( pPoint2 ) ){
            Point * point1 = ( Point * ) GP_GET( pPoint1 );
            Point * point2 = ( Point * ) GP_GET( pPoint2 );
            hb_retni( g->DrawLine( p, *point1, *point2 ) );
         }
      }
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GFILLREGION ){

   GDIPLUS *p = hb_GDIPLUS_par( 1 );
   GDIPLUS * pBrush = hb_GDIPLUS_par( 2 );
    GDIPLUS * pregion = hb_GDIPLUS_par( 3 );

    if( GP_IS_GRAPHICS( p ) && GP_IS_BRUSH( pBrush ) && GP_IS_REGION( pregion ) ){
        Status sta;
        Graphics * g = ( Graphics * ) GP_GET( p );
       Brush * b = ( Brush * ) GP_GET( pBrush );
       Region * r = ( Region * ) GP_GET( pregion );

       sta = g->FillRegion( b, r );

       hb_retni( ( int ) sta );

    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GROUNDRECT )
{
    GDIPLUS *pG = hb_GDIPLUS_par( 1 );
    GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
    int x = hb_parni( 4 );
    int y = hb_parni( 3 );
    int xr = x + hb_parni( 5 );
    int yr = y + hb_parni( 6 );


    if( pG && pObj && hb_pcount() > 7 )
    {
      Graphics *g = ( Graphics * ) GP_GET( pG ) ;
      Pen * p = ( Pen * ) GP_GET( pObj );

      //TODO Garbage Collector for PEN
      Size* CornerSize = new Size(hb_parni( 7 ),hb_parni( 8 ));
      RectF* tl = new RectF(x,y,CornerSize->Width,CornerSize->Height);
      RectF* tr = new RectF(xr,y,CornerSize->Width,CornerSize->Height);
      RectF* bl = new RectF(x,yr,CornerSize->Width,CornerSize->Height);
      RectF* br = new RectF(xr,yr,CornerSize->Width,CornerSize->Height);
      GraphicsPath* oPath = new GraphicsPath();
      oPath->AddArc(*tl, 180, 90);
      oPath->AddArc(*tr, 270, 90);
      oPath->AddArc(*br, 360, 90);  //NOTE: br BEFORE bl
      oPath->AddArc(*bl, 90, 90);
      oPath->CloseAllFigures();
      if ( hb_pcount() > 8 )
      {
         GDIPLUS * pObj1 = hb_GDIPLUS_par( 9 );
         SolidBrush* pBrush = (SolidBrush*) GP_GET( pObj1 );
         g->FillPath( pBrush, oPath );
      }
      g->DrawPath( p, oPath );

      delete (RectF*) tl;
      delete (RectF*) tr;
      delete (RectF*) bl;
      delete (RectF*) br;
      delete (GraphicsPath*) oPath;
    }
    else
       hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GDRAWPATH )
{

   GDIPLUS * pObj1 = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   GDIPLUS * pObj2 = hb_GDIPLUS_par( 3 );

   if(GP_IS_GRAPHICS( pObj1 )  && GP_IS_PEN( pObj ) && GP_IS_GRAPHICSPATH( pObj2 ) )
   {
      Graphics *g = ( Graphics * ) GP_GET( pObj1 ) ;
      Pen * p = ( Pen * ) GP_GET( pObj );
      GraphicsPath * gp = ( GraphicsPath * ) GP_GET( pObj2 );
      g->DrawPath(p, gp );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GDRAWRECTANGLE )
{
    GDIPLUS * pG = hb_GDIPLUS_par( 1 );
    GDIPLUS * pP = hb_GDIPLUS_par( 2 );
    if( GP_IS_PEN( pP ) && GP_IS_GRAPHICS( pG ) ){

       Graphics *g = ( Graphics * ) GP_GET( pG );
       Pen* p = (Pen*) GP_GET( pP );
       if( hb_pcount() > 3 ){
          if( hb_itemType( hb_param( 3, HB_IT_ANY ) ) == HB_IT_DOUBLE ){
             hb_retni( g->DrawRectangle(p, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ) ) );
          }else if( hb_itemType( hb_param( 3, HB_IT_ANY ) ) == HB_IT_INTEGER  ){
             hb_retni( g->DrawRectangle(p, hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 ) ) );
          }else{
             hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
           }

        }else {

          GDIPLUS * pR = hb_GDIPLUS_par( 3 );

          if( GP_IS_RECTF( pR ) ){
             RectF * rect = ( RectF * ) GP_GET( pR );
             hb_retni( g->DrawRectangle(p, *rect ) );
          }else if( GP_IS_RECT( pR ) ){
             Rect * rect = ( Rect * ) GP_GET( pR );
             hb_retni( g->DrawRectangle(p, *rect ) );
          }else
             hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
        }
    }
    else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GDRAWSTRING )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pF = hb_GDIPLUS_par( 3 );
   GDIPLUS * pP = hb_GDIPLUS_par( 4 );
   BOOL lRet = true;

   if( GP_IS_GRAPHICS( pG ) && GP_IS_FONT( pF ) && ( GP_IS_POINTF( pP ) || GP_IS_RECTF( pP ) ) )
   {
      Graphics * g = ( Graphics * ) GP_GET( pG );
      Font * myFont = ( Font* ) GP_GET( pF );

      if( hb_pcount() < 6 ){
         GDIPLUS * pB = hb_GDIPLUS_par( 5 );
         if( GP_IS_BRUSH( pB ) ){
            Brush * b = ( Brush * ) GP_GET( pB );
            WCHAR * str = hb_GDIPLUS_parw( 2 );
            if( GP_IS_POINTF( pP ) ){
               PointF * p = ( PointF * ) GP_GET( pP );
               g->DrawString( str, hb_parclen( 2 ), myFont, *p, b );
            }
            hb_xfree( str );
         }else
            lRet = false;
      }else {
         GDIPLUS * pU = hb_GDIPLUS_par( 5 );
         GDIPLUS * pB = hb_GDIPLUS_par( 6 );
         if( GP_IS_STRINGFORMAT( pU ) && GP_IS_BRUSH( pB ) ){
            StringFormat * s = ( StringFormat * ) GP_GET( pU );
            Brush * b = ( Brush * ) GP_GET( pB );
            WCHAR * str = hb_GDIPLUS_parw( 2 );
            if( GP_IS_POINTF( pP ) ){
               PointF * p = ( PointF * ) GP_GET( pP );
               g->DrawString( str, hb_parclen( 2 ), myFont, *p, s, b );
            }
            else {
               RectF * p = ( RectF * ) GP_GET( pP );
               g->DrawString( str, hb_parclen( 2 ), myFont, *p, s, b );
             }
            hb_xfree( str );
         }else
            lRet = false;
      }


   }
   else
      lRet = false;

   if( ! lRet )
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

//Status DrawString(
//  [in]       const WCHAR *string,
//  [in]       INT length,
//  [in]       const Font *font,
//  [in, ref]  const RectF &layoutRect,
//  [in]       const StringFormat *stringFormat,
//  [in]       const Brush *brush
//);

//HB_FUNC( C5GDRAWSTRINGRC )
//{
//   Graphics *g = (Graphics*) hb_parnl( 1 );
//   LPWSTR str = hb_mbtowc( (LPSTR) hb_parc( 2 ));
//   RectF rect = RectF( hb_parvnd( 4, 1 ), hb_parvnd( 4, 2 ), hb_parvnd( 4, 3 ), hb_parvnd( 4, 4 ) );
//   Font* myFont = (Font*) hb_parnl( 5 );
//   Color* c = (Color*) hb_parnl(6);
//   SolidBrush* blackBrush = new SolidBrush(*c);
//   g->DrawString( str, hb_parclen( 2 ), myFont, rect, blackBrush);
//
//   delete (SolidBrush*) blackBrush;
//   hb_xfree( str );
//}
//

HB_FUNC( C5GENDCONTAINER )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GraphicsContainer  state = ( GraphicsContainer ) hb_parnl( 2 );
   if( GP_IS_GRAPHICS( p ) ){
      Graphics * o = ( Graphics * ) GP_GET( p );
      hb_retni( ( int ) o->EndContainer( state ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GFILLELLIPSE )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pBrush = hb_GDIPLUS_par( 2 );
   int iParam = hb_pcount();
   if( GP_IS_GRAPHICS( pG ) && GP_IS_BRUSH( pBrush ) )
   {
     Graphics *g = ( Graphics * ) GP_GET( pG );
     Brush* b = (Brush*) GP_GET( pBrush );

     if( iParam > 5 ){
        if( HB_IS_DOUBLE( hb_param( 4, HB_IT_ANY ) ) )
            hb_retni( g->FillEllipse( b, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 5 ), hb_parni( 6 )) );
        else
           hb_retni( g->FillEllipse( b, ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ) ) );
     }else if( iParam < 4 ){
        GDIPLUS * pRect = hb_GDIPLUS_par( 3 );
        if( GP_IS_RECT( pRect ) ){
           Rect * rect = ( Rect * ) GP_GET( pRect );
           hb_retni( g->FillEllipse( b, *rect ) );
        }else if( GP_IS_RECTF( pRect ) ){
           RectF * rect = ( RectF * ) GP_GET( pRect );
           hb_retni( g->FillEllipse( b, *rect ) );
        }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
     }
   }
   else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GFILLPATH )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * p1 = hb_GDIPLUS_par( 2 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 3 );

   if( GP_IS_GRAPHICS( pG ) && GP_IS_BRUSH( p1 ) && GP_IS_GRAPHICSPATH( p2 ) ){
      Graphics * g = ( Graphics * ) GP_GET( pG );
      Brush * brush = (Brush*) GP_GET( p1 );
      GraphicsPath* gp = (GraphicsPath*) GP_GET( p2 );
      hb_retni( ( int ) g->FillPath( brush, gp ) );
   }
   else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GFILLRECTANGLE )
{
    GDIPLUS * pG = hb_GDIPLUS_par( 1 );
    GDIPLUS * pBrush = hb_GDIPLUS_par( 2 );

    if( hb_pcount() > 3 ){
       Graphics *g = ( Graphics *) GP_GET( pG );
       Brush * brush = ( Brush *) GP_GET( pBrush );

       if( HB_ISDOUBLE( 3 ) ){
          REAL x = ( REAL ) hb_parnd( 3 );
          REAL y = ( REAL ) hb_parnd( 4 );
          REAL width = ( REAL ) hb_parnd( 5 );
          REAL height = ( REAL ) hb_parnd( 6 );
          if( GP_IS_GRAPHICS( pG ) && GP_IS_BRUSH( pBrush ) )
          {
             hb_retni( g->FillRectangle( brush, x, y, width, height ) );
          }
          else
             hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

         } else if( HB_ISINTEGER( 3 ) ){
           int x      = hb_parni( 3 );
           int y      = hb_parni( 4 );
           int width  = hb_parni( 5 );
           int height = hb_parni( 6 );
           if( GP_IS_GRAPHICS( pG ) && GP_IS_BRUSH( pBrush ) )
           {
              hb_retni( g->FillRectangle( brush, x, y, width, height ) );
           }
           else
              hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
         }

    }else if( hb_pcount() < 4 ) {
       GDIPLUS * pRect = hb_GDIPLUS_par( 3 );
       Graphics *g = ( Graphics *) GP_GET( pG );
       Brush * brush = ( Brush *) GP_GET( pBrush );

       if( GP_IS_GRAPHICS( pG ) &&  GP_IS_RECT( pRect ) && GP_IS_BRUSH( pBrush ) ){
           Rect * rect = ( Rect *) GP_GET( pRect );
           hb_retni( g->FillRectangle( brush, *rect ) );
       }
       else if( GP_IS_GRAPHICS( pG ) &&  GP_IS_RECTF( pRect ) && GP_IS_BRUSH( pBrush ) ){
           RectF * rect = ( RectF * ) GP_GET( pRect );
           hb_retni( g->FillRectangle( brush, *rect ) );
       }else
           hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }

}


HB_FUNC( C5GFILLRECTANGLER )
{
    Graphics *g = hb_Graphics_par( 1 );
    void ** pPtr = ( void**) hb_parptr( 2 );
    Brush * brush = ( Brush *) *pPtr;
    Rect * rect = hb_Rect_par( 3 );

    if( g && brush && rect )
    {

       g->FillRectangle( brush, *rect );
    }

    else
       hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GFILLRECT )
{
    Graphics *g = hb_Graphics_par( 1 );
    SolidBrush* brush = hb_SolidBrush_par( 3 );

   if( g && brush )
   {

     RectF rect = RectF(hb_parvnd( 2, 1 ), hb_parvnd( 2, 2 ), hb_parvnd( 2, 3 ), hb_parvnd( 2, 4 ));
     g->FillRectangle(brush, rect );
     if( hb_pcount                        () > 3 )
     {
        Pen *p = (Pen*) hb_parptr( 4 );
        g->DrawRectangle( p, rect );
     }

   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


    hb_ret();
}

HB_FUNC( C5GRESETCLIP )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_GRAPHICS( p ) ){
      Graphics * o = ( Graphics * ) GP_GET( p );
      hb_retni( ( int ) o->ResetClip() );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


//typedef enum  {
//  MatrixOrderPrepend   = 0,
//  MatrixOrderAppend    = 1
//} MatrixOrder;
HB_FUNC( C5GROTATETRANSFORM )
{
   Graphics *g = hb_Graphics_par( 1 );

   if( g && hb_pcount() > 2 )
   {
      g->RotateTransform( (REAL) hb_parnd( 2 ), (MatrixOrder) hb_parni( 3 ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   hb_ret();
}

HB_FUNC( C5RESETTRANSFORM )
{
   Graphics *g = hb_Graphics_par( 1 );

   if( g )
   {
      g->ResetTransform();
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

   hb_ret();
}



HB_FUNC( C5GSCALETRANSFORM )
{
   Graphics *g = hb_Graphics_par( 1 );


   if( g && hb_pcount() > 3 )
   {
      g->ScaleTransform( (REAL) hb_parnd( 2 ), (REAL) hb_parnd( 3 ), (MatrixOrder) hb_parni( 4 ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


   hb_ret();
}


HB_FUNC( C5GSETCLIP )
{

   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   CombineMode q = (CombineMode) hb_parni( 3 );
   Status sta;

   if( GP_IS_GRAPHICS( pG ) )
   {
      Graphics * g = ( Graphics *) GP_GET( pG );
      void * p = hb_parptr( 2 );
      BOOL lOk = true;

      if( GetObjectType( ( HGDIOBJ ) p ) ){
         sta = g->SetClip( ( HRGN ) p, q );
      }else {
         GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
         if( GP_IS_RECT( p2 ) ){
            sta = g->SetClip( *( ( Rect * ) GP_GET( p2 ) ), q );
         }else if( GP_IS_RECTF( p2 ) ){
            sta = g->SetClip( *( ( RectF * ) GP_GET( p2 ) ), q );
         }else if( GP_IS_REGION( p2 ) ){
            sta = g->SetClip( ( Region * ) GP_GET( p2 ), q );
         }else if( GP_IS_GRAPHICS( p2 ) ){
            sta = g->SetClip( ( Graphics * ) GP_GET( p2 ), q );
         }else if( GP_IS_GRAPHICSPATH( p2 ) ){

            sta = g->SetClip( ( GraphicsPath * ) GP_GET( p2 ), q );
         }else
            lOk = false;

         if( lOk )
            hb_retni( ( int ) sta );
         else
            hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GTRANSLATETRANSFORM )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   Status sta;
   if( GP_IS_GRAPHICS( pG ) )
   {
      Graphics * g = ( Graphics *) GP_GET( pG );
      sta = g->TranslateTransform( (REAL) hb_parnd( 2 ), (REAL) hb_parnd( 3 ), (MatrixOrder) hb_parni( 4 ) );
      hb_retni( sta );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5SETSMOOTHINGMODE )
{

   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   SmoothingMode q = (SmoothingMode ) hb_parni( 2 );
   Status sta;
   if( GP_IS_GRAPHICS( pG ) )
   {
      Graphics * g = ( Graphics *) GP_GET( pG );
      sta = g->SetSmoothingMode( q );
      hb_retni( sta );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5SETTEXTRENDERINGHINT )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   TextRenderingHint newMode = (TextRenderingHint) hb_parni( 2 );
   Status sta;
   if( GP_IS_GRAPHICS( pG ) )
   {
      Graphics * g = ( Graphics *) GP_GET( pG );
      sta = g->SetTextRenderingHint( newMode );
      hb_retni( sta );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( C5GSETTRANSFORM )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pM = hb_GDIPLUS_par( 2 );
   if( GP_IS_MATRIX( pM ) && GP_IS_GRAPHICS( pG ) ){
      Graphics * g = ( Graphics * ) GP_GET( pG );
      Matrix * m = ( Matrix * ) GP_GET( pM );
      hb_retni( g->SetTransform( m ) );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GETHDC )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   if( GP_IS_GRAPHICS( pG ) ){
      Graphics * g = ( Graphics * ) GP_GET( pG );
      hb_retptr( (void*) g->GetHDC() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5RELEASEHDC )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   HDC hDC = (HDC) hb_parptr( 2 );
   if( GP_IS_GRAPHICS( pG ) ){
      Graphics * g = ( Graphics * ) GP_GET( pG );
      g->ReleaseHDC( hDC );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


//HB_FUNC( C5GGETTRANSFORM )
//{
//
//   GDIPLUS * p = hb_GDIPLUS_par( 1 );
//
//   if( GP_IS_GRAPHICS( p ) ){
//      Graphics * o = ( Graphics * ) GP_GET( p );
//      GDIPLUS * p2;
//      PHB_ITEM oMatrix = hb_itemNew( NULL );
//      Status sta;
//      Traza( "1");
//      p2 = GPNewGDIPLUSObject2( GP_IT_MATRIX );
//      Traza( "2");
//      Matrix * matrix = ( Matrix * ) GP_GET( p2 );
//      sta = o->GetTransform( matrix );
//
//      GDIPLUSItemPut( oMatrix, p2 );
//
//      GDIPLUS_StoreParam( 2, oMatrix );
////      hb_gcGripDrop( oMatrix );
//
//      hb_retni( sta );
//   }else
//     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//
//}


HB_FUNC( C5GGETTRANSFORM )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_GRAPHICS( p ) ){
      Graphics * o = ( Graphics * ) GP_GET( p );
      PHB_ITEM oMatrix;
      Matrix * matrix;
      Status sta;
      oMatrix = GPCreateObjectToFill( ( void **)&matrix, GP_IT_MATRIX );

      sta = o->GetTransform( matrix );

      GDIPLUS_StoreParam( 2, oMatrix );

      hb_retni( sta );
   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


/*
HB_FUNC( C5XXX ){
   HDC hdc = ( HDC ) hb_parnl( 1 );

}
*/
#pragma ENDDUMP




/*
HB_FUNC( C5G_... )
{

   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_GRAPHICS( p ) ){
      Graphics * o = ( Graphics * ) GP_GET( p );

   }else
     hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}
*/

