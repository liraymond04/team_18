// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "team_18Character.generated.h"

UCLASS(Blueprintable)
class Ateam_18Character : public ACharacter
{
	GENERATED_BODY()

public:
	Ateam_18Character();

	// Called every frame.
	virtual void Tick(float DeltaSeconds) override;

private:
	
};

