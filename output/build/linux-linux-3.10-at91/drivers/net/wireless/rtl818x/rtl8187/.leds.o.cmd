cmd_drivers/net/wireless/rtl818x/rtl8187/leds.o := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -Wp,-MD,drivers/net/wireless/rtl818x/rtl8187/.leds.o.d  -nostdinc -isystem /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.2/include -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/uapi -Iinclude/generated/uapi -include /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -Idrivers/net/wireless/rtl818x  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(leds)"  -D"KBUILD_MODNAME=KBUILD_STR(rtl8187)" -c -o drivers/net/wireless/rtl818x/rtl8187/leds.o drivers/net/wireless/rtl818x/rtl8187/leds.c

source_drivers/net/wireless/rtl818x/rtl8187/leds.o := drivers/net/wireless/rtl818x/rtl8187/leds.c

deps_drivers/net/wireless/rtl818x/rtl8187/leds.o := \
    $(wildcard include/config/rtl8187/leds.h) \

drivers/net/wireless/rtl818x/rtl8187/leds.o: $(deps_drivers/net/wireless/rtl818x/rtl8187/leds.o)

$(deps_drivers/net/wireless/rtl818x/rtl8187/leds.o):
