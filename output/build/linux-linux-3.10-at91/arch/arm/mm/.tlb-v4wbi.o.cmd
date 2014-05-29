cmd_arch/arm/mm/tlb-v4wbi.o := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -Wp,-MD,arch/arm/mm/.tlb-v4wbi.o.d  -nostdinc -isystem /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.2/include -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi -Iinclude/generated/uapi -include /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include  -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -include asm/unified.h -msoft-float         -c -o arch/arm/mm/tlb-v4wbi.o arch/arm/mm/tlb-v4wbi.S

source_arch/arm/mm/tlb-v4wbi.o := arch/arm/mm/tlb-v4wbi.S

deps_arch/arm/mm/tlb-v4wbi.o := \
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
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm/include/generated/asm/types.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/glue.h \
  arch/arm/mm/proc-macros.S \
    $(wildcard include/config/arm/lpae.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/cpu/dcache/writethrough.h) \
    $(wildcard include/config/pm/sleep.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \

arch/arm/mm/tlb-v4wbi.o: $(deps_arch/arm/mm/tlb-v4wbi.o)

$(deps_arch/arm/mm/tlb-v4wbi.o):
