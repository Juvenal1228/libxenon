################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/lwip/netif/ppp/auth.c \
../libxenon/drivers/lwip/netif/ppp/chap.c \
../libxenon/drivers/lwip/netif/ppp/chpms.c \
../libxenon/drivers/lwip/netif/ppp/fsm.c \
../libxenon/drivers/lwip/netif/ppp/ipcp.c \
../libxenon/drivers/lwip/netif/ppp/lcp.c \
../libxenon/drivers/lwip/netif/ppp/magic.c \
../libxenon/drivers/lwip/netif/ppp/md5.c \
../libxenon/drivers/lwip/netif/ppp/pap.c \
../libxenon/drivers/lwip/netif/ppp/ppp.c \
../libxenon/drivers/lwip/netif/ppp/ppp_oe.c \
../libxenon/drivers/lwip/netif/ppp/randm.c \
../libxenon/drivers/lwip/netif/ppp/vj.c 

OBJS += \
./libxenon/drivers/lwip/netif/ppp/auth.o \
./libxenon/drivers/lwip/netif/ppp/chap.o \
./libxenon/drivers/lwip/netif/ppp/chpms.o \
./libxenon/drivers/lwip/netif/ppp/fsm.o \
./libxenon/drivers/lwip/netif/ppp/ipcp.o \
./libxenon/drivers/lwip/netif/ppp/lcp.o \
./libxenon/drivers/lwip/netif/ppp/magic.o \
./libxenon/drivers/lwip/netif/ppp/md5.o \
./libxenon/drivers/lwip/netif/ppp/pap.o \
./libxenon/drivers/lwip/netif/ppp/ppp.o \
./libxenon/drivers/lwip/netif/ppp/ppp_oe.o \
./libxenon/drivers/lwip/netif/ppp/randm.o \
./libxenon/drivers/lwip/netif/ppp/vj.o 

C_DEPS += \
./libxenon/drivers/lwip/netif/ppp/auth.d \
./libxenon/drivers/lwip/netif/ppp/chap.d \
./libxenon/drivers/lwip/netif/ppp/chpms.d \
./libxenon/drivers/lwip/netif/ppp/fsm.d \
./libxenon/drivers/lwip/netif/ppp/ipcp.d \
./libxenon/drivers/lwip/netif/ppp/lcp.d \
./libxenon/drivers/lwip/netif/ppp/magic.d \
./libxenon/drivers/lwip/netif/ppp/md5.d \
./libxenon/drivers/lwip/netif/ppp/pap.d \
./libxenon/drivers/lwip/netif/ppp/ppp.d \
./libxenon/drivers/lwip/netif/ppp/ppp_oe.d \
./libxenon/drivers/lwip/netif/ppp/randm.d \
./libxenon/drivers/lwip/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/lwip/netif/ppp/%.o: ../libxenon/drivers/lwip/netif/ppp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


