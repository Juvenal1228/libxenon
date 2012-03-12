################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/lwip/core/ipv4/autoip.c \
../libxenon/drivers/lwip/core/ipv4/icmp.c \
../libxenon/drivers/lwip/core/ipv4/igmp.c \
../libxenon/drivers/lwip/core/ipv4/inet.c \
../libxenon/drivers/lwip/core/ipv4/inet_chksum.c \
../libxenon/drivers/lwip/core/ipv4/ip.c \
../libxenon/drivers/lwip/core/ipv4/ip_addr.c \
../libxenon/drivers/lwip/core/ipv4/ip_frag.c 

OBJS += \
./libxenon/drivers/lwip/core/ipv4/autoip.o \
./libxenon/drivers/lwip/core/ipv4/icmp.o \
./libxenon/drivers/lwip/core/ipv4/igmp.o \
./libxenon/drivers/lwip/core/ipv4/inet.o \
./libxenon/drivers/lwip/core/ipv4/inet_chksum.o \
./libxenon/drivers/lwip/core/ipv4/ip.o \
./libxenon/drivers/lwip/core/ipv4/ip_addr.o \
./libxenon/drivers/lwip/core/ipv4/ip_frag.o 

C_DEPS += \
./libxenon/drivers/lwip/core/ipv4/autoip.d \
./libxenon/drivers/lwip/core/ipv4/icmp.d \
./libxenon/drivers/lwip/core/ipv4/igmp.d \
./libxenon/drivers/lwip/core/ipv4/inet.d \
./libxenon/drivers/lwip/core/ipv4/inet_chksum.d \
./libxenon/drivers/lwip/core/ipv4/ip.d \
./libxenon/drivers/lwip/core/ipv4/ip_addr.d \
./libxenon/drivers/lwip/core/ipv4/ip_frag.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/lwip/core/ipv4/%.o: ../libxenon/drivers/lwip/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


