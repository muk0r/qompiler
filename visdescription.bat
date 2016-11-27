Echo 	The next process to run is VIS.
Echo.
Echo	[Description]
Echo.
Echo		vis is a tool used in the creation of maps for the game Quake. 
Echo	vis looks for a .prt file by stripping the file extension from
Echo	BSPFILE (if any) and appending ".prt". 
Echo	vis then calculates the potentially visible set (PVS) information
Echo 	before updating the .bsp file, overwriting any existing PVS data.
Echo.
Pause
Echo	======================================================================
Echo.
Echo	[-threads] - n Set number of threads explicitly. 
Echo.	By default vis will attempt to detect the number of CPUs/cores available.
Echo.
Echo	[-fastSkip] - detailed calculations and calculate a very loose set of PVS data. 
Echo.	Sometimes useful for a quick test while developing a map.
Echo.
Echo	[-level] - n Select a test level from 0 to 4 
Echo.	for detailed visibility calculations. 
Echo.	Lower levels are not necessarily faster in in all cases. 
Echo.	It is not recommended that you change the default level 
Echo.	unless you are experiencing problems. Default 4.
Echo.
Echo	[-v] - Verbose output.
Echo.
Echo	[-vv] - Very verbose output.
Echo.
Echo	[-noambientsky] - Disable ambient sound generation for sky textures.
Echo.
Echo	[-noambientwater] - Disable ambient sound generation for water textures.
Echo.
Echo	[-noambientslime] - Disable ambient sound generation for slime textures.
Echo.
Echo	[-noambientlava] - Disable ambient sound generation for lava textures.
Echo.
Echo	[-noambient] - Disable all ambient sound generation.
Echo.
Echo	======================================================================
Echo.
