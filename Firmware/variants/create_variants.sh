#!/bin/bash

################################################################################
# Description:
# Creates special variants
################################################################################

# Constants
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENTDIR="$( pwd )"
TODAY=$(date +'%Y%m%d')

##### MK3S Variants
BASE="1_75mm_MK3S-EINSy10a-E3Dv6full.h"
VARIANT="Bear_Cal_FW_MK3S-EINSy10a.h"
cp ${BASE} ${VARIANT}
sed -i -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3S"*/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3S BEAR"/' ${VARIANT}

## BearMera
VARIANT="Bear_Cal_FW_MK3S_Hemera-EINSy10a.h"
cp ${BASE} ${VARIANT}
sed -i -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3S"*/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3S BEARMERA"/' ${VARIANT}
sed -i -e 's/\/\/ Printer revision*/\/\/ Printer revision\n#define BEAR_HEMERA/' ${VARIANT}
sed -i -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,280}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,409}/' ${VARIANT}
sed -i -e 's/#define MANUAL_X_HOME_POS 0*/#define MANUAL_X_HOME_POS -11/' ${VARIANT}
sed -i -e 's/#define TMC2130_USTEPS_E    32*/#define TMC2130_USTEPS_E    16/' ${VARIANT}
sed -i -e 's/#define X_PROBE_OFFSET_FROM_EXTRUDER 23*/#define X_PROBE_OFFSET_FROM_EXTRUDER 35.75/' ${VARIANT}
sed -i -e 's/#define Y_PROBE_OFFSET_FROM_EXTRUDER 5*/#define Y_PROBE_OFFSET_FROM_EXTRUDER 18.7/' ${VARIANT}

##### MK2.5S Variants
#### RAMBo13a
## Bear
BASE="1_75mm_MK25S-RAMBo13a-E3Dv6full.h"
VARIANT="Bear_Cal_FW_MK25S-RAMBo13a.h"
cp ${BASE} ${VARIANT}
sed -i -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5S"*/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5S BEAR"/' ${VARIANT}
sed -i -e 's/\/\/ Printer revision*/\/\/ Printer revision\n#define BEAR_HEMERA/' ${VARIANT}

## BearMera
BASE="1_75mm_MK25S-RAMBo13a-E3Dv6full.h"
VARIANT="Bear_Cal_FW_MK25S_Hemera-RAMBo13a.h"
cp ${BASE} ${VARIANT}
sed -i -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5S"*/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5S BEARMERA"/' ${VARIANT}
sed -i -e 's/\/\/ Printer revision*/\/\/ Printer revision\n#define BEAR_HEMERA/' ${VARIANT}
sed -i -e 's/#define MANUAL_X_HOME_POS 0*/#define MANUAL_X_HOME_POS -11/' ${VARIANT}
sed -i -e 's/#define X_PROBE_OFFSET_FROM_EXTRUDER 23*/#define X_PROBE_OFFSET_FROM_EXTRUDER 35.75/' ${VARIANT}
sed -i -e 's/#define Y_PROBE_OFFSET_FROM_EXTRUDER 5*/#define Y_PROBE_OFFSET_FROM_EXTRUDER 18.7/' ${VARIANT}

#### RAMBo10a
## BEAR 
BASE="Bear_Cal_FW_MK25S-RAMBo13a.h"
VARIANT="Bear_Cal_FW_MK25S-RAMBo10a.h"
cp ${BASE} ${VARIANT}
sed -i -e 's/#define MOTHERBOARD BOARD_RAMBO_MINI_1_3*/#define MOTHERBOARD BOARD_RAMBO_MINI_1_0/' ${VARIANT}

## BEARMERA
BASE="Bear_Cal_FW_MK25S_Hemera-RAMBo13a.h"
VARIANT="Bear_Cal_FW_MK25S_Hemera-RAMBo10a.h"
cp ${BASE} ${VARIANT}
sed -i -e 's/#define MOTHERBOARD BOARD_RAMBO_MINI_1_3*/#define MOTHERBOARD BOARD_RAMBO_MINI_1_0/' ${VARIANT}