@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 810c97494dd84240be2af6dcf947e48d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FPU_Division_Sim_behav xil_defaultlib.FPU_Division_Sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
