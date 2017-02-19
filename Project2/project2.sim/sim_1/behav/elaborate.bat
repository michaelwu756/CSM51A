@echo off
set xv_path=C:\\Users\\chees_000\\Documents\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 368f2eb6d30349168c9dbbd29583e07b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot csm51a_proj2_tb_behav xil_defaultlib.csm51a_proj2_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
