
OBJS := 
USER_OBJS :=
LIBS :=


# All of the sources participating in the build are defined here
-include subdirs.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

init:
	@echo '$(OBJS)'
	echo '' > subdirs.mk
	find . -name \\*.mk ! -name subdirs.mk ! -name rules.mk -exec echo "-include" "{}" "rules.mk" >> subdirs.mk \;

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY := \
payload_Z4_0.objdump \
payload_Z4_0.siz \

all: payload_Z4_0.elf secondary-outputs

# Tool invocations
payload_Z4_0.elf: $(OBJS) ../code/Project_Settings/Linker_Files/57xx_flash.ld $(OSPT) $(USER_OBJS)
	@echo 'OBJS = $(OBJS)'
	@echo 'Building target: $@'
	@echo 'Invoking: Standard S32DS C Linker'
	powerpc-eabivle-gcc -o "../binaries/payload_Z4_0.elf" "@payload_Z4_0.args" $(OBJS)  $(USER_OBJS) $(LIBS) $(OSPT)
	@echo 'Finished building target: $@'
	@echo ' '

payload_Z4_0.objdump: payload_Z4_0.elf
	@echo 'Invoking: Standard S32DS objdump'
	objdump -D ../binaries/payload_Z4_0.elf > ../binaries/payload_Z4_0.objdump
	@echo 'Finished building: $@'
	@echo ' '

payload_Z4_0.siz: payload_Z4_0.elf
	@echo 'Invoking: Standard S32DS Print Size'
	powerpc-eabivle-size --format=berkeley ../binaries/payload_Z4_0.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-find . -name '*.o' -delete
	-find . -name '*.d' -delete
	-find . -name '*.elf' -delete
	-find ..\binaries -name '*.map' -delete
	-find ..\binaries -name '*.elf' -delete
	-find ..\binaries -name '*.objdump' -delete
	-@echo ' '

secondary-outputs: $(SECONDARY)

.PHONY: all clean dependents


