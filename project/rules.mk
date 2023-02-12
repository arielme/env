
OBJS += \
$(C_SRCS:%.c=./$(SUBDIR)/%.o) \
$(S_SRCS:%.S=./$(SUBDIR)/%.o) 

$(SUBDIR)/%.o: ../code/$(SUBDIR)/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	powerpc-eabivle-gcc "@$(dir $(@))compile.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(SUBDIR)/%.o: ../code/$(SUBDIR)/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS Assembler'
	powerpc-eabivle-gcc "@$(dir $(@))asm.args" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

# empty lists for next folder
C_SRCS :=
S_SRCS :=