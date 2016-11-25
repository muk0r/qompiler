	Put your .maps, compiling tools, and Qompiler.bat in the same directory. Double click Qompiler.bat You will be prompted to enter any desired values for each step of the compiling procces. Follow the prompts and Qompiler will compile each of the provided maps. 

I'd like for Qompiler to acheive the following goals:
	- Check for the existence of:
		a. qbsp.exe
		b. vis.exe
		c. light.exe
		d. .map files
		e. .bsp files
	- Allow the user to set options for compiling tools
		- The user is shown a list of settings and then types of the ones they desire. 
	- Move through each map on its own.
		- Perhaps make a "Prompt between each map" setting to allow the input of new map settings.
	- Tool Selection
		- Allow the user to completely turn off a tool.
	- Create Configs
		- Allow the user to create a series of configs or profiles to choose from. Once the user sets values for the compiling tools, they will be prompted if they wish to save them to a config. During the next use of Qompiler the user will be prompted if they wish to use a config or custom values.
		
	Qompiler, is the work of Mukor(mukor.quake@gmail.com) and was inspired by Mankrips "Ultimate Quake Map Patcher" (http://quakedev.dcemulation.org/fragger/downloads/tools/uqmp.rar). Qompiler aims to help novice and advanced mappers alike. 