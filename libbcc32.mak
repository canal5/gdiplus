
# Libray directories & filenames #############################################

LIB_NAME         = $(PATHLIB)\$(LIBNAME)
LIB_PRG_DIR      = source\prg
LIB_CPP_DIR      = source\cpp
LIB_OBJ_DIR      = .\obj
LIB_INCLUDE_DIR  = .\include


# LIBRARY PRG files (your PRG files go here) #################################

LIB_PRG_LIST =                \
    AdjustableArrowCap.prg          \
    Bitmap.prg                      \
    BitmapData.prg                  \
    Blur.prg                        \
    BrightnessContrast.prg          \
    Brush.prg                       \
    CachedBitmap.prg                \
    CharacterRange.prg              \
    Color.prg                       \
    ColorBalance.prg                \
    ColorCurve.prg                  \
    ColorLUT.prg                    \
    ColorMatrixEffect.prg           \
    CustomLineCap.prg               \
    Effect.prg                      \
    EncoderParameter.prg            \
    EncoderParameters.prg           \
    Font.prg                        \
    FontCollection.prg              \
    Fontfamily.prg                  \
    GdiplusBase.prg                 \
    Graphics.prg                    \
    GraphicsPath.prg                \
    GraphicsPathIterator.prg        \
    HatchBrush.prg                  \
    HueSaturationLightness.prg      \
    Image.prg                       \
    ImageAttributes.prg             \
    ImageCodecInfo.prg              \
    ImageItemData.prg               \
    InstalledFontCollection.prg     \
    Levels.prg                      \
    LinearGradientBrush.prg         \
    Matrix.prg                      \
    Metafile.prg                    \
    Metafileheader.prg              \
    PathData.prg                    \
    Pathgradientbrush.prg           \
    Pen.prg                         \
    Point.prg                       \
    PointF.prg                      \
    PrivateFontCollection.prg       \
    PropertyItem.prg                \
    Rect.prg                        \
    RectF.prg                       \
    RedEyeCorrection.prg            \
    Region.prg                      \
    Sharpen.prg                     \
    Size.prg                        \
    SizeF.prg                       \
    Solidbrush.prg                  \
    Stringformat.prg                \
    TextureBrush.prg                \
    Tint.prg


APP_CPPPP_LIST =                    \
    gc.cpp                          \
    generic.cpp

# Make directives ############################################################

.autodepend
.swap
.suffixes: .prg .hrb .c .cpp

# Paths for dependent files ##################################################

.path.prg = $(LIB_PRG_DIR)
.path.hrb = $(LIB_OBJ_DIR)
.path.obj = $(LIB_OBJ_DIR)
.path.c   = $(LIB_CPP_DIR)
.path.cpp = $(LIB_CPP_DIR)


# Contruction of the rest dependency lists ###################################

LIB_PRGS  = $(LIB_PRG_LIST)
LIB_C     = $(LIB_C_LIST)
LIB_HRB   = $(LIB_PRG_LIST:.prg=.hrb)
LIB_OBJS  = $(LIB_PRG_LIST:.prg=.obj) $(LIB_C_LIST:.c=.obj) $(APP_CPPPP_LIST:.cpp=.obj)

# FiveWin directories & flags ################################################

FW_INCLUDE_DIR = $(FW_DIR)\include
FW_LIB_DIR     = $(FW_DIR)\lib

# Harbour directories & flags ################################################

HARBOUR_INCLUDE_DIR = $(HB_DIR)\include
HARBOUR_EXE_DIR     = $(HB_DIR)\bin
HARBOUR_LIB_DIR     = $(HB_DIR)\lib
HARBOUR_FLAGS       = -i$(LIB_INCLUDE_DIR);$(HARBOUR_INCLUDE_DIR);$(FW_INCLUDE_DIR) -n -m -w0 -es2 -gc0
HARBOUR_EXE         = $(HARBOUR_EXE_DIR)\harbour.exe

# Borlanc directories & flags ################################################

BORLANDC_INCLUDE_DIR = $(BCC_DIR)\include
BORLANDC_EXE_DIR     = $(BCC_DIR)\bin
BORLANDC_LIB_DIR     = $(BCC_DIR)\lib
BORLANDC_COMP_FLAGS  = -P -c -O2 -I$(HARBOUR_INCLUDE_DIR);$(BORLANDC_INCLUDE_DIR);$(LIB_INCLUDE_DIR)
BORLANDC_COMP_FLAGS_CPP  = -P -c -O2 -I$(HARBOUR_INCLUDE_DIR);$(BORLANDC_INCLUDE_DIR);$(LIB_INCLUDE_DIR)
BORLANDC_COMP_EXE    = $(BORLANDC_EXE_DIR)\bcc32.exe
BORLANDC_LIB_EXE     = $(BORLANDC_EXE_DIR)\tlib.exe

# Dependencies ###############################################################

all: $(LIB_OBJS) $(LIB_HRB) $(LIB_NAME)

# Implicit Rules #############################################################

.prg.hrb:
   $(HARBOUR_EXE) $(HARBOUR_FLAGS) $** -o$@

.c.obj:
   $(BORLANDC_COMP_EXE) $(BORLANDC_COMP_FLAGS) -D__HARBOUR__;HB_API_MACROS -o$@ $**
   $(BORLANDC_LIB_EXE) $(LIB_NAME) -+ $@,,

.hrb.obj:
   $(BORLANDC_COMP_EXE) $(BORLANDC_COMP_FLAGS) -o$@ $**
   $(BORLANDC_LIB_EXE) $(LIB_NAME) -+ $@,,

.cpp.obj:
   $(BORLANDC_COMP_EXE) $(BORLANDC_COMP_FLAGS_CPP) -o$@ $**


