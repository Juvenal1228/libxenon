################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/usb/tinyehci/tinyehci.c \
../libxenon/drivers/usb/tinyehci/usb_os.c 

OBJS += \
./libxenon/drivers/usb/tinyehci/tinyehci.o \
./libxenon/drivers/usb/tinyehci/usb_os.o 

C_DEPS += \
./libxenon/drivers/usb/tinyehci/tinyehci.d \
./libxenon/drivers/usb/tinyehci/usb_os.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/usb/tinyehci/%.o: ../libxenon/drivers/usb/tinyehci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -Os -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


