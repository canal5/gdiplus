#delcare user variables
APPNAME=test.exe
#
PRG_SOURCE_PATH=.\source\prg
C_SOURCE_PATH=
CPP_SOURCE_PATH=.\source\cpp
OBJ_PATH=.\obj
OBJ_EXT=obj
HBLIB=$(HBDIR)\lib\win\msvc
FWLIB=$(FWDIR)\lib
LD=link
CC=cl
LD_FLAGS=/NOLOGO /SUBSYSTEM:WINDOWS /FORCE:MULTIPLE /NODEFAULTLIB:libc /MACHINE:X86 /OUT:$(APPNAME)
CC_FLAGS=-nologo -c -TP -W3 -GA -I$(HBDIR)\include -I$(FWDIR)\include -I.\include -I$(VCDIR)\include -DGDIPVER=0x0110

#should use tabs to indent lines
#we dont need extention
SRC_FILES_PRG=pruebas testunit AdjustableArrowCap Bitmap BitmapData Blur BrightnessContrast Brush CachedBitmap CharacterRange \
Color ColorBalance ColorCurve ColorLUT ColorMatrixEffect CustomLineCap Effect EncoderParameter EncoderParameters \
Font FontCollection Fontfamily Gdiplus GdiplusBase Graphics GraphicsPath GraphicsPathIterator HatchBrush HueSaturationLightness \
Image ImageAttributes ImageCodecInfo ImageItemData InstalledFontCollection Levels LinearGradientBrush Matrix \
Metafile Metafileheader PathData Pathgradientbrush Pen Point PointF PrivateFontCollection PropertyItem Rect RectF \
RedEyeCorrection Region Sharpen Size SizeF Solidbrush Stringformat TextureBrush Tint 

SRC_FILES_C=
SRC_FILES_CPP=gc

#seting libs without extention and path
GUI_LIBS=FiveHC32 FiveH32

HRB_LIB=hbrtl hbvm gtgui gtwin hblang hbmacro hbrdd rddntx rddcdx rddfpt hbsix hbdebug\
				hbcommon hbpp hbwin hbcpage hbct xhb hbpcre png hbzlib hbmzip hbziparc minizip 

MSVC_LIB=kernel32 user32 gdi32 winspool comctl32 comdlg32 advapi32 shell32 ole32 oleaut32 gdiplus\
					uuid odbc32 odbccp32 iphlpapi mpr version wsock32 psapi msimg32 libcmt oldnames libcpmt oledlg ws2_32 winmm

#user lib
USER_LIBS=


#build internal libs
#the libraries of msvc dont need this process
LIBS = $(addprefix $(FWLIB)\,$(addsuffix .lib,$(GUI_LIBS)))\
			$(addprefix $(HBLIB)\,$(addsuffix .lib,$(HRB_LIB)))\
			$(addsuffix .lib,$(MSVC_LIB))\
			$(USER_LIBS)

OBJ_FILES = $(addprefix $(OBJ_PATH)\,$(notdir $(addsuffix .$(OBJ_EXT),$(SRC_FILES_PRG))))\
						$(addprefix $(OBJ_PATH)\,$(notdir $(addsuffix .$(OBJ_EXT),$(SRC_FILES_C))))\
						$(addprefix $(OBJ_PATH)\,$(notdir $(addsuffix .$(OBJ_EXT),$(SRC_FILES_CPP))))

#resource
RES_FILE=

LD_CMD=$(LD) $(OBJ_FILES) $(RES_FILE) $(LIBS) $(LD_FLAGS) > link.log
PRG_COMP_CMD=$(HBDIR)\bin\harbour $< /q0 /n /W /p /O$(OBJ_PATH)\ /i$(FWDIR)\include;$(HBDIR)\include;.\include;.\source\prg\include;$(DOLPHIN)\include -D__SUPERVISOR -DDEVEL -DGDIPVER=0x0110

define BUILD_APP
	@echo $(LD_CMD) >> make.log
	@$(LD_CMD)
endef

define HAR_CMD
	@echo $(PRG_COMP_CMD) $< >> make.log
	@$(PRG_COMP_CMD) >> make.log
endef

app : logfile $(APPNAME)

#is extremely necessary ident with tab inside targer-pattern
#should use tabs to indent lines
logfile:
	@echo. > make.log
	@echo # ----------------------------------------------------------------------- >> make.log
	@echo # Building $(APPNAME)                                                     >> make.log
	@echo # ----------------------------------------------------------------------- >> make.log
	$(info ----------------------------------------------------------------------- )
	$(info Building $(APPNAME)                                                     )
	$(info ----------------------------------------------------------------------- )

$(APPNAME): $(OBJ_FILES)
	$(info Linking $(APPNAME) )
	@$(BUILD_APP)

$(OBJ_PATH)%.c: $(PRG_SOURCE_PATH)%.prg
	$(info Compiling $< )
	@$(HAR_CMD)

$(OBJ_PATH)%.c: $(PRG_SOURCE_PATH)%.PRG
	$(info Compiling $< )
	@$(HAR_CMD)	

$(OBJ_PATH)%.$(OBJ_EXT): $(OBJ_PATH)%.c
	@echo $(CC) $(CC_FLAGS) -Fo$@ $< >> make.log
	@$(CC) $(CC_FLAGS) -Fo$@ $< >> make.log
	@echo ========================================= >> make.log

$(OBJ_PATH)%.$(OBJ_EXT): $(C_SOURCE_PATH)%.c
	@echo $(CC) $(CC_FLAGS) -Fo$@ src\c\$&.c  >> make.log
	@$(CC) $(CC_FLAGS) -Fo$@ src\c\$&.c  >> make.log

$(OBJ_PATH)%.$(OBJ_EXT): $(CPP_SOURCE_PATH)%.cpp
	@echo $(CC) $(CC_FLAGS) -Fo$@ $<  >> make.log
	@$(CC) $(CC_FLAGS) -Fo$@ $<  >> make.log