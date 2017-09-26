<!DOCTYPE html>
<!--
		Author:				George Haraksin
		Last Revision Date:	May 11th, 2017
		Company:			Pacific Advisors LLC
		Supervisor:			Chris McMahan
		Description:		This program is built to automate printer installation for Pacific Advisors' offices.
							This webpage redirects the user to their office page based on their IP.

 PLEASE PUT ANY FUTURE CHANGES IN THE REVISION HISTORY ALONG WITH YOUR NAME AND DATE OF REVISION AND A SUMMARY OF
 THE CHANGES YOU MADE

 Revision History:  |    [DATE]      |       [NAME]          |               [DESCRIPTION]
                    |    5/11/17     |   George Haraksin     |   The program is completed with varaibles             
-->
<html>
	<head>
		<style>
			table.center {
				width:80%; 
				margin-left:10%; 
				margin-right:10%;
			}
			h1		{
				color:rgb(88,132,153);
				font-family:"Helvetica";
			}
			p		{
				font-family:"Helvetica";
				font-size: 150%;
			}
			p2		{
				font-family:"Helvetica";
				font-size: 110%;
			}
			.button	{
				background-color: "#fcb721";
				border: none
				color: black;
				text-align: left;
			}
		</style>
	</head>
	<body bgcolor="#0e3659">
	<table class="center" style="text-align:center;" cellspacing="0" cellpadding="30">
		<tbody>
		<tr>
		<td bgcolor="#FFFFFF">
			<img src = "http://pa.solutions/r/PAlogoblueclose.png" alt = "Pacific Advisors" height = 159 width = 250 style = "text-align: center">
			<h1>
				<?php
					$IP = $_SERVER['REMOTE_ADDR'];
					$arr = explode (".", $IP, 4);
					?>
				<script>
					var IP=<?php echo $arr[2]?>;
					
					if( IP == 1){
						window.location.href = "http://localhost/example1";
					}
					else if(IP == 3){
						window.location.href = "http://localhost/example2";
					}
					else if(IP == 5){
						window.location.href = "http://localhost/example3";
					}
					else if(IP == 8){
						window.location.href = "http://localhost/example4";
					}
					else if(IP == 10){
						window.location.href = "http://localhost/example5";
					}
					else if(IP == 11){
						window.location.href = "http://localhost/example6";
					}
					else if(IP == 13){
						window.location.href = "http://localhost/example7";
					}
					else if(IP == 15){
						window.location.href = "http://localhost/example8";
					}
					else{window.alert("This is not a recognized IP address, please contact your systems adiminstrator.");}
				</script>
				<strong><i> Redirecting you to your office... <i></strong>
			</h1>
		</td>
		</tr>
		</tbody>
	</body>
</html>