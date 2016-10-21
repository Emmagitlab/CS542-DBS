################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Dispatcher.c \
../src/Process.c \
../src/Queue.c \
../src/WasteTime.c \
../src/base.c \
../src/statePrinter.c \
../src/test.c \
../src/z502.c 

OBJS += \
./src/Dispatcher.o \
./src/Process.o \
./src/Queue.o \
./src/WasteTime.o \
./src/base.o \
./src/statePrinter.o \
./src/test.o \
./src/z502.o 

C_DEPS += \
./src/Dispatcher.d \
./src/Process.d \
./src/Queue.d \
./src/WasteTime.d \
./src/base.d \
./src/statePrinter.d \
./src/test.d \
./src/z502.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -I"D:\cygwin64\usr\include" -I"D:\cygwin64\lib\gcc\x86_64-pc-cygwin\5.4.0\include" -I"F:\workspace\502\CS502\header" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


