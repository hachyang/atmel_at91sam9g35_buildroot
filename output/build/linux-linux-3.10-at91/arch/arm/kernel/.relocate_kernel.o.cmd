cmd_arch/arm/kernel/relocate_kernel.o := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -Wp,-MD,arch/arm/kernel/.relocate_kernel.o.d  -nostdinc -isystem /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.2/include -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi -Iinclude/generated/uapi -include /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include  -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -include asm/unified.h -msoft-float         -c -o arch/arm/kernel/relocate_kernel.o arch/arm/kernel/relocate_kernel.S

source_arch/arm/kernel/relocate_kernel.o := arch/arm/kernel/relocate_kernel.S

deps_arch/arm/kernel/relocate_kernel.o := \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/kexec.h \
    $(wildcard include/config/kexec.h) \

arch/arm/kernel/relocate_kernel.o: $(deps_arch/arm/kernel/relocate_kernel.o)

$(deps_arch/arm/kernel/relocate_kernel.o):
