@echo off
set xv_path=C:\\Users\\chees_000\\Documents\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim csm51a_proj3_tb_func_synth -key {Post-Synthesis:sim_1:Functional:csm51a_proj3_tb} -tclbatch csm51a_proj3_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
