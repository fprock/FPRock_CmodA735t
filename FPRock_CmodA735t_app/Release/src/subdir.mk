################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/testperiph.c \
../src/xgpio_tapp_example.c \
../src/xiic_selftest_example.c \
../src/xintc_tapp_example.c \
../src/xspi_selftest_example.c \
../src/xuartlite_intr_tapp_example.c \
../src/xuartlite_selftest_example.c 

OBJS += \
./src/testperiph.o \
./src/xgpio_tapp_example.o \
./src/xiic_selftest_example.o \
./src/xintc_tapp_example.o \
./src/xspi_selftest_example.o \
./src/xuartlite_intr_tapp_example.o \
./src/xuartlite_selftest_example.o 

C_DEPS += \
./src/testperiph.d \
./src/xgpio_tapp_example.d \
./src/xiic_selftest_example.d \
./src/xintc_tapp_example.d \
./src/xspi_selftest_example.d \
./src/xuartlite_intr_tapp_example.d \
./src/xuartlite_selftest_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O2 -c -fmessage-length=0 -MT"$@" -I/home/chrispy/workspace/FPRock_CmodA735t/FPRock_Platform/export/FPRock_Platform/sw/FPRock_Platform/standalone_domain/bspinclude/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


