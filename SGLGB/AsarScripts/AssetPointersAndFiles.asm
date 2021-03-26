; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!SGLGB_U1 = $0001
!SGLGB_U2 = $0002

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl GFXPointersStart,(GFXPointersEnd-GFXPointersStart)/$0C
	dl TilemapPointersStart,(TilemapPointersEnd-TilemapPointersStart)/$0C
	dl PalettePointersStart,(PalettePointersEnd-PalettePointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl AudioBankPointersStart,(AudioBankPointersEnd-AudioBankPointersStart)/$0C
	dl BRRSamplesPointersStart,(BRRSamplesPointersEnd-BRRSamplesPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

GFXPointersStart:
	dl $828000,$828800,GFX_Sprite_SleepyRockPlatforms,GFX_Sprite_SleepyRockPlatformsEnd
	dl $828800,$828900,GFX_Sprite_SleepyRockBridge,GFX_Sprite_SleepyRockBridgeEnd
	dl $828900,$828D80,GFX_Sprite_BootLauncher,GFX_Sprite_BootLauncherEnd
	dl $82B70F,$82BA0F,GFX_Sprite_Unknown1,GFX_Sprite_Unknown1End
	dl $82D765,$82DB65,GFX_Sprite_Button,GFX_Sprite_ButtonEnd
	dl $82EAF3,$82EFF3,GFX_Sprite_SleepyRockTunnelMask,GFX_Sprite_SleepyRockTunnelMaskEnd
	dl $82FDB4,$82FFB4,GFX_Sprite_ForestHouseBackwall,GFX_Sprite_ForestHouseBackwallEnd
	dl $83E67F,$83FB7F,GFX_Sprite_KillerGrapes,GFX_Sprite_KillerGrapesEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $85FA97,$85FE97,GFX_Sprite_MushroomSpring,GFX_Sprite_MushroomSpringEnd
else
	dl $85F8F3,$85FCF3,GFX_Sprite_MushroomSpring,GFX_Sprite_MushroomSpringEnd
endif
	dl $868000,$868600,GFX_Sprite_Unknown2,GFX_Sprite_Unknown2End
	dl $869057,$86F457,GFX_Sprite_EvilSnowman,GFX_Sprite_EvilSnowmanEnd
	dl $878CA7,$8790A7,GFX_Sprite_Cheese,GFX_Sprite_CheeseEnd
	dl $87CFF1,$87D5F1,GFX_Sprite_Barrel,GFX_Sprite_BarrelEnd
	dl $87D5F1,$87E1F1,GFX_Sprite_TriggerSign,GFX_Sprite_TriggerSignEnd
	dl $87E1F1,$87EDF1,GFX_Sprite_Bat,GFX_Sprite_BatEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $87FDC3,$87FFC3,GFX_Sprite_Wind,GFX_Sprite_WindEnd
else
	dl $87FDC0,$87FFC0,GFX_Sprite_Wind,GFX_Sprite_WindEnd
endif
	dl $88EAB3,$88FCB3,GFX_Sprite_Mousetrap,GFX_Sprite_MousetrapEnd
	dl $899E4B,$89B04B,GFX_Sprite_PunchingRobot,GFX_Sprite_PunchingRobotEnd
	dl $89BC0F,$89D28F,GFX_Sprite_Cauldron,GFX_Sprite_CauldronEnd
	dl $89D28F,$89ED8F,GFX_Sprite_CapturedMouse,GFX_Sprite_CapturedMouseEnd
	dl $89FA4C,$89FBCC,GFX_Sprite_PopgunBullet,GFX_Sprite_PopgunBulletEnd
	dl $89FBCC,$89FECC,GFX_Sprite_CastleRisingPlatform,GFX_Sprite_CastleRisingPlatformEnd
	dl $8ADA04,$8AFE04,GFX_Sprite_CastleCat,GFX_Sprite_CastleCatEnd
	dl $8CC1C4,$8CC4C4,GFX_Sprite_DroppedBarrel,GFX_Sprite_DroppedBarrelEnd
	dl $8F8E0C,$8F980C,GFX_Sprite_HeadlessSnowman,GFX_Sprite_HeadlessSnowmanEnd
	dl $8FA2E1,$8FACE1,GFX_Sprite_BlackBird,GFX_Sprite_BlackBirdEnd
	dl $8FACE1,$8FCAE1,GFX_Sprite_BarrelDroppingCat,GFX_Sprite_BarrelDroppingCatEnd
	dl $8FDAB3,$8FE9B3,GFX_Sprite_WheeledRobot,GFX_Sprite_WheeledRobotEnd
	dl $8FEB51,$8FF551,GFX_PulleyPlankPlatform,GFX_PulleyPlankPlatformEnd
	dl $918000,$918C00,GFX_AnimatedBubblingGooTiles,GFX_AnimatedBubblingGooTilesEnd
	dl $918C00,$919400,GFX_AnimatedFGCandleFlameTiles,GFX_AnimatedFGCandleFlameTilesEnd
	dl $919400,$919800,GFX_AnimatedCandlelabraFlameTiles,GFX_AnimatedCandlelabraFlameTilesEnd
	dl $919800,$919C00,GFX_AnimatedVentilationFanTiles,GFX_AnimatedVentilationFanTilesEnd
	dl $919C00,$91A000,GFX_AnimatedTeleporterTiles,GFX_AnimatedTeleporterTilesEnd
	dl $91A000,$91AC00,GFX_AnimatedStaticTVTiles,GFX_AnimatedStaticTVTilesEnd
	dl $91AC00,$91B400,GFX_AnimatedPirateFlagTiles,GFX_AnimatedPirateFlagTilesEnd
	dl $91C649,$91DB49,GFX_Sprite_SquirtGunWalrus,GFX_Sprite_SquirtGunWalrusEnd
	dl $91EBBE,$91F03E,GFX_Sprite_MovingGirderPlatform,GFX_Sprite_MovingGirderPlatformEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $91FC10,$91FF10,GFX_Sprite_GiantCageWeight,GFX_Sprite_GiantCageWeightEnd
else
	dl $91FC80,$91FF80,GFX_Sprite_GiantCageWeight,GFX_Sprite_GiantCageWeightEnd
endif
	dl $92F1A7,$92FAA7,GFX_Sprite_SmokePlatform,GFX_Sprite_SmokePlatformEnd
	dl $93CC5B,$93D85B,GFX_Sprite_FireBreath,GFX_Sprite_FireBreathEnd
	dl $93E24B,$93E44B,GFX_Sprite_PulleyZipline,GFX_Sprite_PulleyZiplineEnd
	dl $93E44B,$93EE4B,GFX_Sprite_PulleyLogPlatform,GFX_Sprite_PulleyLogPlatformEnd
	dl $93EE4B,$93F44B,GFX_Sprite_SpikedLog,GFX_Sprite_SpikedLogEnd
	dl $93F819,$93FC19,GFX_Sprite_ThinCrushingCastleWall,GFX_Sprite_ThinCrushingCastleWallEnd
	dl $94F3CD,$94F9CD,GFX_Sprite_Unknown3,GFX_Sprite_Unknown3End
	dl $95E51B,$95F91B,GFX_Sprite_PlankSpringboard,GFX_Sprite_PlankSpringboardEnd
	dl $9B8000,$9DC280,GFX_Sprite_Player,GFX_Sprite_PlayerEnd
	dl $9DF336,$9DFF36,GFX_Sprite_Unknown4,GFX_Sprite_Unknown4End
	dl $9EDC89,$9EE109,GFX_Sprite_Unknown5,GFX_Sprite_Unknown5End
	dl $9EF02A,$9EFE2A,GFX_Sprite_ThickCrushingCastleWall,GFX_Sprite_ThickCrushingCastleWallEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $9FFEAF,$9FFFAF,GFX_Sprite_Unknown6,GFX_Sprite_Unknown6End
else
	dl $9FFEA6,$9FFFA6,GFX_Sprite_Unknown6,GFX_Sprite_Unknown6End
endif

if !ROMVer&(!SGLGB_U2) != $00
	dl $80DF9C,$80E63C,GFX_Sprite_LargeNumbers,GFX_Sprite_LargeNumbersEnd
	dl $80E63C,$80E7EF,GFX_Sprite_GotAllMiceStarburst,GFX_Sprite_GotAllMiceStarburstEnd
else
	dl $80DFA6,$80E646,GFX_Sprite_LargeNumbers,GFX_Sprite_LargeNumbersEnd
	dl $80E646,$80E7F9,GFX_Sprite_GotAllMiceStarburst,GFX_Sprite_GotAllMiceStarburstEnd
endif
	dl $81913B,$81958C,GFX_Layer2_GameOverScreenCatShadow,GFX_Layer2_GameOverScreenCatShadowEnd
	dl $81ADA9,$81B65F,GFX_Sprite_Overworld,GFX_Sprite_OverworldEnd
	dl $81B65F,$81BF36,GFX_Sprite_MainFont,GFX_Sprite_MainFontEnd
	dl $81E209,$81F1D6,GFX_Sprite_SnowyCabins,GFX_Sprite_SnowyCabinsEnd
	dl $829759,$82A872,GFX_Sprite_SleepyRock,GFX_Sprite_SleepyRockEnd
	dl $82E501,$82EAF3,GFX_Sprite_GameOverScreen,GFX_Sprite_GameOverScreenEnd
	dl $838000,$83BCFD,GFX_Level_SnowyCabins,GFX_Level_SnowyCabinsEnd
	dl $848000,$8480CE,GFX_Sprite_ArrowCursor,GFX_Sprite_ArrowCursorEnd
	dl $84A8E0,$84F832,GFX_Layer2_Overworld,GFX_Layer2_OverworldEnd
	dl $85A894,$85ED9E,GFX_Level_GalacticalGalaxies,GFX_Level_GalacticalGalaxiesEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $85ED9E,$85FA97,GFX_LegalNoticeScreen,GFX_LegalNoticeScreenEnd
else
	dl $85ED9E,$85F8F3,GFX_LegalNoticeScreen,GFX_LegalNoticeScreenEnd
endif
	dl $868600,$869057,GFX_Sprite_GalacticalGalaxies,GFX_Sprite_GalacticalGalaxiesEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $86F457,$86FA3D,GFX_Layer1_AcclaimLogo,GFX_Layer1_AcclaimLogoEnd
else
	dl $86F457,$86FF6C,GFX_Layer1_SunsoftLogo,GFX_Layer1_SunsoftLogoEnd
endif
	dl $888000,$88BFF0,GFX_LayerX_Cutscenes1,GFX_LayerX_Cutscenes1End
	dl $89B04B,$89BC0F,GFX_Mode7_SwingingCage,GFX_Mode7_SwingingCageEnd
	dl $8B81BC,$8BB975,GFX_Level_FiestaCity,GFX_Level_FiestaCityEnd
	dl $8BB975,$8BDADB,GFX_Sprite_GalacticalGalaxiesBoss,GFX_Sprite_GalacticalGalaxiesBossEnd
	dl $8BF185,$8BFF09,GFX_Sprite_AncientKeep,GFX_Sprite_AncientKeepEnd
	dl $8C8E10,$8CBF45,GFX_Sprite_SurelyWoodBoss,GFX_Sprite_SurelyWoodBossEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $8CC553,$8CD2FF,GFX_Layer1_WarnerBrosLogo,GFX_Layer1_WarnerBrosLogoEnd
	dl $8DDC29,$8DF634,GFX_Sprite_CutsceneMice1,GFX_Sprite_CutsceneMice1End
else
	dl $8CC555,$8CD301,GFX_Layer1_WarnerBrosLogo,GFX_Layer1_WarnerBrosLogoEnd
	dl $8DDC11,$8DF61C,GFX_Sprite_CutsceneMice1,GFX_Sprite_CutsceneMice1End
endif
	dl $8E8000,$8EB82A,GFX_Layer1_TitleScreen,GFX_Layer1_TitleScreenEnd
	dl $8EBCDF,$8EC79D,GFX_Sprite_TitleScreenLogo,GFX_Sprite_TitleScreenLogoEnd
	dl $8F980C,$8FA2E1,GFX_Sprite_SurelyWood,GFX_Sprite_SurelyWoodEnd
	dl $8FCAE1,$8FDAB3,GFX_Sprite_YeOldeBounty,GFX_Sprite_YeOldeBountyEnd
	dl $8FE9B3,$8FEB51,GFX_BasicFont,GFX_BasicFontEnd
	dl $91B400,$91C649,GFX_Sprite_CutsceneSpeedyRunningTowardsScreen,GFX_Sprite_CutsceneSpeedyRunningTowardsScreenEnd
	dl $91DB49,$91EBBE,GFX_Sprite_ObnoxiousJackhammerCat,GFX_Sprite_ObnoxiousJackhammerCatEnd
	dl $928000,$92CABA,GFX_Level_SurelyWood,GFX_Level_SurelyWoodEnd
	dl $92CABA,$92F0E9,GFX_Sprite_YeOldeBountyBoss,GFX_Sprite_YeOldeBountyBossEnd
	dl $938240,$93CC5B,GFX_LayerX_Cutscenes2,GFX_LayerX_Cutscenes2End
	dl $93F44B,$93F819,GFX_Layer3_HUDAndText,GFX_Layer3_HUDAndTextEnd
	dl $948000,$948636,GFX_Layer1_Options,GFX_Layer1_OptionsEnd
	dl $948636,$94CE27,GFX_Level_AncientKeep,GFX_Level_AncientKeepEnd
	dl $94CE27,$94F3CD,GFX_Layer1_GameOverScreen,GFX_Layer1_GameOverScreenEnd
	dl $958000,$95BD94,GFX_Level_SleepyRock,GFX_Level_SleepyRockEnd
	dl $95CA55,$95E51B,GFX_Sprite_CutsceneMice2,GFX_Sprite_CutsceneMice2End
	dl $95F91B,$95FF78,GFX_Sprite_Global,GFX_Sprite_GlobalEnd
	dl $9DC280,$9DCF0D,GFX_LayerX_Cutscenes3,GFX_LayerX_Cutscenes3End
	dl $9E8000,$9EC4F1,GFX_Level_YeOldeBounty,GFX_Level_YeOldeBountyEnd
GFXPointersEnd:

;--------------------------------------------------------------------

TilemapPointersStart:
	dl $81A673,$81ABA9,DATA_81A673,DATA_81A673End
	dl $81F1D6,$81FD9D,DATA_81F1D6,DATA_81F1D6End
	dl $81FDC6,$81FEE9,DATA_81FDC6,DATA_81FDC6End
	dl $82A872,$82B70F,DATA_82A872,DATA_82A872End
	dl $82DCAD,$82E501,DATA_82DCAD,DATA_82DCADEnd
	dl $82F1E0,$82FDB4,DATA_82F1E0,DATA_82F1E0End
	dl $84F832,$84F9FD,DATA_84F832,DATA_84F832End
	dl $84F9FD,$84FB4B,DATA_84F9FD,DATA_84F9FDEnd
	dl $8781BA,$878CA7,DATA_8781BA,DATA_8781BAEnd
	dl $87EDF1,$87F9E5,DATA_87EDF1,DATA_87EDF1End
	dl $88E90E,$88EAB3,DATA_88E90E,DATA_88E90EEnd
	dl $88FCB3,$88FD4E,DATA_88FCB3,DATA_88FCB3End
	dl $89ED8F,$89F95A,DATA_89ED8F,DATA_89ED8FEnd
	dl $8AFE81,$8AFF7C,DATA_8AFE81,DATA_8AFE81End
	dl $8BDC49,$8BDC98,DATA_8BDC49,DATA_8BDC49End
	dl $8BDC98,$8BDEC5,DATA_8BDC98,DATA_8BDC98End
	dl $8BDEC5,$8BE085,DATA_8BDEC5,DATA_8BDEC5End
	dl $8BE085,$8BE1DB,DATA_8BE085,DATA_8BE085End
	dl $8BE1DB,$8BE325,DATA_8BE1DB,DATA_8BE1DBEnd
	dl $8BE325,$8BE4C6,DATA_8BE325,DATA_8BE325End
	dl $8BE4C6,$8BE6B1,DATA_8BE4C6,DATA_8BE4C6End
	dl $8BE6B1,$8BE8D6,DATA_8BE6B1,DATA_8BE6B1End
	dl $8CBF45,$8CC1C4,TM_Layer1_IntroCutscene2CatShadow,TM_Layer1_IntroCutscene2CatShadowEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $8CD2FF,$8CD45D,TM_Layer1_WarnerBrosLogo,TM_Layer1_WarnerBrosLogoEnd
	dl $8CF0CE,$8CF14B,DATA_8CF0D4,DATA_8CF0D4End
	dl $8CF14B,$8CF285,DATA_8CF151,DATA_8CF151End
	dl $8CF285,$8CF2DC,DATA_8CF28B,DATA_8CF28BEnd
	dl $8CF2DC,$8CF32D,DATA_8CF2E2,DATA_8CF2E2End
	dl $8CF32D,$8CF38C,DATA_8CF333,DATA_8CF333End
	dl $8CF38C,$8CF400,DATA_8CF392,DATA_8CF392End
	dl $8CF400,$8CF48A,DATA_8CF406,DATA_8CF406End
	dl $8CF48A,$8CF50A,DATA_8CF490,DATA_8CF490End
	dl $8CF50A,$8CF5C9,DATA_8CF510,DATA_8CF510End
	dl $8CF5C9,$8CF61C,DATA_8CF5CF,DATA_8CF5CFEnd
	dl $8DF634,$8DF8FD,TM_Layer1_LegalNoticeScreen,TM_Layer1_LegalNoticeScreenEnd
else
	dl $8CD301,$8CD45F,TM_Layer1_WarnerBrosLogo,TM_Layer1_WarnerBrosLogoEnd
	dl $8CF0D4,$8CF151,DATA_8CF0D4,DATA_8CF0D4End
	dl $8CF151,$8CF28B,DATA_8CF151,DATA_8CF151End
	dl $8CF28B,$8CF2E2,DATA_8CF28B,DATA_8CF28BEnd
	dl $8CF2E2,$8CF333,DATA_8CF2E2,DATA_8CF2E2End
	dl $8CF333,$8CF392,DATA_8CF333,DATA_8CF333End
	dl $8CF392,$8CF406,DATA_8CF392,DATA_8CF392End
	dl $8CF406,$8CF490,DATA_8CF406,DATA_8CF406End
	dl $8CF490,$8CF510,DATA_8CF490,DATA_8CF490End
	dl $8CF510,$8CF5CF,DATA_8CF510,DATA_8CF510End
	dl $8CF5CF,$8CF622,DATA_8CF5CF,DATA_8CF5CFEnd
	dl $8CFD22,$8CFF6A,TM_Layer1_LegalNoticeScreen,TM_Layer1_LegalNoticeScreenEnd
endif
	dl $8EB82A,$8EBCDF,DATA_8EB82A,DATA_8EB82AEnd
	dl $8EE7A1,$8EE8BF,DATA_8EE7A1,DATA_8EE7A1End
	dl $8EE8BF,$8EE98B,DATA_8EE8BF,DATA_8EE8BFEnd
	dl $8EE98B,$8EE9E3,DATA_8EE98B,DATA_8EE98BEnd
	dl $8EE9E3,$8EEA37,DATA_8EE9E3,DATA_8EE9E3End
	dl $8EEA37,$8EEA8E,DATA_8EEA37,DATA_8EEA37End
	dl $8EEA8E,$8EEAE5,DATA_8EEA8E,DATA_8EEA8EEnd
	dl $8EEAE5,$8EEBAB,DATA_8EEAE5,DATA_8EEAE5End
	dl $8EEBAB,$8EEBEC,DATA_8EEBAB,DATA_8EEBABEnd
	dl $8EEBEC,$8EEC4B,DATA_8EEBEC,DATA_8EEBECEnd
	dl $8EEC4B,$8EEC9E,DATA_8EEC4B,DATA_8EEC4BEnd
	dl $8EEC9E,$8EED59,DATA_8EEC9E,DATA_8EEC9EEnd
	dl $8EED59,$8EEE4C,DATA_8EED59,DATA_8EED59End
	dl $8EEE4C,$8EEED6,DATA_8EEE4C,DATA_8EEE4CEnd
	dl $8EEED6,$8EEF56,DATA_8EEED6,DATA_8EEED6End
	dl $8EEF56,$8EEFCE,DATA_8EEF56,DATA_8EEF56End
	dl $8EEFCE,$8EF044,DATA_8EEFCE,DATA_8EEFCEEnd
	dl $8EF044,$8EF0C2,DATA_8EF044,DATA_8EF044End
	dl $8EF0C2,$8EF136,DATA_8EF0C2,DATA_8EF0C2End
	dl $8EF136,$8EF236,DATA_8EF136,DATA_8EF136End
	dl $8EF236,$8EF299,DATA_8EF236,DATA_8EF236End
	dl $91F78E,$91F887,DATA_91F78E,DATA_91F78EEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $91FB22,$91FC10,TM_Layer1_AcclaimLogo,TM_Layer1_AcclaimLogoEnd
else
	dl $91FB22,$91FC80,TM_Layer1_SunsoftLogo,TM_Layer1_SunsoftLogoEnd
endif
	dl $92F0E9,$92F1A7,DATA_92F0E9,DATA_92F0E9End
	dl $93D85B,$93E24B,DATA_93D85B,DATA_93D85BEnd
	dl $95BD94,$95CA55,DATA_95BD94,DATA_95BD94End
	dl $9DE949,$9DF336,DATA_9DE949,DATA_9DE949End
	dl $9ED98B,$9EDC89,DATA_9ED98B,DATA_9ED98BEnd
	dl $9EEE2D,$9EF02A,DATA_9EEE2D,DATA_9EEE2DEnd
TilemapPointersEnd:

;--------------------------------------------------------------------

PalettePointersStart:
if !ROMVer&(!SGLGB_U2) != $00
	dl $80D3C9,$80D4C9,DATA_80D3D3,DATA_80D3D3End
	dl $80D4C9,$80D4D7,DATA_80D4D3,DATA_80D4D3End
	dl $80E946,$80EB46,DATA_80E950,DATA_80E950End
	dl $80EB46,$80EBC6,DATA_80EB50,DATA_80EB50End
else
	dl $80D3D3,$80D4D3,DATA_80D3D3,DATA_80D3D3End
	dl $80D4D3,$80D4E1,DATA_80D4D3,DATA_80D4D3End
	dl $80E950,$80EB50,DATA_80E950,DATA_80E950End
	dl $80EB50,$80EBD0,DATA_80EB50,DATA_80EB50End
endif
	dl $818DC0,$818FC0,DATA_818DC0,DATA_818DC0End
	dl $81A067,$81A167,DATA_81A067,DATA_81A067End
	dl $81ABA9,$81ADA9,DATA_81ABA9,DATA_81ABA9End
	dl $81D9F6,$81DBF6,DATA_81D9F6,DATA_81D9F6End
	dl $87C772,$87C972,DATA_87C772,DATA_87C772End
	dl $87F9E5,$87FAE5,DATA_87F9E5,DATA_87F9E5End
	dl $8A8A80,$8A8B80,DATA_8A8A80,DATA_8A8A80End
	dl $8A8B80,$8A8C80,DATA_8A8B80,DATA_8A8B80End
	dl $8A8C80,$8A8D80,DATA_8A8C80,DATA_8A8C80End
	dl $8A8D80,$8A8E80,DATA_8A8D80,DATA_8A8D80End
	dl $8A8E80,$8A8F80,DATA_8A8E80,DATA_8A8E80End
	dl $8A8F80,$8A9080,DATA_8A8F80,DATA_8A8F80End
	dl $8A9080,$8A9180,DATA_8A9080,DATA_8A9080End
	dl $8A9180,$8A9280,DATA_8A9180,DATA_8A9180End
	dl $8A9280,$8A9380,DATA_8A9280,DATA_8A9280End
	dl $8A9380,$8A9480,DATA_8A9380,DATA_8A9380End
	dl $8A9480,$8A9580,DATA_8A9480,DATA_8A9480End
	dl $8A9580,$8A9680,DATA_8A9580,DATA_8A9580End
	dl $8A9680,$8A9780,DATA_8A9680,DATA_8A9680End
	dl $8A9780,$8A9880,DATA_8A9780,DATA_8A9780End
	dl $8A9880,$8A9980,DATA_8A9880,DATA_8A9880End
	dl $8A9980,$8A9A80,DATA_8A9980,DATA_8A9980End
	dl $8A9A80,$8A9B80,DATA_8A9A80,DATA_8A9A80End
	dl $8A9B80,$8A9C80,DATA_8A9B80,DATA_8A9B80End
	dl $8A9C80,$8A9D80,DATA_8A9C80,DATA_8A9C80End
	dl $8A9D80,$8A9E80,DATA_8A9D80,DATA_8A9D80End
	dl $8A9E80,$8A9F80,DATA_8A9E80,DATA_8A9E80End
	dl $8A9F80,$8AA080,DATA_8A9F80,DATA_8A9F80End
	dl $8AA080,$8AA180,DATA_8AA080,DATA_8AA080End
	dl $8AA180,$8AA280,DATA_8AA180,DATA_8AA180End
	dl $8AA280,$8AA294,DATA_8AA280,DATA_8AA280End
	dl $8AA294,$8AA2A4,DATA_8AA294,DATA_8AA294End
	dl $8AA2A4,$8AA2B4,DATA_8AA2A4,DATA_8AA2A4End
	dl $8AA2B4,$8AA2C4,DATA_8AA2B4,DATA_8AA2B4End
	dl $8AA2C4,$8AA2CC,DATA_8AA2C4,DATA_8AA2C4End
	dl $8AA2CC,$8AA2D4,DATA_8AA2CC,DATA_8AA2CCEnd
	dl $8BEF85,$8BF085,DATA_8BEF85,DATA_8BEF85End
	dl $8BF085,$8BF185,DATA_8BF085,DATA_8BF085End
if !ROMVer&(!SGLGB_U2) != $00
	dl $8CD45D,$8CD55D,DATA_8CD45F,DATA_8CD45FEnd
else
	dl $8CD45F,$8CD55F,DATA_8CD45F,DATA_8CD45FEnd
endif
	dl $8EF299,$8EF399,DATA_8EF299,DATA_8EF299End
	dl $8EF399,$8EF499,DATA_8EF399,DATA_8EF399End
	dl $8EF499,$8EF599,DATA_8EF499,DATA_8EF499End
	dl $8EF599,$8EF699,DATA_8EF599,DATA_8EF599End
	dl $8EF699,$8EF799,DATA_8EF699,DATA_8EF699End
	dl $8EF799,$8EF899,DATA_8EF799,DATA_8EF799End
	dl $8FFE05,$8FFF05,DATA_8FFE05,DATA_8FFE05End
	dl $93FDA4,$93FEA4,DATA_93FDA4,DATA_93FDA4End
PalettePointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	dl $81FF57,$81FF8B,LD_Sprite_SurelyWoodBoss,LD_Sprite_SurelyWoodBossEnd
	dl $82BA0F,$82D765,LD_Level_SurelyWoodP2,LD_Level_SurelyWoodP2End
	dl $82EFF3,$82F1E0,LD_Sprite_AncientKeepP2,LD_Sprite_AncientKeepP2End
	dl $83BCFD,$83E67F,LD_Level_AncientKeepP2,LD_Level_AncientKeepP2End
	dl $83FB7F,$83FF05,LD_Level_SurelyWoodBoss,LD_Level_SurelyWoodBossEnd
	dl $8480CE,$849171,LD_Level_YeOldeBountyP1,LD_Level_YeOldeBountyP1End
	dl $849171,$84A8E0,LD_Level_YeOldeBountyP2,LD_Level_YeOldeBountyP2End
	dl $878000,$8781BA,LD_Sprite_YeOldeBountyP1,LD_Sprite_YeOldeBountyP1End
	dl $8790A7,$87C266,LD_Level_AncientKeepP1,LD_Level_AncientKeepP1End
if !ROMVer&(!SGLGB_U2) != $00
	dl $87FAE5,$87FDC3,LD_Sprite_SleepyRockP1,LD_Sprite_SleepyRockP1End
else
	dl $87FAE5,$87FDC0,LD_Sprite_SleepyRockP1,LD_Sprite_SleepyRockP1End
endif
	dl $88BFF0,$88CDA6,LD_Level_YeOldeBountyP3,LD_Level_YeOldeBountyP3End
	dl $88CDA6,$88E90E,LD_Level_FiestaCityP1,LD_Level_FiestaCityP1End
	dl $898000,$899E4B,LD_Level_SnowyCabinsP1,LD_Level_SnowyCabinsP1End
	dl $89F95A,$89FA4C,LD_Level_YeOldeBountyBoss,LD_Level_YeOldeBountyBossEnd
	dl $89FECC,$89FEFA,LD_Sprite_YeOldeBountyBoss,LD_Sprite_YeOldeBountyBossEnd
	dl $8AA2D4,$8AD2FF,LD_Level_GalacticalGalaxiesP1,LD_Level_GalacticalGalaxiesP1End
	dl $8AD2FF,$8ADA04,LD_Level_SaveTheMice,LD_Level_SaveTheMiceEnd
	dl $8AFE04,$8AFE81,LD_Sprite_SaveTheMice,LD_Sprite_SaveTheMiceEnd
if !ROMVer&(!SGLGB_U2) != $00
	dl $8CF804,$8CF934,LD_Sprite_YeOldeBountyP3,LD_Sprite_YeOldeBountyP3End
	dl $8CF934,$8CFB36,LD_Sprite_SurelyWoodP2,LD_Sprite_SurelyWoodP2End
	dl $8CFB36,$8CFD1C,LD_Sprite_GalacticalGalaxiesP2,LD_Sprite_GalacticalGalaxiesP2End
else
	dl $8CF80A,$8CF93A,LD_Sprite_YeOldeBountyP3,LD_Sprite_YeOldeBountyP3End
	dl $8CF93A,$8CFB3C,LD_Sprite_SurelyWoodP2,LD_Sprite_SurelyWoodP2End
	dl $8CFB3C,$8CFD22,LD_Sprite_GalacticalGalaxiesP2,LD_Sprite_GalacticalGalaxiesP2End
endif
	dl $8EFD40,$8EFD68,LD_Sprite_GalacticalGalaxiesBoss,LD_Sprite_GalacticalGalaxiesBossEnd
	dl $8EFD68,$8EFEFA,LD_Sprite_SurelyWoodP3,LD_Sprite_SurelyWoodP3End
	dl $908000,$90B881,LD_Level_SleepyRockP2,LD_Level_SleepyRockP2End
	dl $90B881,$90DAE1,LD_Level_SurelyWoodP1,LD_Level_SurelyWoodP1End
	dl $90DAE1,$90FD0B,LD_Level_SnowyCabinsP2,LD_Level_SnowyCabinsP2End
	dl $90FD0B,$90FEAB,LD_Sprite_FiestaCityP1,LD_Sprite_FiestaCityP1End
	dl $91F887,$91FB22,LD_Level_GalacticalGalaxiesBoss,LD_Level_GalacticalGalaxiesBossEnd
	dl $92FAF7,$92FCE0,LD_Sprite_SnowyCabinsP1,LD_Sprite_SnowyCabinsP1End
	dl $92FCE0,$92FF12,LD_Sprite_FiestaCityP2,LD_Sprite_FiestaCityP2End
	dl $93FC19,$93FDA4,LD_Sprite_SnowyCabinsP2,LD_Sprite_SnowyCabinsP2End
	dl $94F9CD,$94FC06,LD_Sprite_GalacticalGalaxiesP1,LD_Sprite_GalacticalGalaxiesP1End
	dl $94FC06,$94FE34,LD_Sprite_SleepyRockP2,LD_Sprite_SleepyRockP2End
	dl $9DCF0D,$9DE949,LD_Level_SurelyWoodP3,LD_Level_SurelyWoodP3End
	dl $9EC4F1,$9ED98B,LD_Level_FiestaCityP2,LD_Level_FiestaCityP2End
	dl $9EFE2A,$9EFFCE,LD_Sprite_SurelyWoodP1,LD_Sprite_SurelyWoodP1End
if !ROMVer&(!SGLGB_U2) != $00
	dl $9F8000,$9FB730,LD_Level_GalacticalGalaxiesP2,LD_Level_GalacticalGalaxiesP2End
	dl $9FB730,$9FF712,LD_Level_SleepyRockP1,LD_Level_SleepyRockP1End
	dl $9FF712,$9FF914,LD_Sprite_YeOldeBountyP2,LD_Sprite_YeOldeBountyP2End
	dl $9FF914,$9FFB29,LD_Sprite_AncientKeepP1,LD_Sprite_AncientKeepP1End
else
	dl $9F8000,$9FB72A,LD_Level_GalacticalGalaxiesP2,LD_Level_GalacticalGalaxiesP2End
	dl $9FB72A,$9FF709,LD_Level_SleepyRockP1,LD_Level_SleepyRockP1End
	dl $9FF709,$9FF90B,LD_Sprite_YeOldeBountyP2,LD_Sprite_YeOldeBountyP2End
	dl $9FF90B,$9FFB20,LD_Sprite_AncientKeepP1,LD_Sprite_AncientKeepP1End
endif
LevelDataPointersEnd:

;--------------------------------------------------------------------

AudioBankPointersStart:
	dl $169E22,$16BB27,YeOldeBountyBank,YeOldeBountyBankEnd
	dl $16BBFC,$16CD78,IntroBank,IntroBankEnd
	dl $16CE64,$16E88E,SleepyRockBank,SleepyRockBankEnd
	dl $16E9BC,$16FFA0,GalacticalGalaxiesBank,GalacticalGalaxiesBankEnd
	dl $19F190,$19FFB0,FiestaCityBank,FiestaCityBankEnd
	dl $1A8129,$1A97B5,SurelyWoodBank,SurelyWoodBankEnd
	dl $1A98E7,$1AD0C2,MiscBank,MiscBankEnd
	dl $1AD1F2,$1AE6B1,AncientKeepBank,AncientKeepBankEnd
	dl $1AE7A6,$1AF73C,SnowyCabinsBank,SnowyCabinsBankEnd
AudioBankPointersEnd:

;--------------------------------------------------------------------

BRRSamplesPointersStart:
	dl $178000,$1782F4,BRRSample00,BRRSample00End
	dl $1782F4,$178936,BRRSample01,BRRSample01End
	dl $178936,$179131,BRRSample02,BRRSample02End
	dl $179131,$179962,BRRSample03,BRRSample03End
	dl $179962,$17A7F9,BRRSample04,BRRSample04End
	dl $17A7F9,$17B165,BRRSample05,BRRSample05End
	dl $17B165,$17BD11,BRRSample06,BRRSample06End
	dl $17BD11,$17C4DF,BRRSample07,BRRSample07End
	dl $17C4DF,$17CC2F,BRRSample08,BRRSample08End
	dl $17CC2F,$17D81A,BRRSample09,BRRSample09End
	dl $17D81A,$17E5D0,BRRSample0A,BRRSample0AEnd
	dl $17E5D0,$17EDE6,BRRSample0B,BRRSample0BEnd
	dl $17EDE6,$17F60E,BRRSample0C,BRRSample0CEnd
	dl $17F60E,$17F9D1,BRRSample0D,BRRSample0DEnd
	dl $17F9D1,$17FE09,BRRSample0E,BRRSample0EEnd
	dl $17FE09,$17FFB9,BRRSample0F,BRRSample0FEnd
	dl $188000,$18837B,BRRSample10,BRRSample10End
	dl $18837B,$188948,BRRSample11,BRRSample11End
	dl $188948,$189A1F,BRRSample12,BRRSample12End
	dl $189A1F,$18A115,BRRSample13,BRRSample13End
	dl $18A115,$18AB2C,BRRSample14,BRRSample14End
	dl $18AB2C,$18BA02,BRRSample15,BRRSample15End
	dl $18BA02,$18C00E,BRRSample16,BRRSample16End
	dl $18C00E,$18C5ED,BRRSample17,BRRSample17End
	dl $18C5ED,$18CF50,BRRSample18,BRRSample18End
	dl $18CF50,$18D71E,BRRSample19,BRRSample19End
	dl $18D71E,$18E081,BRRSample1A,BRRSample1AEnd
	dl $18E081,$18E5A3,BRRSample1B,BRRSample1BEnd
	dl $18E5A3,$18EC6C,BRRSample1C,BRRSample1CEnd
	dl $18EC6C,$18F230,BRRSample1D,BRRSample1DEnd
	dl $18F230,$18F6EF,BRRSample1E,BRRSample1EEnd
	dl $18F6EF,$18FBFF,BRRSample1F,BRRSample1FEnd
	dl $18FBFF,$18FFF8,BRRSample20,BRRSample20End
	dl $198000,$1981D4,BRRSample21,BRRSample21End
	dl $1981D4,$19868A,BRRSample22,BRRSample22End
	dl $19868A,$199059,BRRSample23,BRRSample23End
	dl $199059,$19962F,BRRSample24,BRRSample24End
	dl $19962F,$19A1B7,BRRSample25,BRRSample25End
	dl $19A1B7,$19A721,BRRSample26,BRRSample26End
	dl $19A721,$19AA1E,BRRSample27,BRRSample27End
	dl $19AA1E,$19B02A,BRRSample28,BRRSample28End
	dl $19B02A,$19B813,BRRSample29,BRRSample29End
	dl $19B813,$19BE55,BRRSample2A,BRRSample2AEnd
	dl $19BE55,$19C593,BRRSample2B,BRRSample2BEnd
	dl $19C593,$19CEFF,BRRSample2C,BRRSample2CEnd
	dl $19CEFF,$19D577,BRRSample2D,BRRSample2DEnd
	dl $19D577,$19DB83,BRRSample2E,BRRSample2EEnd
	dl $19DB83,$19E495,BRRSample2F,BRRSample2FEnd
	dl $19E495,$19EA98,BRRSample30,BRRSample30End
	dl $19EA98,$19F09B,BRRSample31,BRRSample31End
	dl $1AF73C,$1AFC55,BRRSample32,BRRSample32End
	dl $1AFC55,$1AFF49,BRRSample33,BRRSample33End
BRRSamplesPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_SleepyRockPlatforms:
	db "GFX_Sprite_SleepyRockPlatforms.bin"
GFX_Sprite_SleepyRockPlatformsEnd:
GFX_Sprite_SleepyRockBridge:
	db "GFX_Sprite_SleepyRockBridge.bin"
GFX_Sprite_SleepyRockBridgeEnd:
GFX_Sprite_BootLauncher:
	db "GFX_Sprite_BootLauncher.bin"
GFX_Sprite_BootLauncherEnd:
GFX_Sprite_Unknown1:
	db "GFX_Sprite_Unknown1.bin"
GFX_Sprite_Unknown1End:
GFX_Sprite_Button:
	db "GFX_Sprite_Button.bin"
GFX_Sprite_ButtonEnd:
GFX_Sprite_SleepyRockTunnelMask:
	db "GFX_Sprite_SleepyRockTunnelMask.bin"
GFX_Sprite_SleepyRockTunnelMaskEnd:
GFX_Sprite_ForestHouseBackwall:
	db "GFX_Sprite_ForestHouseBackwall.bin"
GFX_Sprite_ForestHouseBackwallEnd:
GFX_Sprite_KillerGrapes:
	db "GFX_Sprite_KillerGrapes.bin"
GFX_Sprite_KillerGrapesEnd:
GFX_Sprite_MushroomSpring:
	db "GFX_Sprite_MushroomSpring.bin"
GFX_Sprite_MushroomSpringEnd:
GFX_Sprite_Unknown2:
	db "GFX_Sprite_Unknown2.bin"
GFX_Sprite_Unknown2End:
GFX_Sprite_EvilSnowman:
	db "GFX_Sprite_EvilSnowman.bin"
GFX_Sprite_EvilSnowmanEnd:
GFX_Sprite_Cheese:
	db "GFX_Sprite_Cheese.bin"
GFX_Sprite_CheeseEnd:
GFX_Sprite_Barrel:
	db "GFX_Sprite_Barrel.bin"
GFX_Sprite_BarrelEnd:
GFX_Sprite_TriggerSign:
	db "GFX_Sprite_TriggerSign.bin"
GFX_Sprite_TriggerSignEnd:
GFX_Sprite_Bat:
	db "GFX_Sprite_Bat.bin"
GFX_Sprite_BatEnd:
GFX_Sprite_Wind:
	db "GFX_Sprite_Wind.bin"
GFX_Sprite_WindEnd:
GFX_Sprite_Mousetrap:
	db "GFX_Sprite_Mousetrap.bin"
GFX_Sprite_MousetrapEnd:
GFX_Sprite_PunchingRobot:
	db "GFX_Sprite_PunchingRobot.bin"
GFX_Sprite_PunchingRobotEnd:
GFX_Sprite_Cauldron:
	db "GFX_Sprite_Cauldron.bin"
GFX_Sprite_CauldronEnd:
GFX_Sprite_CapturedMouse:
	db "GFX_Sprite_CapturedMouse.bin"
GFX_Sprite_CapturedMouseEnd:
GFX_Sprite_PopgunBullet:
	db "GFX_Sprite_PopgunBullet.bin"
GFX_Sprite_PopgunBulletEnd:
GFX_Sprite_CastleRisingPlatform:
	db "GFX_Sprite_CastleRisingPlatform.bin"
GFX_Sprite_CastleRisingPlatformEnd:
GFX_Sprite_CastleCat:
	db "GFX_Sprite_CastleCat.bin"
GFX_Sprite_CastleCatEnd:
GFX_Sprite_DroppedBarrel:
	db "GFX_Sprite_DroppedBarrel.bin"
GFX_Sprite_DroppedBarrelEnd:
GFX_Sprite_HeadlessSnowman:
	db "GFX_Sprite_HeadlessSnowman.bin"
GFX_Sprite_HeadlessSnowmanEnd:
GFX_Sprite_BlackBird:
	db "GFX_Sprite_BlackBird.bin"
GFX_Sprite_BlackBirdEnd:
GFX_Sprite_BarrelDroppingCat:
	db "GFX_Sprite_BarrelDroppingCat.bin"
GFX_Sprite_BarrelDroppingCatEnd:
GFX_Sprite_WheeledRobot:
	db "GFX_Sprite_WheeledRobot.bin"
GFX_Sprite_WheeledRobotEnd:
GFX_PulleyPlankPlatform:
	db "GFX_Sprite_PulleyPlankPlatform.bin"
GFX_PulleyPlankPlatformEnd:
GFX_AnimatedBubblingGooTiles:
	db "GFX_AnimatedBubblingGooTiles.bin"
GFX_AnimatedBubblingGooTilesEnd:
GFX_AnimatedFGCandleFlameTiles:
	db "GFX_AnimatedFGCandleFlameTiles.bin"
GFX_AnimatedFGCandleFlameTilesEnd:
GFX_AnimatedCandlelabraFlameTiles:
	db "GFX_AnimatedCandlelabraFlameTiles.bin"
GFX_AnimatedCandlelabraFlameTilesEnd:
GFX_AnimatedVentilationFanTiles:
	db "GFX_AnimatedVentilationFanTiles.bin"
GFX_AnimatedVentilationFanTilesEnd:
GFX_AnimatedTeleporterTiles:
	db "GFX_AnimatedTeleporterTiles.bin"
GFX_AnimatedTeleporterTilesEnd:
GFX_AnimatedStaticTVTiles:
	db "GFX_AnimatedStaticTVTiles.bin"
GFX_AnimatedStaticTVTilesEnd:
GFX_AnimatedPirateFlagTiles:
	db "GFX_AnimatedPirateFlagTiles.bin"
GFX_AnimatedPirateFlagTilesEnd:
GFX_Sprite_SquirtGunWalrus:
	db "GFX_Sprite_SquirtGunWalrus.bin"
GFX_Sprite_SquirtGunWalrusEnd:
GFX_Sprite_MovingGirderPlatform:
	db "GFX_Sprite_MovingGirderPlatform.bin"
GFX_Sprite_MovingGirderPlatformEnd:
GFX_Sprite_GiantCageWeight:
	db "GFX_Sprite_GiantCageWeight.bin"
GFX_Sprite_GiantCageWeightEnd:
GFX_Sprite_SmokePlatform:
	db "GFX_Sprite_SmokePlatform.bin"
GFX_Sprite_SmokePlatformEnd:
GFX_Sprite_FireBreath:
	db "GFX_Sprite_FireBreath.bin"
GFX_Sprite_FireBreathEnd:
GFX_Sprite_PulleyZipline:
	db "GFX_Sprite_PulleyZipline.bin"
GFX_Sprite_PulleyZiplineEnd:
GFX_Sprite_PulleyLogPlatform:
	db "GFX_Sprite_PulleyLogPlatform.bin"
GFX_Sprite_PulleyLogPlatformEnd:
GFX_Sprite_SpikedLog:
	db "GFX_Sprite_SpikedLog.bin"
GFX_Sprite_SpikedLogEnd:
GFX_Sprite_ThinCrushingCastleWall:
	db "GFX_Sprite_ThinCrushingCastleWall.bin"
GFX_Sprite_ThinCrushingCastleWallEnd:
GFX_Sprite_Unknown3:
	db "GFX_Sprite_Unknown3.bin"
GFX_Sprite_Unknown3End:
GFX_Sprite_PlankSpringboard:
	db "GFX_Sprite_PlankSpringboard.bin"
GFX_Sprite_PlankSpringboardEnd:
GFX_Sprite_Player:
	db "GFX_Sprite_Player.bin"
GFX_Sprite_PlayerEnd:
GFX_Sprite_Unknown4:
	db "GFX_Sprite_Unknown4.bin"
GFX_Sprite_Unknown4End:
GFX_Sprite_Unknown5:
	db "GFX_Sprite_Unknown5.bin"
GFX_Sprite_Unknown5End:
GFX_Sprite_ThickCrushingCastleWall:
	db "GFX_Sprite_ThickCrushingCastleWall.bin"
GFX_Sprite_ThickCrushingCastleWallEnd:
GFX_Sprite_Unknown6:
	db "GFX_Sprite_Unknown6.bin"
GFX_Sprite_Unknown6End:

GFX_Sprite_LargeNumbers:
	db "GFX_Sprite_LargeNumbers.rnc"
GFX_Sprite_LargeNumbersEnd:
GFX_Sprite_GotAllMiceStarburst:
	db "GFX_Sprite_GotAllMiceStarburst.rnc"
GFX_Sprite_GotAllMiceStarburstEnd:
GFX_Layer2_GameOverScreenCatShadow:
	db "GFX_Layer2_GameOverScreenCatShadow.rnc"
GFX_Layer2_GameOverScreenCatShadowEnd:
GFX_Sprite_Overworld:
	db "GFX_Sprite_Overworld.rnc"
GFX_Sprite_OverworldEnd:
GFX_Sprite_MainFont:
	db "GFX_Sprite_MainFont.rnc"
GFX_Sprite_MainFontEnd:
GFX_Sprite_SnowyCabins:
	db "GFX_Sprite_SnowyCabins.rnc"
GFX_Sprite_SnowyCabinsEnd:
GFX_Sprite_SleepyRock:
	db "GFX_Sprite_SleepyRock.rnc"
GFX_Sprite_SleepyRockEnd:
GFX_Sprite_GameOverScreen:
	db "GFX_Sprite_GameOverScreen.rnc"
GFX_Sprite_GameOverScreenEnd:
GFX_Level_SnowyCabins:
	db "GFX_Level_SnowyCabins.rnc"
GFX_Level_SnowyCabinsEnd:
GFX_Sprite_ArrowCursor:
	db "GFX_Sprite_ArrowCursor.rnc"
GFX_Sprite_ArrowCursorEnd:
GFX_Layer2_Overworld:
	db "GFX_Layer2_Overworld.rnc"
GFX_Layer2_OverworldEnd:
GFX_Level_GalacticalGalaxies:
	db "GFX_Level_GalacticalGalaxies.rnc"
GFX_Level_GalacticalGalaxiesEnd:
if !ROMVer&(!SGLGB_U2) != $00
GFX_LegalNoticeScreen:
	db "GFX_LegalNoticeScreen_SGLGB_U2.rnc"
GFX_LegalNoticeScreenEnd:
else
GFX_LegalNoticeScreen:
	db "GFX_LegalNoticeScreen_SGLGB_U1.rnc"
GFX_LegalNoticeScreenEnd:
endif
GFX_Sprite_GalacticalGalaxies:
	db "GFX_Sprite_GalacticalGalaxies.rnc"
GFX_Sprite_GalacticalGalaxiesEnd:
if !ROMVer&(!SGLGB_U2) != $00
GFX_Layer1_AcclaimLogo:
	db "GFX_Layer1_AcclaimLogo.rnc"
GFX_Layer1_AcclaimLogoEnd:
else
GFX_Layer1_SunsoftLogo:
	db "GFX_Layer1_SunsoftLogo.rnc"
GFX_Layer1_SunsoftLogoEnd:
endif
GFX_LayerX_Cutscenes1:
	db "GFX_LayerX_Cutscenes1.rnc"
GFX_LayerX_Cutscenes1End:
GFX_Mode7_SwingingCage:
	db "GFX_Mode7_SwingingCage.rnc"
GFX_Mode7_SwingingCageEnd:
GFX_Level_FiestaCity:
	db "GFX_Level_FiestaCity.rnc"
GFX_Level_FiestaCityEnd:
GFX_Sprite_GalacticalGalaxiesBoss:
	db "GFX_Sprite_GalacticalGalaxiesBoss.rnc"
GFX_Sprite_GalacticalGalaxiesBossEnd:
GFX_Sprite_AncientKeep:
	db "GFX_Sprite_AncientKeep.rnc"
GFX_Sprite_AncientKeepEnd:
GFX_Sprite_SurelyWoodBoss:
	db "GFX_Sprite_SurelyWoodBoss.rnc"
GFX_Sprite_SurelyWoodBossEnd:
GFX_Layer1_WarnerBrosLogo:
	db "GFX_Layer1_WarnerBrosLogo.rnc"
GFX_Layer1_WarnerBrosLogoEnd:
GFX_Sprite_CutsceneMice1:
	db "GFX_Sprite_CutsceneMice1.rnc"
GFX_Sprite_CutsceneMice1End:
GFX_Layer1_TitleScreen:
	db "GFX_Layer1_TitleScreen.rnc"
GFX_Layer1_TitleScreenEnd:
GFX_Sprite_TitleScreenLogo:
	db "GFX_Sprite_TitleScreenLogo.rnc"
GFX_Sprite_TitleScreenLogoEnd:
GFX_Sprite_SurelyWood:
	db "GFX_Sprite_SurelyWood.rnc"
GFX_Sprite_SurelyWoodEnd:
GFX_Sprite_YeOldeBounty:
	db "GFX_Sprite_YeOldeBounty.rnc"
GFX_Sprite_YeOldeBountyEnd:
GFX_BasicFont:
	db "GFX_BasicFont.rnc"
GFX_BasicFontEnd:
GFX_Sprite_CutsceneSpeedyRunningTowardsScreen:
	db "GFX_Sprite_CutsceneSpeedyRunningTowardsScreen.rnc"
GFX_Sprite_CutsceneSpeedyRunningTowardsScreenEnd:
GFX_Sprite_ObnoxiousJackhammerCat:
	db "GFX_Sprite_ObnoxiousJackhammerCat.rnc"
GFX_Sprite_ObnoxiousJackhammerCatEnd:
GFX_Level_SurelyWood:
	db "GFX_Level_SurelyWood.rnc"
GFX_Level_SurelyWoodEnd:
GFX_Sprite_YeOldeBountyBoss:
	db "GFX_Sprite_YeOldeBountyBoss.rnc"
GFX_Sprite_YeOldeBountyBossEnd:
GFX_LayerX_Cutscenes2:
	db "GFX_LayerX_Cutscenes2.rnc"
GFX_LayerX_Cutscenes2End:
GFX_Layer3_HUDAndText:
	db "GFX_Layer3_HUDAndText.rnc"
GFX_Layer3_HUDAndTextEnd:
GFX_Layer1_Options:
	db "GFX_Layer1_Options.rnc"
GFX_Layer1_OptionsEnd:
GFX_Level_AncientKeep:
	db "GFX_Level_AncientKeep.rnc"
GFX_Level_AncientKeepEnd:
GFX_Layer1_GameOverScreen:
	db "GFX_Layer1_GameOverScreen.rnc"
GFX_Layer1_GameOverScreenEnd:
GFX_Level_SleepyRock:
	db "GFX_Level_SleepyRock.rnc"
GFX_Level_SleepyRockEnd:
GFX_Sprite_CutsceneMice2:
	db "GFX_Sprite_CutsceneMice2.rnc"
GFX_Sprite_CutsceneMice2End:
GFX_Sprite_Global:
	db "GFX_Sprite_Global.rnc"
GFX_Sprite_GlobalEnd:
GFX_LayerX_Cutscenes3:
	db "GFX_LayerX_Cutscenes3.rnc"
GFX_LayerX_Cutscenes3End:
GFX_Level_YeOldeBounty:
	db "GFX_Level_YeOldeBounty.rnc"
GFX_Level_YeOldeBountyEnd:

;--------------------------------------------------------------------

DATA_81A673:
	db "DATA_81A673.rnc"
DATA_81A673End:
DATA_81F1D6:
	db "DATA_81F1D6.rnc"
DATA_81F1D6End:
DATA_81FDC6:
	db "DATA_81FDC6.rnc"
DATA_81FDC6End:
DATA_82A872:
	db "DATA_82A872.rnc"
DATA_82A872End:
DATA_82DCAD:
	db "DATA_82DCAD.rnc"
DATA_82DCADEnd:
DATA_82F1E0:
	db "DATA_82F1E0.rnc"
DATA_82F1E0End:
DATA_84F832:
	db "DATA_84F832.rnc"
DATA_84F832End:
DATA_84F9FD:
	db "DATA_84F9FD.rnc"
DATA_84F9FDEnd:
DATA_8781BA:
	db "DATA_8781BA.rnc"
DATA_8781BAEnd:
DATA_87EDF1:
	db "DATA_87EDF1.rnc"
DATA_87EDF1End:
DATA_88E90E:
	db "DATA_88E90E.rnc"
DATA_88E90EEnd:
DATA_88FCB3:
	db "DATA_88FCB3.rnc"
DATA_88FCB3End:
DATA_89ED8F:
	db "DATA_89ED8F.rnc"
DATA_89ED8FEnd:
DATA_8AFE81:
	db "DATA_8AFE81.rnc"
DATA_8AFE81End:
DATA_8BDC49:
	db "DATA_8BDC49.rnc"
DATA_8BDC49End:
DATA_8BDC98:
	db "DATA_8BDC98.rnc"
DATA_8BDC98End:
DATA_8BDEC5:
	db "DATA_8BDEC5.rnc"
DATA_8BDEC5End:
DATA_8BE085:
	db "DATA_8BE085.rnc"
DATA_8BE085End:
DATA_8BE1DB:
	db "DATA_8BE1DB.rnc"
DATA_8BE1DBEnd:
DATA_8BE325:
	db "DATA_8BE325.rnc"
DATA_8BE325End:
DATA_8BE4C6:
	db "DATA_8BE4C6.rnc"
DATA_8BE4C6End:
DATA_8BE6B1:
	db "DATA_8BE6B1.rnc"
DATA_8BE6B1End:
TM_Layer1_IntroCutscene2CatShadow:
	db "Layer1_IntroCutscene2CatShadow.rnc"
TM_Layer1_IntroCutscene2CatShadowEnd:
TM_Layer1_WarnerBrosLogo:
	db "Layer1_WarnerBrosLogo.rnc"
TM_Layer1_WarnerBrosLogoEnd:
DATA_8CF0D4:
	db "DATA_8CF0D4.rnc"
DATA_8CF0D4End:
DATA_8CF151:
	db "DATA_8CF151.rnc"
DATA_8CF151End:
DATA_8CF28B:
	db "DATA_8CF28B.rnc"
DATA_8CF28BEnd:
DATA_8CF2E2:
	db "DATA_8CF2E2.rnc"
DATA_8CF2E2End:
DATA_8CF333:
	db "DATA_8CF333.rnc"
DATA_8CF333End:
DATA_8CF392:
	db "DATA_8CF392.rnc"
DATA_8CF392End:
DATA_8CF406:
	db "DATA_8CF406.rnc"
DATA_8CF406End:
DATA_8CF490:
	db "DATA_8CF490.rnc"
DATA_8CF490End:
DATA_8CF510:
	db "DATA_8CF510.rnc"
DATA_8CF510End:
DATA_8CF5CF:
	db "DATA_8CF5CF.rnc"
DATA_8CF5CFEnd:
if !ROMVer&(!SGLGB_U2) != $00
TM_Layer1_LegalNoticeScreen:
	db "Layer1_LegalNoticeScreen_SGLGB_U2.rnc"
TM_Layer1_LegalNoticeScreenEnd:
else
TM_Layer1_LegalNoticeScreen:
	db "Layer1_LegalNoticeScreen_SGLGB_U1.rnc"
TM_Layer1_LegalNoticeScreenEnd:
endif
DATA_8EB82A:
	db "DATA_8EB82A.rnc"
DATA_8EB82AEnd:
DATA_8EE7A1:
	db "DATA_8EE7A1.rnc"
DATA_8EE7A1End:
DATA_8EE8BF:
	db "DATA_8EE8BF.rnc"
DATA_8EE8BFEnd:
DATA_8EE98B:
	db "DATA_8EE98B.rnc"
DATA_8EE98BEnd:
DATA_8EE9E3:
	db "DATA_8EE9E3.rnc"
DATA_8EE9E3End:
DATA_8EEA37:
	db "DATA_8EEA37.rnc"
DATA_8EEA37End:
DATA_8EEA8E:
	db "DATA_8EEA8E.rnc"
DATA_8EEA8EEnd:
DATA_8EEAE5:
	db "DATA_8EEAE5.rnc"
DATA_8EEAE5End:
DATA_8EEBAB:
	db "DATA_8EEBAB.rnc"
DATA_8EEBABEnd:
DATA_8EEBEC:
	db "DATA_8EEBEC.rnc"
DATA_8EEBECEnd:
DATA_8EEC4B:
	db "DATA_8EEC4B.rnc"
DATA_8EEC4BEnd:
DATA_8EEC9E:
	db "DATA_8EEC9E.rnc"
DATA_8EEC9EEnd:
DATA_8EED59:
	db "DATA_8EED59.rnc"
DATA_8EED59End:
DATA_8EEE4C:
	db "DATA_8EEE4C.rnc"
DATA_8EEE4CEnd:
DATA_8EEED6:
	db "DATA_8EEED6.rnc"
DATA_8EEED6End:
DATA_8EEF56:
	db "DATA_8EEF56.rnc"
DATA_8EEF56End:
DATA_8EEFCE:
	db "DATA_8EEFCE.rnc"
DATA_8EEFCEEnd:
DATA_8EF044:
	db "DATA_8EF044.rnc"
DATA_8EF044End:
DATA_8EF0C2:
	db "DATA_8EF0C2.rnc"
DATA_8EF0C2End:
DATA_8EF136:
	db "DATA_8EF136.rnc"
DATA_8EF136End:
DATA_8EF236:
	db "DATA_8EF236.rnc"
DATA_8EF236End:
DATA_91F78E:
	db "DATA_91F78E.rnc"
DATA_91F78EEnd:
if !ROMVer&(!SGLGB_U2) != $00
TM_Layer1_AcclaimLogo:
	db "Layer1_AcclaimLogo.rnc"
TM_Layer1_AcclaimLogoEnd:
else
TM_Layer1_SunsoftLogo:
	db "Layer1_SunsoftLogo.rnc"
TM_Layer1_SunsoftLogoEnd:
endif
DATA_92F0E9:
	db "DATA_92F0E9.rnc"
DATA_92F0E9End:
DATA_93D85B:
	db "DATA_93D85B.rnc"
DATA_93D85BEnd:
DATA_95BD94:
	db "DATA_95BD94.rnc"
DATA_95BD94End:
DATA_9DE949:
	db "DATA_9DE949.rnc"
DATA_9DE949End:
DATA_9ED98B:
	db "DATA_9ED98B.rnc"
DATA_9ED98BEnd:
DATA_9EEE2D:
	db "DATA_9EEE2D.rnc"
DATA_9EEE2DEnd:

;--------------------------------------------------------------------

DATA_80D3D3:
	db "DATA_80D3D3.bin"
DATA_80D3D3End:
DATA_80D4D3:
	db "DATA_80D4D3.bin"
DATA_80D4D3End:
DATA_80E950:
	db "DATA_80E950.bin"
DATA_80E950End:
DATA_80EB50:
	db "DATA_80EB50.bin"
DATA_80EB50End:
DATA_818DC0:
	db "DATA_818DC0.bin"
DATA_818DC0End:
DATA_81A067:
	db "DATA_81A067.bin"
DATA_81A067End:
DATA_81ABA9:
	db "DATA_81ABA9.bin"
DATA_81ABA9End:
DATA_81D9F6:
	db "DATA_81D9F6.bin"
DATA_81D9F6End:
DATA_87C772:
	db "DATA_87C772.bin"
DATA_87C772End:
if !ROMVer&(!SGLGB_U2) != $00
DATA_87F9E5:
	db "DATA_87F9E5_SGLGB_U2.bin"
DATA_87F9E5End:
else
DATA_87F9E5:
	db "DATA_87F9E5_SGLGB_U1.bin"
DATA_87F9E5End:
endif
DATA_8A8A80:
	db "DATA_8A8A80.bin"
DATA_8A8A80End:
DATA_8A8B80:
	db "DATA_8A8B80.bin"
DATA_8A8B80End:
DATA_8A8C80:
	db "DATA_8A8C80.bin"
DATA_8A8C80End:
DATA_8A8D80:
	db "DATA_8A8D80.bin"
DATA_8A8D80End:
DATA_8A8E80:
	db "DATA_8A8E80.bin"
DATA_8A8E80End:
DATA_8A8F80:
	db "DATA_8A8F80.bin"
DATA_8A8F80End:
DATA_8A9080:
	db "DATA_8A9080.bin"
DATA_8A9080End:
DATA_8A9180:
	db "DATA_8A9180.bin"
DATA_8A9180End:
DATA_8A9280:
	db "DATA_8A9280.bin"
DATA_8A9280End:
DATA_8A9380:
	db "DATA_8A9380.bin"
DATA_8A9380End:
DATA_8A9480:
	db "DATA_8A9480.bin"
DATA_8A9480End:
DATA_8A9580:
	db "DATA_8A9580.bin"
DATA_8A9580End:
DATA_8A9680:
	db "DATA_8A9680.bin"
DATA_8A9680End:
DATA_8A9780:
	db "DATA_8A9780.bin"
DATA_8A9780End:
DATA_8A9880:
	db "DATA_8A9880.bin"
DATA_8A9880End:
DATA_8A9980:
	db "DATA_8A9980.bin"
DATA_8A9980End:
DATA_8A9A80:
	db "DATA_8A9A80.bin"
DATA_8A9A80End:
DATA_8A9B80:
	db "DATA_8A9B80.bin"
DATA_8A9B80End:
DATA_8A9C80:
	db "DATA_8A9C80.bin"
DATA_8A9C80End:
DATA_8A9D80:
	db "DATA_8A9D80.bin"
DATA_8A9D80End:
DATA_8A9E80:
	db "DATA_8A9E80.bin"
DATA_8A9E80End:
DATA_8A9F80:
	db "DATA_8A9F80.bin"
DATA_8A9F80End:
DATA_8AA080:
	db "DATA_8AA080.bin"
DATA_8AA080End:
DATA_8AA180:
	db "DATA_8AA180.bin"
DATA_8AA180End:
DATA_8AA280:
	db "DATA_8AA280.bin"
DATA_8AA280End:
DATA_8AA294:
	db "DATA_8AA294.bin"
DATA_8AA294End:
DATA_8AA2A4:
	db "DATA_8AA2A4.bin"
DATA_8AA2A4End:
DATA_8AA2B4:
	db "DATA_8AA2B4.bin"
DATA_8AA2B4End:
DATA_8AA2C4:
	db "DATA_8AA2C4.bin"
DATA_8AA2C4End:
DATA_8AA2CC:
	db "DATA_8AA2CC.bin"
DATA_8AA2CCEnd:
DATA_8BEF85:
	db "DATA_8BEF85.bin"
DATA_8BEF85End:
DATA_8BF085:
	db "DATA_8BF085.bin"
DATA_8BF085End:
DATA_8CD45F:
	db "DATA_8CD45F.bin"
DATA_8CD45FEnd:
DATA_8EF299:
	db "DATA_8EF299.bin"
DATA_8EF299End:
DATA_8EF399:
	db "DATA_8EF399.bin"
DATA_8EF399End:
DATA_8EF499:
	db "DATA_8EF499.bin"
DATA_8EF499End:
DATA_8EF599:
	db "DATA_8EF599.bin"
DATA_8EF599End:
DATA_8EF699:
	db "DATA_8EF699.bin"
DATA_8EF699End:
DATA_8EF799:
	db "DATA_8EF799.bin"
DATA_8EF799End:
DATA_8FFE05:
	db "DATA_8FFE05.bin"
DATA_8FFE05End:
DATA_93FDA4:
	db "DATA_93FDA4.bin"
DATA_93FDA4End:

;--------------------------------------------------------------------

LD_Sprite_SurelyWoodBoss:
	db "Sprite_SurelyWoodBoss.rnc"
LD_Sprite_SurelyWoodBossEnd:
LD_Level_SurelyWoodP2:
	db "Level_SurelyWoodP2.rnc"
LD_Level_SurelyWoodP2End:
LD_Sprite_AncientKeepP2:
	db "Sprite_AncientKeepP2.rnc"
LD_Sprite_AncientKeepP2End:
LD_Level_AncientKeepP2:
	db "Level_AncientKeepP2.rnc"
LD_Level_AncientKeepP2End:
LD_Level_SurelyWoodBoss:
	db "Level_SurelyWoodBoss.rnc"
LD_Level_SurelyWoodBossEnd:
LD_Level_YeOldeBountyP1:
	db "Level_YeOldeBountyP1.rnc"
LD_Level_YeOldeBountyP1End:
LD_Level_YeOldeBountyP2:
	db "Level_YeOldeBountyP2.rnc"
LD_Level_YeOldeBountyP2End:
LD_Sprite_YeOldeBountyP1:
	db "Sprite_YeOldeBountyP1.rnc"
LD_Sprite_YeOldeBountyP1End:
LD_Level_AncientKeepP1:
	db "Level_AncientKeepP1.rnc"
LD_Level_AncientKeepP1End:
if !ROMVer&(!SGLGB_U2) != $00
LD_Sprite_SleepyRockP1:
	db "Sprite_SleepyRockP1_SGLGB_U2.rnc"
LD_Sprite_SleepyRockP1End:
else
LD_Sprite_SleepyRockP1:
	db "Sprite_SleepyRockP1_SGLGB_U1.rnc"
LD_Sprite_SleepyRockP1End:
endif
LD_Level_YeOldeBountyP3:
	db "Level_YeOldeBountyP3.rnc"
LD_Level_YeOldeBountyP3End:
LD_Level_FiestaCityP1:
	db "Level_FiestaCityP1.rnc"
LD_Level_FiestaCityP1End:
LD_Level_SnowyCabinsP1:
	db "Level_SnowyCabinsP1.rnc"
LD_Level_SnowyCabinsP1End:
LD_Level_YeOldeBountyBoss:
	db "Level_YeOldeBountyBoss.rnc"
LD_Level_YeOldeBountyBossEnd:
LD_Sprite_YeOldeBountyBoss:
	db "Sprite_YeOldeBountyBoss.rnc"
LD_Sprite_YeOldeBountyBossEnd:
LD_Level_GalacticalGalaxiesP1:
	db "Level_GalacticalGalaxiesP1.rnc"
LD_Level_GalacticalGalaxiesP1End:
LD_Level_SaveTheMice:
	db "Level_SaveTheMice.rnc"
LD_Level_SaveTheMiceEnd:
LD_Sprite_SaveTheMice:
	db "Sprite_SaveTheMice.rnc"
LD_Sprite_SaveTheMiceEnd:
LD_Sprite_YeOldeBountyP3:
	db "Sprite_YeOldeBountyP3.rnc"
LD_Sprite_YeOldeBountyP3End:
LD_Sprite_SurelyWoodP2:
	db "Sprite_SurelyWoodP2.rnc"
LD_Sprite_SurelyWoodP2End:
LD_Sprite_GalacticalGalaxiesP2:
	db "Sprite_GalacticalGalaxiesP2.rnc"
LD_Sprite_GalacticalGalaxiesP2End:
LD_Sprite_GalacticalGalaxiesBoss:
	db "Sprite_GalacticalGalaxiesBoss.rnc"
LD_Sprite_GalacticalGalaxiesBossEnd:
LD_Sprite_SurelyWoodP3:
	db "Sprite_SurelyWoodP3.rnc"
LD_Sprite_SurelyWoodP3End:
LD_Level_SleepyRockP2:
	db "Level_SleepyRockP2.rnc"
LD_Level_SleepyRockP2End:
LD_Level_SurelyWoodP1:
	db "Level_SurelyWoodP1.rnc"
LD_Level_SurelyWoodP1End:
LD_Level_SnowyCabinsP2:
	db "Level_SnowyCabinsP2.rnc"
LD_Level_SnowyCabinsP2End:
LD_Sprite_FiestaCityP1:
	db "Sprite_FiestaCityP1.rnc"
LD_Sprite_FiestaCityP1End:
LD_Level_GalacticalGalaxiesBoss:
	db "Level_GalacticalGalaxiesBoss.rnc"
LD_Level_GalacticalGalaxiesBossEnd:
LD_Sprite_SnowyCabinsP1:
	db "Sprite_SnowyCabinsP1.rnc"
LD_Sprite_SnowyCabinsP1End:
LD_Sprite_FiestaCityP2:
	db "Sprite_FiestaCityP2.rnc"
LD_Sprite_FiestaCityP2End:
LD_Sprite_SnowyCabinsP2:
	db "Sprite_SnowyCabinsP2.rnc"
LD_Sprite_SnowyCabinsP2End:
LD_Sprite_GalacticalGalaxiesP1:
	db "Sprite_GalacticalGalaxiesP1.rnc"
LD_Sprite_GalacticalGalaxiesP1End:
LD_Sprite_SleepyRockP2:
	db "Sprite_SleepyRockP2.rnc"
LD_Sprite_SleepyRockP2End:
LD_Level_SurelyWoodP3:
	db "Level_SurelyWoodP3.rnc"
LD_Level_SurelyWoodP3End:
LD_Level_FiestaCityP2:
	db "Level_FiestaCityP2.rnc"
LD_Level_FiestaCityP2End:
LD_Sprite_SurelyWoodP1:
	db "Sprite_SurelyWoodP1.rnc"
LD_Sprite_SurelyWoodP1End:
if !ROMVer&(!SGLGB_U2) != $00
LD_Level_GalacticalGalaxiesP2:
	db "Level_GalacticalGalaxiesP2_SGLGB_U2.rnc"
LD_Level_GalacticalGalaxiesP2End:
LD_Level_SleepyRockP1:
	db "Level_SleepyRockP1_SGLGB_U2.rnc"
LD_Level_SleepyRockP1End:
else
LD_Level_GalacticalGalaxiesP2:
	db "Level_GalacticalGalaxiesP2_SGLGB_U1.rnc"
LD_Level_GalacticalGalaxiesP2End:
LD_Level_SleepyRockP1:
	db "Level_SleepyRockP1_SGLGB_U1.rnc"
LD_Level_SleepyRockP1End:
endif
LD_Sprite_YeOldeBountyP2:
	db "Sprite_YeOldeBountyP2.rnc"
LD_Sprite_YeOldeBountyP2End:
LD_Sprite_AncientKeepP1:
	db "Sprite_AncientKeepP1.rnc"
LD_Sprite_AncientKeepP1End:

;--------------------------------------------------------------------

YeOldeBountyBank:
	db "YeOldeBountyBank.bin"
YeOldeBountyBankEnd:
IntroBank:
	db "IntroBank.bin"
IntroBankEnd:
SleepyRockBank:
	db "SleepyRockBank.bin"
SleepyRockBankEnd:
GalacticalGalaxiesBank:
	db "GalacticalGalaxiesBank.bin"
GalacticalGalaxiesBankEnd:
FiestaCityBank:
	db "FiestaCityBank.bin"
FiestaCityBankEnd:
SurelyWoodBank:
	db "SurelyWoodBank.bin"
SurelyWoodBankEnd:
MiscBank:
	db "MiscBank.bin"
MiscBankEnd:
AncientKeepBank:
	db "AncientKeepBank.bin"
AncientKeepBankEnd:
SnowyCabinsBank:
	db "SnowyCabinsBank.bin"
SnowyCabinsBankEnd:

;--------------------------------------------------------------------

BRRSample00:
	db "00.brr"
BRRSample00End:
BRRSample01:
	db "01.brr"
BRRSample01End:
BRRSample02:
	db "02.brr"
BRRSample02End:
BRRSample03:
	db "03.brr"
BRRSample03End:
BRRSample04:
	db "04.brr"
BRRSample04End:
BRRSample05:
	db "05.brr"
BRRSample05End:
BRRSample06:
	db "06.brr"
BRRSample06End:
BRRSample07:
	db "07.brr"
BRRSample07End:
BRRSample08:
	db "08.brr"
BRRSample08End:
BRRSample09:
	db "09.brr"
BRRSample09End:
BRRSample0A:
	db "0A.brr"
BRRSample0AEnd:
BRRSample0B:
	db "0B.brr"
BRRSample0BEnd:
BRRSample0C:
	db "0C.brr"
BRRSample0CEnd:
BRRSample0D:
	db "0D.brr"
BRRSample0DEnd:
BRRSample0E:
	db "0E.brr"
BRRSample0EEnd:
BRRSample0F:
	db "0F.brr"
BRRSample0FEnd:
BRRSample10:
	db "10.brr"
BRRSample10End:
BRRSample11:
	db "11.brr"
BRRSample11End:
BRRSample12:
	db "12.brr"
BRRSample12End:
BRRSample13:
	db "13.brr"
BRRSample13End:
BRRSample14:
	db "14.brr"
BRRSample14End:
BRRSample15:
	db "15.brr"
BRRSample15End:
BRRSample16:
	db "16.brr"
BRRSample16End:
BRRSample17:
	db "17.brr"
BRRSample17End:
BRRSample18:
	db "18.brr"
BRRSample18End:
BRRSample19:
	db "19.brr"
BRRSample19End:
BRRSample1A:
	db "1A.brr"
BRRSample1AEnd:
BRRSample1B:
	db "1B.brr"
BRRSample1BEnd:
BRRSample1C:
	db "1C.brr"
BRRSample1CEnd:
BRRSample1D:
	db "1D.brr"
BRRSample1DEnd:
BRRSample1E:
	db "1E.brr"
BRRSample1EEnd:
BRRSample1F:
	db "1F.brr"
BRRSample1FEnd:
BRRSample20:
	db "20.brr"
BRRSample20End:
BRRSample21:
	db "21.brr"
BRRSample21End:
BRRSample22:
	db "22.brr"
BRRSample22End:
BRRSample23:
	db "23.brr"
BRRSample23End:
BRRSample24:
	db "24.brr"
BRRSample24End:
BRRSample25:
	db "25.brr"
BRRSample25End:
BRRSample26:
	db "26.brr"
BRRSample26End:
BRRSample27:
	db "27.brr"
BRRSample27End:
BRRSample28:
	db "28.brr"
BRRSample28End:
BRRSample29:
	db "29.brr"
BRRSample29End:
BRRSample2A:
	db "2A.brr"
BRRSample2AEnd:
BRRSample2B:
	db "2B.brr"
BRRSample2BEnd:
BRRSample2C:
	db "2C.brr"
BRRSample2CEnd:
BRRSample2D:
	db "2D.brr"
BRRSample2DEnd:
BRRSample2E:
	db "2E.brr"
BRRSample2EEnd:
BRRSample2F:
	db "2F.brr"
BRRSample2FEnd:
BRRSample30:
	db "30.brr"
BRRSample30End:
BRRSample31:
	db "31.brr"
BRRSample31End:
BRRSample32:
	db "32.brr"
BRRSample32End:
BRRSample33:
	db "33.brr"
BRRSample33End:

;--------------------------------------------------------------------
