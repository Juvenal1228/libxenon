################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/fat/dir_rb.c \
../libxenon/drivers/fat/fat.c \
../libxenon/drivers/fat/fat_rb.c \
../libxenon/drivers/fat/file_rb.c 

OBJS += \
./libxenon/drivers/fat/dir_rb.o \
./libxenon/drivers/fat/fat.o \
./libxenon/drivers/fat/fat_rb.o \
./libxenon/drivers/fat/file_rb.o 

C_DEPS += \
./libxenon/drivers/fat/dir_rb.d \
./libxenon/drivers/fat/fat.d \
./libxenon/drivers/fat/fat_rb.d \
./libxenon/drivers/fat/file_rb.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/fat/%.o: ../libxenon/drivers/fat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


