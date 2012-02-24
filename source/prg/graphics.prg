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
     ::handle:= GdiPlusNewGraphics( hDCOrImage )
  elseif valtype( hDCOrImage ) == "O"
     ::handle:= GdiPlusNewGraphicsFromBitmap( hDCOrImage:handle )
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

  GPAddMetafileComment( ::handle, cComment )

return 0

**********************************************************************************************************
  METHOD BeginContainer( ) CLASS GPGraphics
**********************************************************************************************************

return GPBeginContainer(::handle)

**********************************************************************************************************
  METHOD BitBlt( oImage, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units ) CLASS GPGraphics
**********************************************************************************************************

  GP_BitBlt( ::handle, oImage:handle, nTop, nLeft, nTopSrc, nLeftSrc, nWidth, nHeight, units )

return 0


**********************************************************************************************************
  METHOD Clear( oColor ) CLASS GPGraphics
**********************************************************************************************************

  GP_Clear( ::handle, oColor:handle )

return 0



**********************************************************************************************************
  METHOD DrawArc( nTop, nLeft, nWidth, nHeight, nStartFrom, nAngle ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawArc( ::handle, ::oPen:handle, nTop, nLeft, nWidth, nHeight, nStartFrom, nAngle )

return 0

**********************************************************************************************************
  METHOD DrawBezier( aStartPt, aPtCtrl1, aPtCtrl2, aEndPt   ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawBezier( ::handle, ::oPen:handle, aStartPt[1], aStartPt[2], aPtCtrl1[1], aPtCtrl1[2], aPtCtrl2[1], aPtCtrl2[2], aEndPt[1], aEndPt[2]  )

return 0

**********************************************************************************************************
  METHOD DrawBeziers( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawCachedBitmap( oCBitmap, nTop, nLeft ) CLASS GPGraphics
**********************************************************************************************************

  GP_DrawCachedBitmap( ::handle, oCBitmap:handle, nTop, nLeft )

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
      return GP_DrawCurve( ::handle, oPen:handle, B:handle, C, D, E, F )
   else 
      return GP_DrawCurve( ::handle, oPen:handle, B, C )
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

return GP_DrawEllipse( ::handle, oPen:handle, nTop, nLeft, nwidth, nHeight )

**********************************************************************************************************
  METHOD DrawImage( oImage, nTop, nLeft, nWidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT nWidth  := oImage:nWidth()
  DEFAULT nHeight := oImage:nHeight()

  GP_DrawImage( ::handle, oImage:handle, nTop, nLeft, nWidth, nHeight )


return 0

**********************************************************************************************************
  METHOD FillEllipse( oBrush, nTop, nLeft, nwidth, nHeight ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oBrush := ::oBrush
  
  if valtype( nTop ) == "A"
     nLeft   := nTop[2]
     nWidth  := nTop[4]-nTop[2]
     nHeight := nTop[3]-nTop[1]
     nTop    := nTop[1]
     GP_FillEllipse( ::handle, oBrush:handle, nTop, nLeft, nwidth, nHeight )
  elseif ( valtype( nTop ) == "O" )
     GP_FillEllipse( ::handle, oBrush:handle, nTop:handle )
  elseif ( valtype( nTop ) == "N" )
     GP_FillEllipse( ::handle, oBrush:handle, nTop, nLeft, nwidth, nHeight )
  endif

return 0


**********************************************************************************************************
  METHOD FillPath( oPath ) CLASS GPGraphics
**********************************************************************************************************

  GP_FillPath( ::oBrush:handle, oPath:handle )

return 0

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
      nStatus = GP_FillRectangle( ::handle, aParams[ 1 ]:handle /*Brush*/, aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
   elseif nLen == 2
      nStatus = GP_FillRectangle( ::handle, aParams[ 1 ]:handle /*Brush*/, aParams[ 2 ]:handle /*Rect(F)*/ )
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
  METHOD FillRegion( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD FillRoundRect( rc, nRad1, nRad2, oBrush, oPen ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT oBrush := ::oBrush
  DEFAULT oPen   := ::oPen

  GP_RoundRect( ::handle, oPen:handle, rc[1], rc[2], rc[4]-rc[2], rc[3]-rc[1], nRad1, nRad2, oBrush:handle )

return 0

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


return 0

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
  METHOD GetTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

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
  METHOD ReleaseHDC( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ResetClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD ResetTransform( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD Restore( ) CLASS GPGraphics
**********************************************************************************************************


return 0




**********************************************************************************************************
  METHOD DrawPath( oPen, oPath ) CLASS GPGraphics
**********************************************************************************************************
   
   DEFAULT oPen := ::oPen


return GP_DrawPath( ::handle, oPen:handle, oPath:handle )

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
     return GP_DrawRectangle( ::handle, oPen:handle, x:handle )
     
  else
     return GP_DrawRectangle( ::handle, oPen:handle, x, y, width, height )
  endif

return 0

**********************************************************************************************************
  METHOD DrawRectangles( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD DrawRoundRect( rc, oPen, nRad1, nRad2 ) CLASS GPGraphics
**********************************************************************************************************

  GP_RoundRect( ::handle, oPen:handle, rc[1], rc[2], rc[4]-rc[2], rc[3]-rc[1], nRad1, nRad2 )

return 0

**********************************************************************************************************
  METHOD DrawString( cText, nTop, nLeft, font, color ) CLASS GPGraphics
**********************************************************************************************************

  DEFAULT font := ::oFont
  DEFAULT color := ::oColor

  GP_DrawString( ::handle, cText, nTop, nLeft, font:handle, color:handle )

return 0

**********************************************************************************************************
  METHOD EndContainer( ) CLASS GPGraphics
**********************************************************************************************************


return 0

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
      return GP_DrawLine( ::handle, oPen:handle, nTop:handle, nLeft:handle )
   else 
      return GP_DrawLine( ::handle, oPen:handle, nTop, nLeft, nBottom, nRight )
   endif
   

return 0


**********************************************************************************************************
  METHOD DrawLines( )  CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD RotateTransform( angle, order ) CLASS GPGraphics
**********************************************************************************************************

  GP_RotateTransform( ::handle, angle, order )

return nil

**********************************************************************************************************
  METHOD Save( ) CLASS GPGraphics
**********************************************************************************************************
  return nil

**********************************************************************************************************
  METHOD ScaleTransform( hor, ver, order ) CLASS GPGraphics
**********************************************************************************************************

  GP_ScaleTransform( ::handle, hor, ver, order )

return nil

**********************************************************************************************************
  METHOD SetAbort( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetClip( ) CLASS GPGraphics
**********************************************************************************************************


return 0

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

DEFAULT nMode := 2 // SmoothingModeHighQuality

SetSmoothingMode(::handle, nMode )

return 0




**********************************************************************************************************
  METHOD SetTextContrast( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetTextRenderingHint( ) CLASS GPGraphics
**********************************************************************************************************


return 0

**********************************************************************************************************
  METHOD SetTransform( oMatrix ) CLASS GPGraphics
**********************************************************************************************************


return GP_SetTransform( ::handle, oMatrix:handle )

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

  GP_TranslateTransform( ::handle, hor, ver, order )

return nil


function _GPConvertHandle( o, h )
   o:handle = getGdiplusHandle( h )
return o

#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <hbapiitm.h>
#include <gdiplus.h>
#include <gc.h>
#include <hbapicls.h>


GdiplusStartupInput gdiplusStartupInput;

ULONG_PTR gdiplusToken;

HB_FUNC( GDIPLUSSTARTUP )
{

    GdiplusStartup(&gdiplusToken, &gdiplusStartupInput, NULL);
    hb_retni( (int) gdiplusToken );

}

HB_FUNC( GDIPLUSSHUTDOWN )
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

HB_FUNC( GDIPLUSNEWGRAPHICS )
{
   GDIPLUS * pG = gdiplus_new( GP_IT_GRAPHICS ); 
   Graphics *g = new Graphics( (HDC) hb_parnl(1));
   pG->pObject = g;
   hb_GDIPLUS_ret( pG );
}

HB_FUNC( GDIPLUSNEWGRAPHICSFROMBITMAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_IMAGE( pObj ) ){ 
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

HB_FUNC( GPADDMETAFILECOMMENT )
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

HB_FUNC( GPBEGINCONTAINER )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_GRAPHICS( pObj ) )
   {
     Graphics *g = ( Graphics * ) pObj->pObject;     
     GraphicsContainer gc;
     gc = g->BeginContainer();
     hb_retni( gc );
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


HB_FUNC( GP_BITBLT )
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

HB_FUNC( GP_CLEAR )
{
   GDIPLUS * pG = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if( GP_IS_GRAPHICS( pG ) && GP_IS_COLOR( pObj ) )
   {
     Graphics *g = ( Graphics * ) pG->pObject;     
     Color* c = (Color*) pObj->pObject;     
     g->Clear( *c );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


    hb_ret();
}


HB_FUNC( GP_DRAWARC )
{
    Graphics *g = hb_Graphics_par( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );

   if( g && p && hb_pcount() > 7 )
   {
    //TODO Garbage Collector for PEN
    g->DrawArc( p, hb_parni(4), hb_parni(3), hb_parni(5), hb_parni(6), (REAL) hb_parnd( 7 ), (REAL) hb_parnd( 8 ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

    hb_ret();
}

HB_FUNC( GP_DRAWBEZIER )
{
    Graphics *g = hb_Graphics_par( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );

   if( g && p && hb_pcount() > 9 )
   {
    //TODO Garbage Collector for PEN
     g->DrawBezier( p, hb_parni( 4 ), hb_parni( 3 ), hb_parni( 6 ), hb_parni( 5 ), hb_parni( 8 ), hb_parni( 7 ), hb_parni( 10 ), hb_parni( 9 ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


    hb_ret();
}

HB_FUNC( GP_DRAWCACHEDBITMAP )
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

HB_FUNC( GP_DRAWCURVE ){

   GDIPLUS *p = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   Status sta;
   int iParam = hb_pcount();
   if(GP_IS_GRAPHICS( p )  && GP_IS_PEN( pObj ) && hb_pcount() < 5 )
   {
      Graphics *g = ( Graphics * ) GP_GET( p ) ;
      Pen* p = (Pen*) GP_GET( pObj ); 
      int iParam = hb_pcount();
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


HB_FUNC( GP_DRAWELLIPSE )
{

   GDIPLUS *p = hb_GDIPLUS_par( 1 );

   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );
   if(GP_IS_GRAPHICS( p )  && GP_IS_PEN( pObj ) && hb_pcount() > 5 )
   {
      Graphics *g = ( Graphics * ) GP_GET( p ) ;
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( g->DrawEllipse( p, hb_parni(4), hb_parni(3), hb_parni(6), hb_parni(5) ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( GP_DRAWIMAGE )
{
   GDIPLUS *p = hb_GDIPLUS_par( 1 );
   GDIPLUS * pObj = hb_GDIPLUS_par( 2 );

   if( GP_IS_GRAPHICS( p )  && ( GP_IS_IMAGE( pObj ) || GP_IS_BITMAP( pObj ) ) && hb_pcount() > 5 )
   {
       Graphics * g = ( Graphics * ) GP_GET( p ); 
       Image * c = ( Image * ) GP_GET( pObj ); 
       hb_retni( g->DrawImage( c, hb_parni(3), hb_parni(4), hb_parni(5), hb_parni(6) ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      
}


HB_FUNC( GP_DRAWLINE )
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

HB_FUNC( GP_ROUNDRECT )
{
    Graphics *g = hb_Graphics_par( 1 );
    Pen* p = (Pen*) hb_parptr( 2 );
    int x = hb_parni( 4 );
    int y = hb_parni( 3 );
    int xr = x + hb_parni( 5 );
    int yr = y + hb_parni( 6 );


    if( g && p && hb_pcount() > 7 )
    {
      //TODO Garbage Collector for PEN
      Size* CornerSize = new Size(hb_parni( 7 ),hb_parni( 8 ));
      RectF* tl = new RectF(x,y,CornerSize->Width,CornerSize->Height);
      RectF* tr = new RectF(xr,y,CornerSize->Width,CornerSize->Height);
      RectF* bl = new RectF(x,yr,CornerSize->Width,CornerSize->Height);
      RectF* br = new RectF(xr,yr,CornerSize->Width,CornerSize->Height);
      GraphicsPath* oPath = new GraphicsPath                        ();
      oPath->AddArc(*tl, 180, 90);
      oPath->AddArc(*tr, 270, 90);
      oPath->AddArc(*br, 360, 90);  //NOTE: br BEFORE bl
      oPath->AddArc(*bl, 90, 90);
      oPath->CloseAllFigures                        ();
      if ( hb_pcount                        () > 8 )
      {
         SolidBrush* b = (SolidBrush*) hb_parptr( 9 );
         g->FillPath( b, oPath );
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


HB_FUNC( GP_DRAWPATH )
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

HB_FUNC( GP_DRAWRECTANGLE )
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

HB_FUNC( GP_DRAWSTRING )
{
   Graphics *g = hb_Graphics_par( 1 );
   Font* myFont = (Font*) hb_parptr( 5 );
   Color* c = (Color*) hb_parptr(6);

   if( g && myFont && c )
   {
      LPWSTR str = hb_mbtowc( (LPSTR) hb_parc( 2 ));
      PointF origin((float) hb_parni( 4 ), (float) hb_parni( 3 ) );
      SolidBrush* blackBrush = new SolidBrush(*c);
      g->DrawString( str, hb_parclen( 2 ), myFont, origin, blackBrush);
      delete (SolidBrush*) blackBrush;
      hb_xfree( str );
   }
   else
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

//HB_FUNC( GP_DRAWSTRINGRC )
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

HB_FUNC( GP_FILLELLIPSE )
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
            hb_retni( g->FillEllipse( b, hb_parni( 3 ), hb_parni( 4 ), hb_parni( 5 ), hb_parni( 6 )) );
        else
           hb_retni( g->FillEllipse( b, ( REAL ) hb_parnd( 3 ), ( REAL ) hb_parnd( 4 ), ( REAL ) hb_parnd( 5 ), ( REAL ) hb_parnd( 6 ) ) );
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


HB_FUNC( GP_FILLPATH )
{
    Graphics *g = hb_Graphics_par( 1 );
    SolidBrush* brush = (SolidBrush*) hb_parptr( 2 );
    GraphicsPath* gp = (GraphicsPath*) hb_parptr( 3 );

   if( g && brush && gp )
   {
     g->FillPath(brush, gp );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

    hb_ret();
}


HB_FUNC( GP_FILLRECTANGLE )
{
    GDIPLUS * pG = hb_GDIPLUS_par( 1 );
    GDIPLUS * pBrush = hb_GDIPLUS_par( 2 );

    if( hb_pcount() > 2 ){    
       Graphics *g = ( Graphics *) GP_GET( pG );
       Brush * brush = ( Brush *) GP_GET( pBrush );
       
       if( HB_IS_DOUBLE( hb_param( 3, HB_IT_ANY ) ) ){       
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
             
         } else if( HB_IS_INTEGER( hb_param( 3, HB_IT_ANY ) ) ){
           int x      = hb_parni( 3 );
           int y      = hb_parni( 4 );
           int width  = hb_parni( 5 );
           int height = hb_parni( 6 );          
           if( GP_IS_GRAPHICS( pG )  && GP_IS_BRUSH( pBrush ) )
           {
              hb_retni( g->FillRectangle( brush, x, y, width, height ) );
           }
           else
              hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );           
         } 
   
    }else if( hb_pcount() > 1 ) { 
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


HB_FUNC( GP_FILLRECTANGLER )
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

HB_FUNC( GP_FILLRECT )
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


//typedef enum  {
//  MatrixOrderPrepend   = 0,
//  MatrixOrderAppend    = 1
//} MatrixOrder;
HB_FUNC( GP_ROTATETRANSFORM )
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

HB_FUNC( GP_SCALETRANSFORM )
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

HB_FUNC( GP_TRANSLATETRANSFORM )
{
   Graphics *g = hb_Graphics_par( 1 );

   if( g && hb_pcount() > 3 )
   {
      g->TranslateTransform( (REAL) hb_parnd( 2 ), (REAL) hb_parnd( 3 ), (MatrixOrder) hb_parni( 4 ) );
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


   hb_ret();
}

HB_FUNC( SETSMOOTHINGMODE )
{
   Graphics *g = hb_Graphics_par( 1 );
   SmoothingMode  q = (SmoothingMode ) hb_parni( 2 );

   if( g && q )
   {
      g->SetSmoothingMode(q);
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( SETTEXTRENDERINGHINT )
{
   Graphics *g = hb_Graphics_par( 1 );

   if( g  )
   {
      g->SetTextRenderingHint(TextRenderingHintAntiAlias);
   }
   else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( GP_SETTRANSFORM )
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

#pragma ENDDUMP


















//static oWnd
//static nPaint := 1
//
//function main()
//
//local oIcon
//
//
//DEFINE ICON oIcon NAME 1
//
//gdiplusstartup()
//
//DEFINE WINDOW oWnd TITLE "Test GdiPlus"
//
//
//
//ACTIVATE WINDOW oWnd ON PAINT Pinta( hDC ) MAXIMIZED
//
//GdiplusShutdown()
//
//return nil
//
//
//function pinta( hDC )
//
//local g       := Graphics( hDC )
//local oColor  := Color( 255,0,0,0 )
////local oFont   := Font( "Segoe UI", 30 )
//local oPen1   := Pen( oColor, 1 )
//local oPen2   := Pen( oColor, 2 )
////local oPen3   := Pen( oColor, 3 )
////local oBrush1 := SolidBrush( oColor )
//local rc := GetClientRect(oWnd:hWnd )
//local oImage   := Image( "ice_cream.png" )
//g:DrawImage( oImage, 10, 10, rc[4]/3, rc[3]/3 )
//
//g:SetSmoothingMode()
//g:SetPen( oPen1 )
//g:DrawLine( 10, 10, 300, 300 )
////
//g:SetPen( oPen2 )
//g:DrawRectangle( {50, 50, 200, 300} )
//
//return 0
//

/* Ejemplo de uso

local g       := Graphics( hDC )
local oColor  := Color( 255,0,0,0 )
local oFont   := Font( "Segoe UI", 30 )
local oPen1   := Pen( oColor, 1 )
local oPen2   := Pen( oColor, 2 )
local oPen3   := Pen( oColor, 3 )
local oBrush1 := SolidBrush( oColor )


g:SetPen( oPen1 )
g:DrawLine( 10, 10, 300, 300 )

g:SetPen( oPen2 )
g:DrawRectangle( 50, 50, 200, 300 )

return 0


Los objetos se destruyen solos cuando se termina la función porque se han definido en las clases metodos DESTRUCTOR
o por lo menos eso creo

Los métodos susceptibles de recibir un rectangulo pueden o pasar nTop, nLeft, nWidth, nHeight o un rectangulo como primer
parametro

Las funciones de pintado tienen que tener puestas con antelación lo que necesiten para pintar:

   Una funcion que dibuje una línea tiene que tener un objeto Pen establecido.
   Si una función necesita un brush y un pen pues igual. Necesitas un g:SetBrush( oBrush ) y un g:SetPen( oPen )

*/

