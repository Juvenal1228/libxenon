################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libxenon/drivers/lwip/core/snmp/asn1_dec.c \
../libxenon/drivers/lwip/core/snmp/asn1_enc.c \
../libxenon/drivers/lwip/core/snmp/mib2.c \
../libxenon/drivers/lwip/core/snmp/mib_structs.c \
../libxenon/drivers/lwip/core/snmp/msg_in.c \
../libxenon/drivers/lwip/core/snmp/msg_out.c 

OBJS += \
./libxenon/drivers/lwip/core/snmp/asn1_dec.o \
./libxenon/drivers/lwip/core/snmp/asn1_enc.o \
./libxenon/drivers/lwip/core/snmp/mib2.o \
./libxenon/drivers/lwip/core/snmp/mib_structs.o \
./libxenon/drivers/lwip/core/snmp/msg_in.o \
./libxenon/drivers/lwip/core/snmp/msg_out.o 

C_DEPS += \
./libxenon/drivers/lwip/core/snmp/asn1_dec.d \
./libxenon/drivers/lwip/core/snmp/asn1_enc.d \
./libxenon/drivers/lwip/core/snmp/mib2.d \
./libxenon/drivers/lwip/core/snmp/mib_structs.d \
./libxenon/drivers/lwip/core/snmp/msg_in.d \
./libxenon/drivers/lwip/core/snmp/msg_out.d 


# Each subdirectory must supply rules for building sources it contributes
libxenon/drivers/lwip/core/snmp/%.o: ../libxenon/drivers/lwip/core/snmp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	xenon-gcc -I.././libxenon/include -I.././libxenon/drivers -I.././libxenon/drivers/nocfe -I.././libxenon/drivers/lwip/include -I.././libxenon/drivers/lwip/include/ipv4 -I.././libxenon/drivers/lwip/xenon/include -O0 -Wall -c -DBYTE_ORDER=BIG_ENDIAN -D_CFE_=1 -DENDIAN_BIG=1 -fdata-sections -ffunction-sections -fno-builtin-printf -fno-pic -g -m32 -maltivec -mcpu=cell -mpowerpc64 -mtune=cell -Wno-attributes -Wno-format -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


