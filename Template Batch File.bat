@Echo Off
REM---------------------------------------------------------------------------------------------------------------------REM
REM		Author:				arcsector                                                                                           REM
REM		Last Revision Date:	March 14th, 2017                                                                              REM
REM		                                                                                                                  REM
REM		Description:		This program is built to automate printer installation for offices.                               REM
REM							It configures an IP port, installs the driver, and then installs the printer.                           REM
REM                                                                                                                     REM
REM PLEASE PUT ANY FUTURE CHANGES IN THE REVISION HISTORY ALONG WITH YOUR NAME AND DATE OF REVISION AND A SUMMARY OF    REM
REM THE CHANGES YOU MADE                                                                                                REM
REM                                                                                                                     REM
REM Revision History:  |    [DATE]      |       [NAME]          |               [DESCRIPTION]                           REM
REM                    |    3/16/17     |   arcsector           |   The program is completed with varaibles             REM
REM---------------------------------------------------------------------------------------------------------------------REM

REM get current file path for driver reference location
set currentFilePath=%~p0
set currentDrive=%~d0
set currentPath=%currentDrive%%currentFilePath%

REM set driver name and location within file and then within C:\ drive
set driverLocation=KyoceraClassicU..._v31_signed\KyoceraClassicUniversalDriver_v31\PCL6\OEMsetup.inf
set driverPath=%currentPath%%driverLocation%
set driverName=Kyocera Classic Universaldriver PCL6

REM set printer IP and syntax IP_IP for configuring ports
set IP=[NEED]
set IP_=IP_
set IP_IP=%IP_%%IP%

REM call visual basic script for configuring printer ports
set prnport=%WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs

REM set printer name
set printerName=[NEED]

REM configure ports
cscript "%prnport%" -a -r "%IP_IP%" -h "%IP%" -o raw -n 9100

REM install drivers
rundll32 printui.dll,PrintUIEntry /ia /m "%driverName%" /f "%driverPath%"

REM install printer
rundll32 printui.dll,PrintUIEntry /if /b "%printerName%" /f "%driverPath%" /r "%IP_IP%" /m "%driverName%"

REM closing message
Echo Unless you have received an error, your printer was successfully installed! Please close the window.
PAUSE
