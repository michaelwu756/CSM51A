@echo off
set xv_path=C:\\Users\\chees_000\\Documents\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim csm51a_proj3_tb_behav -key {Behavioral:sim_1:Functional:csm51a_proj3_tb} -tclbatch csm51a_proj3_tb.tcl -view C:/Users/chees_000/Documents/Programs/CSM51A/Project3/csm51a_proj3_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
