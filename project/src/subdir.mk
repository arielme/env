################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../code/src/MPC57xx__Interrupt_Init.c \
../code/src/Vector.c \
../code/src/intc_SW_mode_isr_vectors_MPC5748G.c \
../code/src/main.c 

S_UPPER_SRCS += \
../code/src/intc_sw_handlers.S 

OBJS += \
./src/MPC57xx__Interrupt_Init.o \
./src/Vector.o \
./src/intc_SW_mode_isr_vectors_MPC5748G.o \
./src/intc_sw_handlers.o \
./src/main.o 

C_DEPS += \
./src/MPC57xx__Interrupt_Init.d \
./src/Vector.d \
./src/intc_SW_mode_isr_vectors_MPC5748G.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../code/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	powerpc-eabivle-gcc "@src/MPC57xx__Interrupt_Init.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../code/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS Assembler'
	powerpc-eabivle-gcc "@src/intc_sw_handlers.args" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


