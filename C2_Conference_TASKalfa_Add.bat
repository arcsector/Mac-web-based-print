@Echo Off

REM		Author:				George Haraksin
REM		Last Revision Date:	March 14th, 2017
REM		Company:			Pacific Advisors LLC
REM		Supervisor:			Chris McMahan
REM		Description:		This program is built to automate printer installation for Pacific Advisors' offices.
REM							It configures an IP port, installs the driver, and then installs the printer.

REM get current file path for driver reference location
set currentFilePath=%~p0
set currentDrive=%~d0
set currentPath=%currentDrive%%currentFilePath%

REM set driver name and location within file and then within C:\ drive
set driverLocation=KyoceraClassicU..._v31_signed\KyoceraClassicUniversalDriver_v31\PCL5\OEMsetup.inf
set driverPath=%currentPath%%driverLocation%
set driverName=Kyocera Classic Universaldriver

REM set printer IP and syntax IP_IP for configuring ports
set IP=10.1.3.30
set IP_=IP_
set IP_IP=%IP_%%IP%

REM call visual basic script for configuring printer ports
set prnport=%WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs

REM set printer name
set printerName=Kyocera Main C2

REM configure ports
cscript "%prnport%" -a -r "%IP_IP%" -h "%IP%" -o raw -n 9100

REM install drivers
rundll32 printui.dll,PrintUIEntry /ia /m "%driverName%" /f "%driverPath%"

REM install printer
rundll32 printui.dll,PrintUIEntry /if /b "%printerName%" /f "%driverPath%" /r "%IP_IP%" /m "%driverName%"

REM closing message
Echo Unless you have received an error, your printer was successfully installed! Please close the window.
PAUSE