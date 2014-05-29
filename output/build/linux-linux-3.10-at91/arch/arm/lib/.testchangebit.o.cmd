cmd_arch/arm/lib/testchangebit.o := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -Wp,-MD,arch/arm/lib/.testchangebit.o.d  -nostdinc -isystem /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.2/include -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi -Iinclude/generated/uapi -include /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include  -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -include asm/unified.h -msoft-float         -c -o arch/arm/lib/testchangebit.o arch/arm/lib/testchangebit.S

source_arch/arm/lib/testchangebit.o := arch/arm/lib/testchangebit.S

deps_arch/arm/lib/testchangebit.o := \
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
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/hwcap.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi/asm/hwcap.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/opcodes-virt.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  arch/arm/lib/bitops.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/unwind.h \
    $(wildcard include/config/arm/unwind.h) \

arch/arm/lib/testchangebit.o: $(deps_arch/arm/lib/testchangebit.o)

$(deps_arch/arm/lib/testchangebit.o):
