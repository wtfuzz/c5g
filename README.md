# Terasic C5G FuseSoC Package

This is a package for the Terasic Cyclone V GX Starter Kit (C5G).

The basic CPU functionality has been tested with the port of NuttX to or1k. Currenty there is no implemented ROM, so an ELF is loaded through GDB and OpenOCD.

Future versions will have a boot ROM and MicroSD support.

### Board Features

- Cyclone V GX with 77K LEs
- 512MB LPDDR2 RAM - hard memory controller
- 512KB SRAM
- 512KB on die RAM
- HSMC with 4 lane 3.125Gbps SERDES
- SMA connectors for 2 lane 3.125Gbps SERDES
- FTDI USB serial
- MicroSD
- HDMI
- 24bit audio codec
- 12bit 500ksps ADC
- Switches, buttons, LEDs, 7 segment displays, etc

### Default FuseSoC Configuration

- mor1kx OpenRISC CPU v5.0-r1
- LPDDR2 Avalon hard controller connected using Wishbone bridge
- FTDI USB connected to 16550 uart0
- Buttons, switches, LEDs connected to CorePort on gpio0

### Memory Map

| Base Address | Size        | Function |
| ------------ |-------------|----------|
| 0x00000000   | 0x200000000 | LPDDR2   |
| 0x90000000   | 0x000000020 | uart0    |
| 0x91000000   | 0x000000020 | gpio0    |

### Links

- [FuseSoC](https://github.com/olofk/fusesoc) soft system on chip package manager
- [CorePort](https://github/com/wtfuzz/coreport) Interrupt enabled GPIO port component
- [NuttX OpenRISC port](https://bitbucket.org/extent3d/nuttx/branch/or1k)
- [OpenRISC](https://openrisc.io/)
- [Terasic C5G](http://c5g.terasic.com) Board Documentation

