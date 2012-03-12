################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/lwip/xenon/src/lib.c \
../libxenon/drivers/lwip/xenon/src/perf.c \
../libxenon/drivers/lwip/xenon/src/sys_arch.c 

OBJS += \
./libxenon/drivers/lwip/xenon/src/lib.o \
./libxenon/drivers/lwip/xenon/src/perf.o \
./libxenon/drivers/lwip/xenon/src/sys_arch.o 

C_DEPS += \
./libxenon/drivers/lwip/xenon/src/lib.d \
./libxenon/drivers/lwip/xenon/src/perf.d \
./libxenon/drivers/lwip/xenon/src/sys_arch.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/lwip/xenon/src/%.o: ../libxenon/drivers/lwip/xenon/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


