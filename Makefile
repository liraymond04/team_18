# Makefile generated by MakefileGenerator.cs
# *DO NOT EDIT*

UNREALROOTPATH = /home/liray/Documents/Applications/Linux_Unreal_Engine_5.3.1
GAMEPROJECTFILE =/home/liray/Documents/Unreal Projects/team_18_1/team_18.uproject

TARGETS = \
	UnrealEditor-Linux-DebugGame  \
	UnrealEditor-Linux-Shipping  \
	UnrealEditor \
	UnrealGame-Linux-DebugGame  \
	UnrealGame-Linux-Shipping  \
	UnrealGame \
	team_18-Linux-DebugGame  \
	team_18-Linux-Shipping  \
	team_18 \
	team_18Editor-Linux-DebugGame  \
	team_18Editor-Linux-Shipping  \
	team_18Editor\
	configure

BUILD = bash "$(UNREALROOTPATH)/Engine/Build/BatchFiles/Linux/Build.sh"
PROJECTBUILD = "$(UNREALROOTPATH)/Engine/Binaries/ThirdParty/DotNet/6.0.302/linux/dotnet" "$(UNREALROOTPATH)/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool.dll"

all: StandardSet

RequiredTools: CrashReportClient-Linux-Shipping CrashReportClientEditor-Linux-Shipping ShaderCompileWorker UnrealLightmass EpicWebHelper-Linux-Shipping

StandardSet: RequiredTools UnrealFrontend team_18Editor UnrealInsights

DebugSet: RequiredTools UnrealFrontend-Linux-Debug team_18Editor-Linux-Debug


UnrealEditor-Linux-DebugGame:
	 $(BUILD) UnrealEditor Linux DebugGame  $(ARGS)

UnrealEditor-Linux-Shipping:
	 $(BUILD) UnrealEditor Linux Shipping  $(ARGS)

UnrealEditor:
	 $(BUILD) UnrealEditor Linux Development  $(ARGS)

UnrealGame-Linux-DebugGame:
	 $(BUILD) UnrealGame Linux DebugGame  $(ARGS)

UnrealGame-Linux-Shipping:
	 $(BUILD) UnrealGame Linux Shipping  $(ARGS)

UnrealGame:
	 $(BUILD) UnrealGame Linux Development  $(ARGS)

team_18-Linux-DebugGame:
	 $(PROJECTBUILD) team_18 Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

team_18-Linux-Shipping:
	 $(PROJECTBUILD) team_18 Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

team_18:
	 $(PROJECTBUILD) team_18 Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

team_18Editor-Linux-DebugGame:
	 $(PROJECTBUILD) team_18Editor Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

team_18Editor-Linux-Shipping:
	 $(PROJECTBUILD) team_18Editor Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

team_18Editor:
	 $(PROJECTBUILD) team_18Editor Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

configure:
	xbuild /property:Configuration=Development /verbosity:quiet /nologo "$(UNREALROOTPATH)/Engine/Source/Programs/UnrealBuildTool/UnrealBuildTool.csproj"
	$(PROJECTBUILD) -projectfiles -project="\"$(GAMEPROJECTFILE)\"" -game -engine 

.PHONY: $(TARGETS)
