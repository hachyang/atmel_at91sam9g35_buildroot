cmd_arch/arm/boot/dts/at91sam9g35ek.dtb := /home/ryang/AtmelSam9/buildroot-at91/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.at91sam9g35ek.dtb.d.pre.tmp -nostdinc -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/boot/dts -I/home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/boot/dts/include -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.at91sam9g35ek.dtb.dts.tmp arch/arm/boot/dts/at91sam9g35ek.dts ; /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/at91sam9g35ek.dtb -b 0 -i arch/arm/boot/dts/  -d arch/arm/boot/dts/.at91sam9g35ek.dtb.d.dtc.tmp arch/arm/boot/dts/.at91sam9g35ek.dtb.dts.tmp ; cat arch/arm/boot/dts/.at91sam9g35ek.dtb.d.pre.tmp arch/arm/boot/dts/.at91sam9g35ek.dtb.d.dtc.tmp > arch/arm/boot/dts/.at91sam9g35ek.dtb.d

source_arch/arm/boot/dts/at91sam9g35ek.dtb := arch/arm/boot/dts/at91sam9g35ek.dts

deps_arch/arm/boot/dts/at91sam9g35ek.dtb := \
  arch/arm/boot/dts/at91sam9g35.dtsi \
  arch/arm/boot/dts/at91sam9x5.dtsi \
  arch/arm/boot/dts/skeleton.dtsi \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/boot/dts/include/dt-bindings/dma/at91.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/boot/dts/include/dt-bindings/pinctrl/at91.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/boot/dts/include/dt-bindings/interrupt-controller/irq.h \
  /home/ryang/AtmelSam9/buildroot-at91/output/build/linux-linux-3.10-at91/arch/arm/boot/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/at91sam9x5ek.dtsi \
  arch/arm/boot/dts/at91sam9x5cm.dtsi \

arch/arm/boot/dts/at91sam9g35ek.dtb: $(deps_arch/arm/boot/dts/at91sam9g35ek.dtb)

$(deps_arch/arm/boot/dts/at91sam9g35ek.dtb):
