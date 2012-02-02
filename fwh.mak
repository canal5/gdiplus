##############################################################################
# Template make file for FWH and Borland Make tool                           #
# Copyright FiveTech 2002                                                    #
# Written by Ignacio Ortiz de Zuñiga                                         #
##############################################################################


# Make directives ############################################################

.autodepend
.swap
.suffixes: .prg .hrb .c .cpp

# Flags for modules to include: YES | NO (must be UPPERCASE)##################

RES_FILE      = NO
LNK_DBFNTX    = YES
LNK_DBFCDX    = NO
LNK_DEBUG     = NO
LNK_ADVANTAGE = NO
LNK_ODBC      = NO
MAP_FILE      = NO

# Application directories & filenames ########################################

APP_NAME         = gdiplus  # (Your EXE name without extension)
APP_PRG_DIR      = source\prg
APP_OBJ_DIR      = obj  # (create the app\obj directory first)
APP_INCLUDE_DIR  = include
APP_EXE_DIR      = .
APP_RES_DIR      = res

APP_EXE  = $(APP_EXE_DIR)\$(APP_NAME).exe
APP_RC   = $(APP_RES_DIR)\gdiplus.rc
APP_RES  = $(APP_RES_DIR)\gdiplus.res
APP_MAP  = $(APP_RES_DIR)\$(APP_NAME).map

# Paths for dependent files ##################################################

.path.prg = $(APP_PRG_DIR)
.path.hrb = $(APP_OBJ_DIR)
.path.obj = $(APP_OBJ_DIR)
.path.c   = $(APP_PRG_DIR)
.path.cpp = $(APP_PRG_DIR)

# Application PRG files (your PRG files go here) #############################

#     ttreevie.prg  \    ttvitem.prg   \     timaglst.prg  \

APP_PRG_LIST =                 \
    gdiplus.prg                \
    color.prg                  \
    CustomLineCap.prg          \
    font.prg                   \
    fontfamily.prg             \
    graphics.prg               \
    GraphicsPath.prg           \
    HueSaturationLightness.prg \
    image.prg                  \
    LinearGradientBrush.prg    \
    matrix.prg                 \
    metafile.prg               \
    metafileheader.prg         \
    pathgradientbrush.prg      \
    pen.prg                    \
    solidbrush.prg             \
    stringformat.prg           \
    TextureBrush.prg

APP_CPPPP_LIST =

APP_C_LIST =


# Contruction of the rest dependency lists ##################################


APP_PRGS = $(APP_PRG_LIST)
APP_HRBS = $(APP_PRG_LIST:.prg=.hrb)
APP_OBJS = $(APP_PRG_LIST:.prg=.obj) $(APP_CPPPP_LIST:.cpp=.obj) $(APP_C_LIST:.c=.obj)


# Fivewin directories ########################################################

FIVEWIN_INCLUDE_DIR  = $(FWDIR)\include
FIVEWIN_LIB_DIR      = $(FWDIR)\lib
#FIVEWIN_INCLUDE_DIR = $(FWDIR)\include
#FIVEWIN_LIB_DIR     = $(FWDIR)\lib

# Fivewin libraries ##########################################################

FIVE_LIB  = $(FIVEWIN_LIB_DIR)\fiveH.lib
FIVEC_LIB = $(FIVEWIN_LIB_DIR)\fiveHC.lib

# Harbour directories & flags ################################################

HARBOUR_INCLUDE_DIR = $(HBDIR)\include;
HARBOUR_EXE_DIR     = $(HBDIR)\bin
HARBOUR_LIB_DIR     = $(HBDIR)\lib
#HARBOUR_INCLUDE_DIR = $(XHBDIR)\include;
#HARBOUR_EXE_DIR     = $(XHBDIR)\bin
#HARBOUR_LIB_DIR     = $(XHBDIR)\lib

HARBOUR_FLAGS       = -i$(APP_INCLUDE_DIR);$(FIVEWIN_INCLUDE_DIR);$(HARBOUR_INCLUDE_DIR) -n -m -w0 -es2 -gc0
HARBOUR_EXE         = $(HARBOUR_EXE_DIR)\harbour.exe

