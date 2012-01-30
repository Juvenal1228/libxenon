################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../libxenon/ports/xenon/crt0.S \
../libxenon/ports/xenon/crt1.S \
../libxenon/ports/xenon/crti.S \
../libxenon/ports/xenon/crtn.S 

OBJS += \
./libxenon/ports/xenon/crt0.o \
./libxenon/ports/xenon/crt1.o \
./libxenon/ports/xenon/crti.o \
./libxenon/ports/xenon/crtn.o 


# Each subdirectory must supply rules for building sources it contributes
libxenon/ports/xenon/%.o: ../libxenon/ports/xenon/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	xenon-gcc -m32 -c -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


