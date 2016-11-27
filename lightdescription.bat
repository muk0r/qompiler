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
Echo.	If n is specified, the algorithm will take �n� samples 
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