# Harbour libraries ##########################################################

HBW32_LIB  = $(HARBOUR_LIB_DIR)\hbw32.lib
DBFSIX_LIB = $(HARBOUR_LIB_DIR)\hbsix.lib
RTL_LIB    = $(HARBOUR_LIB_DIR)\hbrtl.lib
VM_LIB     = $(HARBOUR_LIB_DIR)\hbvm.lib
GTWIN_LIB  = $(HARBOUR_LIB_DIR)\gtgui.lib
LANG_LIB   = $(HARBOUR_LIB_DIR)\hblang.lib
MACRO_LIB  = $(HARBOUR_LIB_DIR)\hbmacro.lib
RDD_LIB    = $(HARBOUR_LIB_DIR)\hbrdd.lib
DBFNTX_LIB = $(HARBOUR_LIB_DIR)\rddntx.lib
DBFDBT_LIB = $(HARBOUR_LIB_DIR)\rdddbt.lib
DBFFPT_LIB = $(HARBOUR_LIB_DIR)\rddfpt.lib
DBFCDX_LIB = $(HARBOUR_LIB_DIR)\rddcdx.lib
DEBUG_LIB  = $(HARBOUR_LIB_DIR)\hbdebug.lib
COMMON_LIB = $(HARBOUR_LIB_DIR)\hbcommon.lib
PP_LIB     = $(HARBOUR_LIB_DIR)\hbpp.lib
HBWIN_LIB  = $(HARBOUR_LIB_DIR)\hbwin.lib
HBCT_LIB     = $(HARBOUR_LIB_DIR)\hbct.lib
CODEMAX_LIB = codemax.lib
HBCPLR_LIB = $(HARBOUR_LIB_DIR)\hbcplr.lib




#FCLASS_LIB = $(HARBOUR_LIB_DIR)\fclass.lib


# Advantage libraries ########################################################

RDDADS_LIB = $(HARBOUR_LIB_DIR)\rddads.lib
ACE32_LIB  = $(FIVEWIN_LIB_DIR)\ace32.lib

#ACE32_LIB =  $(HARBOUR_LIB_DIR)\ace32.lib

# Borlanc directories & flags ################################################

BORLANDC_INCLUDE_DIR = \bcc582\include
BORLANDC_EXE_DIR     = \bcc582\bin
BORLANDC_LIB_DIR     = \bcc582\lib
#BORLANDC_INCLUDE_DIR = \prg\bcc55\include
#BORLANDC_EXE_DIR     = \prg\bcc55\bin
#BORLANDC_LIB_DIR     = \prg\bcc55\lib

BORLANDC_COMP_FLAGS  = -P -c -O2 -I$(HARBOUR_INCLUDE_DIR);$(BORLANDC_INCLUDE_DIR)
BORLANDC_COMP_FLAGS_CPP  = -P -c -O2 -I$(HARBOUR_INCLUDE_DIR);$(BORLANDC_INCLUDE_DIR)
BORLANDC_COMP_EXE    = $(BORLANDC_EXE_DIR)\bcc32.exe
BORLANDC_LINK_FLAGS  = -Gn -aa -Tpe -s -I$(APP_OBJ_DIR) -L$(BORLANDC_LIB_DIR)
BORLANDC_LINK_EXE    = $(BORLANDC_EXE_DIR)\ilink32.exe
BORLANDC_RES_EXE     = $(BORLANDC_EXE_DIR)\brc32.exe

!if $(MAP_FILE) != YES
   BORLANDC_LINK_FLAGS = $(BORLANDC_LINK_FLAGS) -x
!endif

# Borland libraries & files ##################################################

