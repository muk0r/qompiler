[About Qompiler]

	Qompiler is aimed to assist all mappers, novice and advanced, with compiling maps. 
	This is based on "Ultimate Quake Map Patcher" by Mankrip. (link below)
	Currently its set up to run with Ericw's "tyrutils-ericw" compiling tools. (link below)
	In the future it will search for a handful of common compilers.
	
[Instructions]
	- Create a folder named "Qompiler" inside your "Quake folder. (or wherever you prefer)
	- If you dont already have them, download the "tyrutils-eric" compiling tools from the link in the bottom of this readme.
	- Within the "Qompiler" folder create a folder named "Tools".
	- Copy the contents of the "bin" folder in "tyrutils-ericw" to the "Tools" folder within the "Qompiler" folder.
	- Take any map(s) you wish to (re)compile and put them in the "Qompiler" folder.
	- Double click "Qompiler.bat" to run Qompiler.
	- Qompiler will prompt you if you didnt put things in the right place and will tell you what to correct.
	- Qompiler will prompt you to input your desired settings for each compiling tool. 
		It will display each setting and a description of its function. 
		These settings can also be found in "tyrutils-eric/doc", with further descriptions.

[Goals]

	I'd like for Qompiler to acheive the following goals:
	
	- Check for the existence of:
		a. qbsp.exe
		b. vis.exe
		c. light.exe
		d. .map files
		e. .bsp files
	- Allow the user to set options for compiling tools
		- The user is shown a list of settings and then types in the ones they desire. 
	- Move through each map on its own.
		- Perhaps make a "Prompt between each map" setting to allow the input of new map settings.
	- Tool Selection
		- Allow the user to completely turn off a tool.
	- Create Configs
		- Allow the user to create a series of configs or profiles to choose from. 
		Once the user sets values for the compiling tools, they will be prompted if they wish to save them to a config.
		During the next use of Qompiler the user will be prompted if they wish to use a config or custom values.
		
[Mentions]

	Qompiler, is the work of Mukor(mukor.quake@gmail.com) and was inspired by Mankrips 
	"Ultimate Quake Map Patcher", namely, reVis.bat.
	
	http://quakedev.dcemulation.org/fragger/downloads/tools/uqmp.rar

	Ericw for 'tyrutils-ericw' as the descriptions are from the "docs" folder for the compiler settings.
	
	http://ericwa.github.io/tyrutils-ericw/

	http://www.celephais.net/board/forum.php for existing.
	
	Thanks for looking!
