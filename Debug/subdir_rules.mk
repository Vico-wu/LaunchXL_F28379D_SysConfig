################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-1125747103: ../F28379D.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1271/ccs/utils/sysconfig_1.20.0/sysconfig_cli.bat" --script "C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/F28379D.syscfg" -o "syscfg" -s "C:/ti/c2000/C2000Ware_5_02_00_00/.metadata/sdk.json" -b "boards/LAUNCHXL_F28379D" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-1125747103 ../F28379D.syscfg
syscfg/board.h: build-1125747103
syscfg/board.cmd.genlibs: build-1125747103
syscfg/board.opt: build-1125747103
syscfg/board.json: build-1125747103
syscfg/pinmux.csv: build-1125747103
syscfg/c2000ware_libraries.cmd.genlibs: build-1125747103
syscfg/c2000ware_libraries.opt: build-1125747103
syscfg/c2000ware_libraries.c: build-1125747103
syscfg/c2000ware_libraries.h: build-1125747103
syscfg/clocktree.h: build-1125747103
syscfg: build-1125747103

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xd/driverlib" --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/device" --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/device/driverlib" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=DEBUG --define=_FLASH --define=_LAUNCHXL_F28379D --define=CPU1 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/Debug/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xd/driverlib" --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/device" --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/device/driverlib" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=DEBUG --define=_FLASH --define=_LAUNCHXL_F28379D --define=CPU1 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="C:/Users/WQU3WX/workspace_v12/F28379D_SysConfig_Demo/Debug/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


