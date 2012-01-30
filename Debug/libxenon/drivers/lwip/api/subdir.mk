################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/lwip/api/api_lib.c \
../libxenon/drivers/lwip/api/api_msg.c \
../libxenon/drivers/lwip/api/err.c \
../libxenon/drivers/lwip/api/netbuf.c \
../libxenon/drivers/lwip/api/netdb.c \
../libxenon/drivers/lwip/api/netifapi.c \
../libxenon/drivers/lwip/api/sockets.c \
../libxenon/drivers/lwip/api/tcpip.c 

OBJS += \
./libxenon/drivers/lwip/api/api_lib.o \
./libxenon/drivers/lwip/api/api_msg.o \
./libxenon/drivers/lwip/api/err.o \
./libxenon/drivers/lwip/api/netbuf.o \
./libxenon/drivers/lwip/api/netdb.o \
./libxenon/drivers/lwip/api/netifapi.o \
./libxenon/drivers/lwip/api/sockets.o \
./libxenon/drivers/lwip/api/tcpip.o 

C_DEPS += \
./libxenon/drivers/lwip/api/api_lib.d \
./libxenon/drivers/lwip/api/api_msg.d \
./libxenon/drivers/lwip/api/err.d \
./libxenon/drivers/lwip/api/netbuf.d \
./libxenon/drivers/lwip/api/netdb.d \
./libxenon/drivers/lwip/api/netifapi.d \
./libxenon/drivers/lwip/api/sockets.d \
./libxenon/drivers/lwip/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/lwip/api/%.o: ../libxenon/drivers/lwip/api/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -Os -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


