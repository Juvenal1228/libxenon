################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/threads/c_debug.c \
../libxenon/drivers/threads/c_threads.c \
../libxenon/drivers/threads/gdb.c \
../libxenon/drivers/threads/mutex.c 

S_UPPER_SRCS += \
../libxenon/drivers/threads/debug.S \
../libxenon/drivers/threads/threads.S 

OBJS += \
./libxenon/drivers/threads/c_debug.o \
./libxenon/drivers/threads/c_threads.o \
./libxenon/drivers/threads/debug.o \
./libxenon/drivers/threads/gdb.o \
./libxenon/drivers/threads/mutex.o \
./libxenon/drivers/threads/threads.o 

C_DEPS += \
./libxenon/drivers/threads/c_debug.d \
./libxenon/drivers/threads/c_threads.d \
./libxenon/drivers/threads/gdb.d \
./libxenon/drivers/threads/mutex.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/threads/%.o: ../libxenon/drivers/threads/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -Os -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

libxenon/drivers/threads/%.o: ../libxenon/drivers/threads/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	xenon-gcc -m32 -c -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


