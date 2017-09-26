# Web-Based-Print-Install Instructions
1. Download drivers for your printers in the format of .inf for windows or PPD's for all others.
2. Windows:
    * All these instructions can be found in better detail [here](http://www.tech-recipes.com/rx/45529/install-network-printers-via-batch-file-or-command-line-in-windows-78-and-server-2008/)
    * Download the driver and specify in the batch file where within the current directory the driver is located in the variable `driverLocation`; the batch file will automatically grab the cwd and conactenate it to the beginning.
    * Specify the `driverName` for your printer as specified in the `.inf`
    * Specify your `IP` address for your printer
    * Specify the name you'd like to call the printer under the variable `printerName`   
3. MacOS/Linux
    * Download the driver and specify in the batch file where within the current directory the driver is located in the variable driverLocation; the bash file will automatically grab the cwd and conactenate it to the beginning.
    * Specify the IP address
    * Specify the name that you want to call the printer under the variable `$PRINTERNAME`
    * Specify the name you'd like to call the printer but without spaces this time under the variable `$PRINTERNAME`
    * Specify the file path of the PPD without the actual name of the PPD; just the path right up to the folder under the variable $PPDPATH
    * Specify the name of the PPD with the file extension under the variable `$PPDNAME`
4. ZIP the driver file and the batch/bash file for the printers up and be sure to get a naming scheme going so that your end users are staying consistent with their language.
5. Edit the HTML Office Page file to reflect the file hierarchy in the anchor's `href` portion
    * You can also edit the colors to reflect you company's colors and the picture to reflect your company's logo.
6. Edit the HTML Landing Page file to redirect users based on IP to the printers in their immediate vicinity.
    * You can instead edit the `SiteSelect` HTML file to be the landing page. This is done easily by replacing the `localhost/exampleX` with whatever your site name and pages are that you'd like to redirect to.
    * You also, alternatively, just use the Office page to be a standalone page which hosts downloads for a single office.

### The tested environment works in an apache http 2.4 server you can find instructions on how to set it up at [Apache's website](https://www.apache.org)
