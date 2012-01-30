################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/lwip/core/def.c \
../libxenon/drivers/lwip/core/dhcp.c \
../libxenon/drivers/lwip/core/dns.c \
../libxenon/drivers/lwip/core/init.c \
../libxenon/drivers/lwip/core/mem.c \
../libxenon/drivers/lwip/core/memp.c \
../libxenon/drivers/lwip/core/netif.c \
../libxenon/drivers/lwip/core/pbuf.c \
../libxenon/drivers/lwip/core/raw.c \
../libxenon/drivers/lwip/core/stats.c \
../libxenon/drivers/lwip/core/sys.c \
../libxenon/drivers/lwip/core/tcp.c \
../libxenon/drivers/lwip/core/tcp_in.c \
../libxenon/drivers/lwip/core/tcp_out.c \
../libxenon/drivers/lwip/core/timers.c \
../libxenon/drivers/lwip/core/udp.c 

OBJS += \
./libxenon/drivers/lwip/core/def.o \
./libxenon/drivers/lwip/core/dhcp.o \
./libxenon/drivers/lwip/core/dns.o \
./libxenon/drivers/lwip/core/init.o \
./libxenon/drivers/lwip/core/mem.o \
./libxenon/drivers/lwip/core/memp.o \
./libxenon/drivers/lwip/core/netif.o \
./libxenon/drivers/lwip/core/pbuf.o \
./libxenon/drivers/lwip/core/raw.o \
./libxenon/drivers/lwip/core/stats.o \
./libxenon/drivers/lwip/core/sys.o \
./libxenon/drivers/lwip/core/tcp.o \
./libxenon/drivers/lwip/core/tcp_in.o \
./libxenon/drivers/lwip/core/tcp_out.o \
./libxenon/drivers/lwip/core/timers.o \
./libxenon/drivers/lwip/core/udp.o 

C_DEPS += \
./libxenon/drivers/lwip/core/def.d \
./libxenon/drivers/lwip/core/dhcp.d \
./libxenon/drivers/lwip/core/dns.d \
./libxenon/drivers/lwip/core/init.d \
./libxenon/drivers/lwip/core/mem.d \
./libxenon/drivers/lwip/core/memp.d \
./libxenon/drivers/lwip/core/netif.d \
./libxenon/drivers/lwip/core/pbuf.d \
./libxenon/drivers/lwip/core/raw.d \
./libxenon/drivers/lwip/core/stats.d \
./libxenon/drivers/lwip/core/sys.d \
./libxenon/drivers/lwip/core/tcp.d \
./libxenon/drivers/lwip/core/tcp_in.d \
./libxenon/drivers/lwip/core/tcp_out.d \
./libxenon/drivers/lwip/core/timers.d \
./libxenon/drivers/lwip/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/lwip/core/%.o: ../libxenon/drivers/lwip/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I"/home/amorton/Source/xenon/libxenon/libxenon/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/nocfe" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/include/ipv4" -I"/home/amorton/Source/xenon/libxenon/libxenon/drivers/lwip/xenon/include" -Os -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


