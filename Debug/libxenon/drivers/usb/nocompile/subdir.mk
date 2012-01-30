################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/usb/nocompile/dev_usb_asix.c \
../libxenon/drivers/usb/nocompile/dev_usb_catc.c \
../libxenon/drivers/usb/nocompile/dev_usb_klsi.c \
../libxenon/drivers/usb/nocompile/dev_usb_pegasus.c \
../libxenon/drivers/usb/nocompile/dev_usb_rtek.c \
../libxenon/drivers/usb/nocompile/usbeth.c \
../libxenon/drivers/usb/nocompile/usbhack.c \
../libxenon/drivers/usb/nocompile/usbserial.c 

OBJS += \
./libxenon/drivers/usb/nocompile/dev_usb_asix.o \
./libxenon/drivers/usb/nocompile/dev_usb_catc.o \
./libxenon/drivers/usb/nocompile/dev_usb_klsi.o \
./libxenon/drivers/usb/nocompile/dev_usb_pegasus.o \
./libxenon/drivers/usb/nocompile/dev_usb_rtek.o \
./libxenon/drivers/usb/nocompile/usbeth.o \
./libxenon/drivers/usb/nocompile/usbhack.o \
./libxenon/drivers/usb/nocompile/usbserial.o 

C_DEPS += \
./libxenon/drivers/usb/nocompile/dev_usb_asix.d \
./libxenon/drivers/usb/nocompile/dev_usb_catc.d \
./libxenon/drivers/usb/nocompile/dev_usb_klsi.d \
./libxenon/drivers/usb/nocompile/dev_usb_pegasus.d \
./libxenon/drivers/usb/nocompile/dev_usb_rtek.d \
./libxenon/drivers/usb/nocompile/usbeth.d \
./libxenon/drivers/usb/nocompile/usbhack.d \
./libxenon/drivers/usb/nocompile/usbserial.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/usb/nocompile/%.o: ../libxenon/drivers/usb/nocompile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -Os -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


