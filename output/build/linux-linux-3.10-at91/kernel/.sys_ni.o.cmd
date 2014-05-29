cmd_kernel/sys_ni.o := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -Wp,-MD,kernel/.sys_ni.o.d  -nostdinc -isystem /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.2/include -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi -Iinclude/generated/uapi -include /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(sys_ni)"  -D"KBUILD_MODNAME=KBUILD_STR(sys_ni)" -c -o kernel/sys_ni.o kernel/sys_ni.c

source_kernel/sys_ni.o := kernel/sys_ni.c

deps_kernel/sys_ni.o := \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/linkage.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi/asm-generic/errno.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi/asm-generic/errno-base.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/aeabi.h) \
    $(wildcard include/config/oabi/compat.h) \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi/asm/unistd.h \

kernel/sys_ni.o: $(deps_kernel/sys_ni.o)

$(deps_kernel/sys_ni.o):
