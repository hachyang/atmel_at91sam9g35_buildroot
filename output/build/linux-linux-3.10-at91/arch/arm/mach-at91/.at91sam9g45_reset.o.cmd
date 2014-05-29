cmd_arch/arm/mach-at91/at91sam9g45_reset.o := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -Wp,-MD,arch/arm/mach-at91/.at91sam9g45_reset.o.d  -nostdinc -isystem /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.2/include -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi -Iinclude/generated/uapi -include /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include  -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -include asm/unified.h -msoft-float         -c -o arch/arm/mach-at91/at91sam9g45_reset.o arch/arm/mach-at91/at91sam9g45_reset.S

source_arch/arm/mach-at91/at91sam9g45_reset.o := arch/arm/mach-at91/at91sam9g45_reset.S

deps_arch/arm/mach-at91/at91sam9g45_reset.o := \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/linkage.h \
  arch/arm/mach-at91/include/mach/hardware.h \
    $(wildcard include/config/arch/at91x40.h) \
    $(wildcard include/config/mmu.h) \
  arch/arm/include/generated/asm/sizes.h \
  include/asm-generic/sizes.h \
  include/linux/sizes.h \
  arch/arm/mach-at91/include/mach/at91rm9200.h \
  arch/arm/mach-at91/include/mach/at91sam9260.h \
  arch/arm/mach-at91/include/mach/at91sam9261.h \
  arch/arm/mach-at91/include/mach/at91sam9263.h \
  arch/arm/mach-at91/include/mach/at91sam9rl.h \
  arch/arm/mach-at91/include/mach/at91sam9g45.h \
  arch/arm/mach-at91/include/mach/at91sam9x5.h \
  arch/arm/mach-at91/include/mach/at91sam9n12.h \
  arch/arm/mach-at91/include/mach/sama5d3.h \
  arch/arm/mach-at91/include/mach/at91_ramc.h \
  arch/arm/mach-at91/include/mach/at91rm9200_sdramc.h \
  arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h \
  arch/arm/mach-at91/include/mach/at91sam9_sdramc.h \
  arch/arm/mach-at91/at91_rstc.h \

arch/arm/mach-at91/at91sam9g45_reset.o: $(deps_arch/arm/mach-at91/at91sam9g45_reset.o)

$(deps_arch/arm/mach-at91/at91sam9g45_reset.o):
