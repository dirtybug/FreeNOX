################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../include/idt.c \
../include/isr.c \
../include/kb.c \
../include/screen.c \
../include/string.c \
../include/system.c \
../include/util.c 

OBJS += \
./include/idt.o \
./include/isr.o \
./include/kb.o \
./include/screen.o \
./include/string.o \
./include/system.o \
./include/util.o 

C_DEPS += \
./include/idt.d \
./include/isr.d \
./include/kb.d \
./include/screen.d \
./include/string.d \
./include/system.d \
./include/util.d 


# Each subdirectory must supply rules for building sources it contributes
include/%.o: ../include/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


