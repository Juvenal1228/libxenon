################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/xenon_soc/xenon_power.c \
../libxenon/drivers/xenon_soc/xenon_secotp.c 

S_UPPER_SRCS += \
../libxenon/drivers/xenon_soc/cpusleep.S 

OBJS += \
./libxenon/drivers/xenon_soc/cpusleep.o \
./libxenon/drivers/xenon_soc/xenon_power.o \
./libxenon/drivers/xenon_soc/xenon_secotp.o 

C_DEPS += \
./libxenon/drivers/xenon_soc/xenon_power.d \
./libxenon/drivers/xenon_soc/xenon_secotp.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/xenon_soc/%.o: ../libxenon/drivers/xenon_soc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	xenon-gcc -m32 -c -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

libxenon/drivers/xenon_soc/%.o: ../libxenon/drivers/xenon_soc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


