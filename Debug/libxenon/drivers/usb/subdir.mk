################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/usb/ohci.c \
../libxenon/drivers/usb/usbctrl.c \
../libxenon/drivers/usb/usbd.c \
../libxenon/drivers/usb/usbdebug.c \
../libxenon/drivers/usb/usbdevs.c \
../libxenon/drivers/usb/usbhid.c \
../libxenon/drivers/usb/usbhub.c \
../libxenon/drivers/usb/usbmain.c \
../libxenon/drivers/usb/usbmass.c 

OBJS += \
./libxenon/drivers/usb/ohci.o \
./libxenon/drivers/usb/usbctrl.o \
./libxenon/drivers/usb/usbd.o \
./libxenon/drivers/usb/usbdebug.o \
./libxenon/drivers/usb/usbdevs.o \
./libxenon/drivers/usb/usbhid.o \
./libxenon/drivers/usb/usbhub.o \
./libxenon/drivers/usb/usbmain.o \
./libxenon/drivers/usb/usbmass.o 

C_DEPS += \
./libxenon/drivers/usb/ohci.d \
./libxenon/drivers/usb/usbctrl.d \
./libxenon/drivers/usb/usbd.d \
./libxenon/drivers/usb/usbdebug.d \
./libxenon/drivers/usb/usbdevs.d \
./libxenon/drivers/usb/usbhid.d \
./libxenon/drivers/usb/usbhub.d \
./libxenon/drivers/usb/usbmain.d \
./libxenon/drivers/usb/usbmass.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/usb/%.o: ../libxenon/drivers/usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


