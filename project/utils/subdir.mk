################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/utils/mem_utils.c

OBJS += \
./utils/mem_utils.o

C_DEPS += \
./utils/mem_utils.d

# Each subdirectory must supply rules for building sources it contributes
utils/%.o: ../code/utils/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	powerpc-eabivle-gcc "@utils/utils.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



