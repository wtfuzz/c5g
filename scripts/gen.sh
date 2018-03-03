#!/bin/sh

~/.local/share/fusesoc/orpsoc-cores/cores/wb_intercon/sw/wb_intercon_gen \
  data/wb_intercon.conf \
  rtl/verilog/wb_intercon.v \
  wb_intercon

