################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../header/sample.c 

OBJS += \
./header/sample.o 

C_DEPS += \
./header/sample.d 


# Each subdirectory must supply rules for building sources it contributes
header/%.o: ../header/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -I"D:\cygwin64\usr\include" -I"D:\cygwin64\lib\gcc\x86_64-pc-cygwin\5.4.0\include" -I"F:\workspace\502\CS502\header" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


