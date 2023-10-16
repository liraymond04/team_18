// Copyright Epic Games, Inc. All Rights Reserved.

#include "team_18GameMode.h"
#include "team_18PlayerController.h"
#include "team_18Character.h"
#include "UObject/ConstructorHelpers.h"

Ateam_18GameMode::Ateam_18GameMode()
{
	// use our custom PlayerController class
	PlayerControllerClass = Ateam_18PlayerController::StaticClass();

	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/TopDown/Blueprints/BP_TopDownCharacter"));
	if (PlayerPawnBPClass.Class != nullptr)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}

	// set default controller to our Blueprinted controller
	static ConstructorHelpers::FClassFinder<APlayerController> PlayerControllerBPClass(TEXT("/Game/TopDown/Blueprints/BP_TopDownPlayerController"));
	if(PlayerControllerBPClass.Class != NULL)
	{
		PlayerControllerClass = PlayerControllerBPClass.Class;
	}
}