################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include usr/xenon/lib/subdir.mk
-include libxenon/startup/xenon/subdir.mk
-include libxenon/ports/xenon/subdir.mk
-include libxenon/drivers/xenos/subdir.mk
-include libxenon/drivers/xenon_uart/subdir.mk
-include libxenon/drivers/xenon_sound/subdir.mk
-include libxenon/drivers/xenon_soc/subdir.mk
-include libxenon/drivers/xenon_smc/subdir.mk
-include libxenon/drivers/xenon_nand/subdir.mk
-include libxenon/drivers/utils/subdir.mk
-include libxenon/drivers/usb/tinyehci/subdir.mk
-include libxenon/drivers/usb/subdir.mk
-include libxenon/drivers/time/subdir.mk
-include libxenon/drivers/threads/subdir.mk
-include libxenon/drivers/ppc/subdir.mk
-include libxenon/drivers/pci/subdir.mk
-include libxenon/drivers/nocfe/subdir.mk
-include libxenon/drivers/newlib/subdir.mk
-include libxenon/drivers/network/subdir.mk
-include libxenon/drivers/lwip/xenon/src/subdir.mk
-include libxenon/drivers/lwip/xenon/netif/subdir.mk
-include libxenon/drivers/lwip/netif/ppp/subdir.mk
-include libxenon/drivers/lwip/netif/subdir.mk
-include libxenon/drivers/lwip/core/snmp/subdir.mk
-include libxenon/drivers/lwip/core/ipv4/subdir.mk
-include libxenon/drivers/lwip/core/subdir.mk
-include libxenon/drivers/lwip/api/subdir.mk
-include libxenon/drivers/iso9660/subdir.mk
-include libxenon/drivers/input/subdir.mk
-include libxenon/drivers/fat/subdir.mk
-include libxenon/drivers/elf/subdir.mk
-include libxenon/drivers/diskio/subdir.mk
-include libxenon/drivers/console/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: libxenon.a

# Tool invocations
libxenon.a: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross GCC Archiver'
	xenon-ar rc  "libxenon.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C++_DEPS)$(OBJS)$(C_DEPS)$(CC_DEPS)$(ARCHIVES)$(CPP_DEPS)$(CXX_DEPS)$(C_UPPER_DEPS) libxenon.a
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
