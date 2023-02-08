################################################################################
# Automatically-generated file. Do not edit!
################################################################################



# All of the sources participating in the build are defined here
-include sources.mk
-include utils/subdir.mk
#-include src/subdir.mk
#-include Project_Settings/Startup_Code/subdir.mk
#-include Project_Settings/Linker_Files/subdir.mk
#-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY += \
payload_Z4_0.objdump \


# All Target
all: payload_Z4_0.elf secondary-outputs

# Tool invocations
payload_Z4_0.elf: $(OBJS) ../code/Project_Settings/Linker_Files/57xx_flash.ld $(OSPT) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Standard S32DS C Linker'
	powerpc-eabivle-gcc -o "../binaries/payload_Z4_0.elf" "@payload_Z4_0.args" $(OBJS)  $(USER_OBJS) $(LIBS) $(OSPT)
	@echo 'Finished building target: $@'
	@echo ' '

payload_Z4_0.objdump: payload_Z4_0.elf
	@echo 'Invoking: Standard S32DS objdump'
	objdump -d ../binaries/payload_Z4_0.elf > ../binaries/payload_Z4_0.objdump
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-find . -name '*.o' -delete
	-find . -name '*.d' -delete
	-find . -name '*.elf' -delete
	-find . -name '*.map' -delete
	-find ..\binaries -name '*.elf' -delete
	-find ..\binaries -name '*.objdump' -delete
	-@echo ' '

secondary-outputs: $(SECONDARY)

.PHONY: all clean dependents


