################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/utils/debug.c \
../libxenon/drivers/utils/gmon.c \
../libxenon/drivers/utils/unicode_rb.c 

OBJS += \
./libxenon/drivers/utils/debug.o \
./libxenon/drivers/utils/gmon.o \
./libxenon/drivers/utils/unicode_rb.o 

C_DEPS += \
./libxenon/drivers/utils/debug.d \
./libxenon/drivers/utils/gmon.d \
./libxenon/drivers/utils/unicode_rb.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/utils/%.o: ../libxenon/drivers/utils/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -Os -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


