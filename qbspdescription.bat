Echo 	The first process to run is QBSP...
Echo.
Echo	[Description]
Echo.		qbsp is a tool used in the creation of maps for the 
Echo.			id Software game Quake. 
Echo.			qbsp takes a .map file as input and produces a .bsp file 
Echo.			playable in the Quake engine.
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