STARTUP_OBJ  = $(BORLANDC_LIB_DIR)\c0w32.obj
CW32_LIB     = $(BORLANDC_LIB_DIR)\cw32.lib
IMPORT32_LIB = $(BORLANDC_LIB_DIR)\import32.lib
ODBC32_LIB   = $(BORLANDC_LIB_DIR)\psdk\odbc32.lib
MSIMG32_LIB  = $(BORLANDC_LIB_DIR)\psdk\Msimg32.lib
RASPI32_LIB  = $(BORLANDC_LIB_DIR)\psdk\rasapi32.lib
NDDEAPI_LIB  = $(BORLANDC_LIB_DIR)\psdk\nddeapi.lib
IPHLPAPI_LIB = $(BORLANDC_LIB_DIR)\psdk\iphlpapi.lib
GDIPLUS_LIB  = $(BORLANDC_LIB_DIR)\psdk\gdiplus.lib
PSAPI_LIB  = $(BORLANDC_LIB_DIR)\psdk\psapi.lib


# Dependencies ###############################################################

all: $(APP_OBJS) $(APP_HRBS) $(APP_EXE)

!if $(RES_FILE) == YES
all: $(APP_RES)
!endif

# Implicit Rules #############################################################

.prg.hrb:
   $(HARBOUR_EXE) $(HARBOUR_FLAGS) $** -o$@

.hrb.obj:
   $(BORLANDC_COMP_EXE) $(BORLANDC_COMP_FLAGS) -o$@ $**

.c.obj:
   $(BORLANDC_COMP_EXE) $(BORLANDC_COMP_FLAGS_C) -o$@ $**

.cpp.obj:
   $(BORLANDC_COMP_EXE) $(BORLANDC_COMP_FLAGS_CPP) -o$@ $**



# Explicit Rules #############################################################

!if $(RES_FILE) == YES
$(APP_RES) : $(APP_RC)
   $(BORLANDC_RES_EXE) -r $**

$(APP_EXE) :: $(APP_RES)
   @if exist $(APP_EXE) del $(APP_EXE) > nul
!endif

$(APP_EXE) :: $(APP_OBJS)
   @echo $(STARTUP_OBJ) + > make.tmp
   @echo $(**), + >> make.tmp
   @echo $(APP_EXE), + >> make.tmp
   @echo $(APP_MAP), + >> make.tmp
   @echo $(FIVE_LIB) + >> make.tmp
   @echo $(FIVEC_LIB) + >> make.tmp
   @echo $(RTL_LIB) + >> make.tmp
   @echo $(VM_LIB) + >> make.tmp
   @echo $(GTWIN_LIB) + >> make.tmp
   @echo $(LANG_LIB) + >> make.tmp
   @echo $(MACRO_LIB) + >> make.tmp
   @echo $(RDD_LIB) + >> make.tmp
   @echo $(HBWIN_LIB) + >> make.tmp
   @echo $(HBCT_LIB) + >> make.tmp
   @echo $(HBCPLR_LIB) + >> make.tmp
!if $(LNK_DBFNTX) == YES
   @echo $(DBFNTX_LIB) + >> make.tmp
#  @echo $(DBFDBT_LIB) + >> make.tmp
!endif
   @echo $(DBFFPT_LIB) + >> make.tmp
!if $(LNK_DBFCDX) == YES
   @echo $(DBFCDX_LIB) + >> make.tmp
!endif
   @echo $(DBFSIX_LIB) + >> make.tmp
!if $(LNK_DEBUG) == YES
   @echo $(DEBUG_LIB) + >> make.tmp
!endif
   @echo $(COMMON_LIB) + >> make.tmp
   @echo $(PP_LIB) + >> make.tmp
!if $(LNK_ADVANTAGE) == YES
   @echo $(RDDADS_LIB) + >> make.tmp
   @echo $(ACE32_LIB) + >> make.tmp
!endif
!if $(LNK_ODBC) == YES
   @echo $(ODBC32_LIB) + >> make.tmp
!endif
   @echo $(CW32_LIB) + >> make.tmp
   @echo $(MSIMG32_LIB) + >> make.tmp
   @echo $(GDIPLUS_LIB) + >> make.tmp
   @echo $(PSAPI_LIB) + >> make.tmp
   @echo $(IMPORT32_LIB), + >> make.tmp
!if $(RES_FILE) == YES
   @echo ,$(APP_RES) >> make.tmp
!endif
   $(BORLANDC_LINK_EXE) $(BORLANDC_LINK_FLAGS) @make.tmp
   @del $(APP_EXE_DIR)\$(APP_NAME).tds
   @del make.tmp
