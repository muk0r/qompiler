@Echo Off

Title Qompiler v0.50

:Start
If Not Exist tools\qbsp.exe GoTo NoTools
If Not Exist tools\vis.exe GoTo NoTools
If Not Exist tools\light.exe GoTo NoTools
If Not Exist *.MAP GoTo NeedMaps
If Not Exist Qompiled\Nul MD Qompiled
If "%1"=="DoIt" GoTo Qompiler
If Not "%1"=="" GoTo NeedMaps

Echo Log file for Qompiler>QompilerLog.txt
Echo.>>QompilerLog.txt
Echo  Lets Qompile some maps!
Echo.
Echo 	The first process to run is QBSP...
Echo.
Echo	[Description]
Echo.		qbsp is a tool used in the creation of maps for the 
Echo.	id Software game Quake. 
Echo.	qbsp takes a .map file as input and produces a .bsp file 
Echo.	playable in the Quake engine.
Echo.
Pause
Echo	=============================================================
Echo.
Echo	[-nofill] - Doesnt perform outside filling
Echo.
Echo	[-noclip] - Doesnt build clip hulls
Echo.
Echo	[-noskip] - Doesnt remove faces using the skip texture
Echo.
Echo	[-onlyents] - Only updates .map entities
Echo.
Echo	[-verbose] - Print out more .map information
Echo.
Echo	[-noverbose] - Print out almost no information at all
Echo.
Echo	[-splitspecial] - Doesnt combine sky and water faces into one large face
Echo.
Echo	[-transwater] - Computes portal information for transparent water (default)
Echo.
Echo	[-notranswater] - Computes portal information for opaque water
Echo.
Echo	[-transsky] - Computes portal information for transparent sky
Echo.
Echo	[-nooldaxis] - Use alternate texture alignment algorithm. 
Echo.	The default is to use the original QBSP texture alignment algorithm, 
Echo.	which required the -oldaxis switch in tyrutils-ericw v0.15.1 and earlier.
Echo.
Echo	[-forcegoodtree] (experimental) - Force use of expensive processing for SolidBSP stage. 
Echo.	Often results in a more optimal BSP file in terms of file size, 
Echo.	at the expense of extra processing time.
Echo.
Echo	[-bspleak] - Creates a .por file, used in the BSP editor
Echo.
Echo	[-oldleak] - Create an old-style QBSP .PTS file (default is new)
Echo.
Echo	[-nopercent] - Prevents output of percent completion information
Echo.
Echo	[-bsp2] - Create the output BSP file in BSP2 format. 
Echo.
Echo	[-2psb] - Create the output BSP file in 2PSB format. 
Echo.
Echo	[-leakdist] [n] - Space between leakfile points (default 2)
Echo.
Echo	[-subdivide] [n] - Use different texture subdivision (default 240)
Echo.
Echo	[-wadpath] - Search this directory for wad files (default is cwd)
Echo.
Echo	[-oldrottex] - Use old method of texturing rotate_ brushes 
Echo	where the mapper aligns textures for the object at (0 0 0).
Echo.
Echo	[-maxNodeSize] [n] - Switch to the cheap spatial subdivion bsp heuristic 
Echo	when splitting nodes of this size (in any dimension). 
Echo.	This gives much faster qbsp processing times on large maps 
Echo.	and should generate better bsp trees as well. 
Echo.	From txqbsp-xt, thanks rebb. (default 1024, 0 to disable)
Echo.
Echo	[-hexen2] - Generate a hexen2 bsp.
Echo.
Echo	[-wrbrushes] (bspx) - Includes a list of brushes for brush-based collision.
Echo.
Echo	[-wrbrushesonly] - "-wrbrushes" combined with "-noclip" argument.
Echo.
Echo	[-notex] - Write only placeholder textures, to depend upon replacements
Echo.
Echo	======================================================================
Echo.
Set /p _qbsp=Input any desired qbsp settings, then press "Enter" to continue...
Echo.
Echo 	The next process is VIS.
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
Set /p _vis=Input any desired vis settings, then press "Enter" to continue...
Echo.
Echo	The final process is LIGHT.
Echo.
Echo	[Description]
Echo.
Echo		light reads a Quake .bsp file and calculates light and shadow information 
Echo	based on the entity definitions contained in the .bsp. 
Echo.
Echo	The .bsp file is updated with the new light data upon completion, 
Echo	overwriting any existing lighting data.
Echo.
Pause
Echo	======================================================================
Echo.
Echo	[-threads] [n] - Set number of threads explicitly. 
Echo.	By default light will attempt to detect the number of CPUs/cores available.
Echo.
Echo	[-extra] - Calculate extra samples (2x2) 
Echo.	and average the results for smoother shadows.
Echo.
Echo	[-extra4] - Calculate even more samples (4x4) 
Echo.	and average the results for smoother shadows.
Echo.
Echo	[-light] [n] - Set a global minimum light level for style 0 lightmaps.
Echo.	Overrides default light level set in worldspawn.
Echo.
Echo	[-addmin] - Changes the behaviour of minlight. 
Echo.	Instead of increasing low light levels to the global minimum,
Echo.	add the global minimum light level to all style 0 lightmaps. 
Echo.	This may help reducing the sometimes uniform minlight effect.
Echo.
Echo	[-dist] [n] - Scales the fade distance of all lights by a factor of n.
Echo.
Echo	[-range] [n] - Scales the brightness range of all lights
Echo.	without affecting their fade discance.
Echo.
Echo	[-gate] [n] - Set a minimum light level below which 
Echo. 	can be considered zero brightness. 
Echo.	This can dramatically speed up processing when there are 
Echo.	large numbers of lights with inverse or inverse square falloff. 
Echo.	In most cases, values less than 1.0 will cause no discernable visual differences. Default 0.001.
Echo.
Echo	[-soft] [n] - Perform post-processing on the lightmap 
Echo.	which averages adjacent samples to smooth shadow edges. 
Echo.	If n is specified, the algorithm will take ’n’ samples 
Echo.	on each side of the sample point and replace the original value 
Echo.	with the average. 
Echo.	e.g. a value of 1 results in averaging a 3x3 square 
Echo.	centered on the original sample. 2 implies a 5x5 square and so on. 
Echo.	If -soft is specified, but n is omitted, a value will be 
Echo.	the level of oversampling requested. If no oversampling, 
Echo.	then the implied value is 1. 
Echo.	-extra implies a value of 2 and -extra4 implies 3. Default 0 (off).
Echo.
Echo	[-anglescale] or [-anglesense] [n] - Set the scaling of sunlight brightness 
Echo	.due to the angle of incidence with a surface
Echo.
Echo	[-lit] - Force generation of a .lit file,
Echo.	even if your map does not have any coloured lights. 
Echo.	By default, light will automatically generate the .lit file when needed.
Echo.
Echo	[-dirt] - Globally enables dirtmapping (ambient occlusion), 
Echo.	overriding the "_dirt" worldspawn key.
Echo.
Echo	[-dirtdebug] - Implies "-dirt", and renders just the dirtmap 
Echo.	against a fullbright background, ignoring all lights in the map. 
Echo.	Useful for previewing and turning the dirt settings.
Echo.
Echo.	[-dirtmode] [n] or [-dirtdepth] [n] or [-dirtscale] [n]
Echo.	 						or
Echo.			 [-dirtgain] [n] or [-dirtangle] [n]
Echo.	Fine-tune the dirtmapping, overriding the corresponding worldspawn keys.
Echo.
Echo	[-gamma] [n] - Adjust brightness of final lightmap. 
Echo.	Default 1, less than 1 is brighter, Greater than 1 is darker.
Echo.
Echo	[-lux] - Generate a .lux file storing average incoming light directions 
Echo.	for surfaces. Usable by FTEQW with "r_deluxemapping 1"
Echo.
Echo	[-surflight_subdivide] [n] - Configure spacing of all surface lights. 
Echo	Default 128 units. Minimum setting: 64 / max 2048. 
Echo.
Echo	[-onlyents] - Updates the entities lump in the bsp. 
Echo.	You should run this after running qbsp with -onlyents, 
Echo.	if your map uses any switchable lights. 
Echo.	All this does is assign style numbers to each switchable light.
Echo.
Echo	[-sunsamples] [n] - Default 100. Set the number of samples to use for 
Echo.	"_sunlight_penumbra" and "_sunlight2" 
Echo.	_sunlight2 may use more or less because of how the suns are set up in a sphere.
Echo.
Echo	[-surflight_dump] - Saves the lights generated by surfacelights 
Echo.	to a "mapname-surflights.map" file.
Echo.
Echo	[-lmscale] [n] - Equivelent to "_lightmap_scale" worldspawn key.
Echo.
Echo	[bspxlit] - Writes rgb data into the bsp itself.
Echo.
Echo	[-bspx] - Writes both rgb and directions data into the bsp itself.
Echo.
Echo	[-novanilla] - Fallback scaled lighting will be omitted. 
Echo.	Standard grey lighting will be ommitted if there are coloured lights. 
Echo.	Implies "-bspxlit". "-lit" will no longer be implied 
Echo.	by the presence of coloured lights.
Echo.
Echo	[-bounce] [n] - Enables 1 bounce, 0=disable even if set in worldspawn.
Echo.
Echo	[-bouncescale] [n] - Scales brightness of bounce lighting, default 1.
Echo.
Echo	[-bouncecolorscal] [n] - Weight for bounce lighting to use 
Echo.	texture colors from the map: 
Echo.	0=ignore map textures (default)
Echo.	1=multiply bounce light color by texture color.
Echo.
Echo	[-phongdebug] - Write normals to lit file for debugging phong shading.
Echo.
Echo	[-bouncedebug] - Write bounced lighting only to the lightmap
Echo.	for debugging / previewing -bounce.
Echo.
Echo	[-novisapprox] - Disable approximate visibility culling of lights, 
Echo.	which has a small chance of introducing artifacts 
Echo.	where lights cut off too soon.
Echo.
Echo	[-backend] - Choose a raytracing backend, currently available: embree, bsp.
Echo.
Echo	======================================================================
Echo.
Set /P _light=Input any desired light settings. Pres "Enter" to continue...
For %%i in (*.MAP) do call Qompiler DoIt %%i
Echo End of log.>>QompilerLog.txt
Echo.
Echo Qompiling succesful...
GoTo End

:Qompiler
Echo ReQompiling map %2...
Echo ReQompiling %2>>QompilerLog.txt
tools\qbsp.exe %_qbsp% %2>>QompilerLog.txt
tools\vis.exe %_vis% %2>>QompilerLog.txt
tools\light.exe %_light% %2>>QompilerLog.txt
Echo Finished map %2>>QompilerLog.txt
Echo.>>QompilerLog.txt
Echo.>>QompilerLog.txt
Echo.>>QompilerLog.txt
Echo %2>>Qompiled.txt
Echo The following maps have been successfully Qompiled: >>Qompiled.txt
Move %2 Qompiled>Nul
If Exist *.Prt Del *.Prt
GoTo End

:NeedMaps
Echo. Qompiler and your maps must be in the same folder.  
Echo. Be sure your compiling tools are in the Tools directory, as well.
Goto Restart

:Restart
Echo Do you wish to restart? 
Echo.
Set /p op=Choose Y/N...
if "%op%"=="Y" goto Start
if "%op%"=="y" goto Start
) else (
goto End


:NoTools
Echo. Need qbsp.exe/vis.exe/light.exe in the Tools directory.
Goto Restart

:End
Echo.
Pause
