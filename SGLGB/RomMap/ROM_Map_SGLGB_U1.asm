
macro SGLGB_GameSpecificAssemblySettings()
	!ROM_SGLGB_U1 = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_SGLGB_U2 = $0002							;/

	%SetROMToAssembleForHack(SGLGB_U1, !ROMID)
endmacro

macro SGLGB_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_SGLGB.asm
	incsrc ../RAM_Map_SGLGB.asm
	incsrc ../Routine_Macros_SGLGB.asm
	incsrc ../SNES_Macros_SGLGB.asm
endmacro

macro SGLGB_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_SGLGB.asm
	incsrc ../Misc_Defines_SGLGB.asm
	incsrc ../SPC700/SPC700_Macros_SGLGB.asm
endmacro

macro SGLGB_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro SGLGB_LoadGameSpecificMSU1Files()
endmacro

macro SGLGB_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !TRUE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 1
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Acclaim Entertainment"
	!Define_Global_DeveloperName = "SunSoft"
	!Define_Global_ReleaseDate = "August 1995"
	!Define_Global_BaseROMMD5Hash = ""

	!Define_Global_MakerCode = "BB"
	!Define_Global_GameCode = "ASEE"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "Speedy Gonzales      "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_1MB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $ABFE
	!UnusedNativeModeVector1 = CODE_80F81F
	!UnusedNativeModeVector2 = CODE_80F81F
	!NativeModeCOPVector = SNES_Header_0_EmulationModeCOP
	!NativeModeBRKVector = SNES_Header_0_Unused3
	!NativeModeAbortVector = SNES_Header_0_Unused3
	!NativeModeNMIVector = CODE_80C45B
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_80C4EF
	!UnusedEmulationModeVector1 = (($7DE00B&$0000FF)<<8)+$5C
	!UnusedEmulationModeVector2 = $7DE00B>>8
	!EmulationModeCOPVector = (($7DE00E&$0000FF)<<8)+$5C
	!EmulationModeBRKVector = $7DE00E>>8
	!EmulationModeAbortVector = (($7DE000&$0000FF)<<8)+$5C
	!EmulationModeNMIVector = $7DE000>>8
	!EmulationModeResetVector = CODE_808000
	!EmulationModeIRQVector = CODE_80F81F
	%LoadExtraRAMFile("SRAM_Map_SGLGB.asm")
endmacro

macro SGLGB_LoadROMMap()
	%SGLGBBank80Macros(!BANK_00, !BANK_00)
	%SGLGBBank81Macros(!BANK_01, !BANK_01)
	%SGLGBBank82Macros(!BANK_02, !BANK_02)
	%SGLGBBank83Macros(!BANK_03, !BANK_03)
	%SGLGBBank84Macros(!BANK_04, !BANK_04)
	%SGLGBBank85Macros(!BANK_05, !BANK_05)
	%SGLGBBank86Macros(!BANK_06, !BANK_06)
	%SGLGBBank87Macros(!BANK_07, !BANK_07)
	%SGLGBBank88Macros(!BANK_08, !BANK_08)
	%SGLGBBank89Macros(!BANK_09, !BANK_09)
	%SGLGBBank8AMacros(!BANK_0A, !BANK_0A)
	%SGLGBBank8BMacros(!BANK_0B, !BANK_0B)
	%SGLGBBank8CMacros(!BANK_0C, !BANK_0C)
	%SGLGBBank8DMacros(!BANK_0D, !BANK_0D)
	%SGLGBBank8EMacros(!BANK_0E, !BANK_0E)
	%SGLGBBank8FMacros(!BANK_0F, !BANK_0F)
	%SGLGBBank90Macros(!BANK_10, !BANK_10)
	%SGLGBBank91Macros(!BANK_11, !BANK_11)
	%SGLGBBank92Macros(!BANK_12, !BANK_12)
	%SGLGBBank93Macros(!BANK_13, !BANK_13)
	%SGLGBBank94Macros(!BANK_14, !BANK_14)
	%SGLGBBank95Macros(!BANK_15, !BANK_15)
	%SGLGBBank96Macros(!BANK_16, !BANK_16)
	%SGLGBBank97Macros(!BANK_17, !BANK_17)
	%SGLGBBank98Macros(!BANK_18, !BANK_18)
	%SGLGBBank99Macros(!BANK_19, !BANK_19)
	%SGLGBBank9AMacros(!BANK_1A, !BANK_1A)
	%SGLGBBank9BMacros(!BANK_1B, !BANK_1B)
	%SGLGBBank9CMacros(!BANK_1C, !BANK_1C)
	%SGLGBBank9DMacros(!BANK_1D, !BANK_1D)
	%SGLGBBank9EMacros(!BANK_1E, !BANK_1E)
	%SGLGBBank9FMacros(!BANK_1F, !BANK_1F)
endmacro
