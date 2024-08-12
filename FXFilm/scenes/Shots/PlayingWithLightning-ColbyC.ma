//Maya ASCII 2023 scene
//Name: PlayingWithLightning-ColbyC.ma
//Last modified: Thu, Jul 25, 2024 12:42:45 PM
//Codeset: 1252
file -rdi 1 -ns "PirateShip_CoryP" -rfn "PirateShip_CoryPRN" -op "v=0;" -typ
		 "mayaAscii" "D:/GitRepos/CapstoneFXFilm/FXFilm//scenes/PirateShip-CoryP.ma";
file -rdi 1 -ns "SailorBlueGuy_HankW" -rfn "SailorBlueGuy_HankWRN" -op "v=0;"
		 -typ "mayaAscii" "D:/GitRepos/CapstoneFXFilm/FXFilm//scenes/Characters/SailorBlueGuy-HankW.ma";
file -r -ns "PirateShip_CoryP" -dr 1 -rfn "PirateShip_CoryPRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitRepos/CapstoneFXFilm/FXFilm//scenes/PirateShip-CoryP.ma";
file -r -ns "SailorBlueGuy_HankW" -dr 1 -rfn "SailorBlueGuy_HankWRN" -op "v=0;" 
		-typ "mayaAscii" "D:/GitRepos/CapstoneFXFilm/FXFilm//scenes/Characters/SailorBlueGuy-HankW.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -dataType "xgmGuideData" -dataType "igmDescriptionData" -dataType "xgmSplineData"
		 -dataType "xgmMeshData" -dataType "xgmSplineTweakData" -dataType "xgmSplineBoundInfoData"
		 -dataType "xgmGuideRefData" "xgenToolkit" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
requires "stereoCamera" "10.0";
requires -nodeType "RedshiftOptions" "redshift4maya" "3.6.01";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "74F2FBB3-4601-C96A-CABA-E19D3FAC3645";
createNode transform -s -n "persp";
	rename -uid "20E39624-4CAC-3255-5E51-E0BF9D57A51F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1743863108048693 111.93140888132267 69.864295752763624 ;
	setAttr ".r" -type "double3" -6.3383527325353901 205.79999999994939 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "95243237-44F0-AE8B-957D-12B6F8CD7569";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.7968621604800403;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.9320563841222214 107.94261613613192 68.396972089529584 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E1453D77-4542-1D73-394B-DD815B547BF9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DE86651C-4975-C531-E50B-3D8C4B370CD0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 355.59697973472862;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F7654FFD-46F6-AFCD-4A59-A4AB4659B231";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "924808F3-45DD-FC83-759D-01A8D3AF0513";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "BE3992A0-4D1D-2DE3-D9B5-4A95A5F5F8DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 102.66932507481421 64.520325321068256 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "70DF93B2-45FF-8F7A-D3F1-80B01CBFD55A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 55.793066267967419;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Ship";
	rename -uid "59668419-4969-7AAE-389D-41A42B118BC7";
	setAttr ".s" -type "double3" 10 10 10 ;
createNode transform -n "polySurface33";
	rename -uid "68E5FD4E-4A4D-D4A8-16A9-81AAF2C3D5F4";
	setAttr ".rp" -type "double3" 5.0663948059082031e-06 102.69795894622803 67.570564746856689 ;
	setAttr ".sp" -type "double3" 5.0663948059082031e-06 102.69795894622803 67.570564746856689 ;
createNode mesh -n "polySurface33Shape" -p "|polySurface33";
	rename -uid "6962EB18-4B98-3994-A981-A9860E7C3C74";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2";
	rename -uid "77F24DB1-4945-828D-A394-A6A278A994FE";
	setAttr ".rp" -type "double3" 0 97.749733924865723 67.642040252685547 ;
	setAttr ".sp" -type "double3" 0 97.749733924865723 67.642040252685547 ;
createNode mesh -n "polySurface2Shape" -p "|polySurface2";
	rename -uid "2DDAE390-48CD-9402-7100-4B8BF62035AC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lookAt -n "camera1_group";
	rename -uid "A6D904E5-413F-1090-BD49-D6B23D34657C";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 22.962223722974642;
	setAttr ".tws" 2.2588727439225506e-06;
createNode transform -n "camera1" -p "camera1_group";
	rename -uid "1A828FAF-4BDD-B532-7F66-A3AE6C5D51F0";
	setAttr ".t" -type "double3" -13.966137500033865 112.41518432516342 54.711421316167439 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "8856EDFC-4223-7EEE-36E2-8D9D33400477";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 22.962223722974642;
	setAttr -l on ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "camera1_aim" -p "camera1_group";
	rename -uid "606B74BF-40B1-D1CD-EBA2-C38FF89F1E22";
	setAttr ".t" -type "double3" -0.32955318791541544 108.73940415554016 72.816556685642837 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".drp" yes;
createNode locator -n "camera1_aimShape" -p "camera1_aim";
	rename -uid "C63B7B96-4780-F2E3-5A0F-3980DDF5E80D";
	setAttr -k off ".v" no;
createNode transform -n "left";
	rename -uid "D80D7421-4F5E-C871-0807-EDA78AC5275F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 87.4338485813673 19.410137929264199 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "ED309347-49C1-1A48-ACF9-21A582D3EC30";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 156.25161033057665;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode fosterParent -n "PirateShip_CoryPRNfosterParent1";
	rename -uid "0D97C6BD-4DFE-C42E-A8E3-D0A9FA4C0D5B";
createNode transform -n "transform1" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "B6AA92E4-4E5E-43E1-8D3A-E29023D2E001";
	setAttr ".v" no;
createNode transform -n "polySurface47" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "79DB62DF-45D7-F872-25C7-99B8F8CE8E96";
createNode transform -n "transform42" -p "polySurface47";
	rename -uid "799A25D4-42C6-EDE0-A696-42B4304812C2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape47" -p "transform42";
	rename -uid "92C9F97A-4818-930A-3862-77A7933FDAE2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface46" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "579CDED3-44F7-72F7-7BC0-3A9C97544C13";
createNode transform -n "transform45" -p "polySurface46";
	rename -uid "4C0F162E-4257-0983-E75C-6F965E65DABB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape46" -p "transform45";
	rename -uid "C4E1A08F-47E9-D152-B229-E0A51D9C1CC1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface45" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "9D9F7959-4A3E-D2F3-E6D5-BEB8858473FC";
createNode transform -n "transform12" -p "polySurface45";
	rename -uid "6D11D1DB-4576-A740-1833-A7A8AE7296E4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform12";
	rename -uid "0A65CF70-43F9-2309-0D0F-C788DDD00FB6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface44" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "ABC54122-4D1D-47D7-7BAA-DA8A7772B807";
createNode transform -n "transform16" -p "polySurface44";
	rename -uid "F57AA125-4DE6-5207-294E-B6AF055D78B8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape44" -p "transform16";
	rename -uid "62D9D87D-4283-2E6A-9959-0FAD266E371A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface43" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "95598276-4577-E121-FB7E-8D808560CEEF";
createNode transform -n "transform26" -p "polySurface43";
	rename -uid "A6DC61A6-403A-AFBD-325E-9B82A072946B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape43" -p "transform26";
	rename -uid "43B19E08-4A37-9EB7-6F09-5EAC9BB8C58E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface42" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "D5A5DF75-40D7-F970-44F9-FF8D03DF3C65";
createNode transform -n "transform27" -p "polySurface42";
	rename -uid "84DBE1C3-47E1-0B31-2EFE-9494687C6B05";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform27";
	rename -uid "C68330B9-4FF0-5880-EC17-17BC9C777803";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface41" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "0AA49809-43FE-0D27-A08B-3DAA43E0C2A0";
createNode transform -n "transform14" -p "polySurface41";
	rename -uid "B90E05B8-4230-1E2D-B5AD-B3A845F412DF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform14";
	rename -uid "D12AACA2-4982-F6BF-903D-B482B4E70451";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface40" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "11FE41FF-4594-F717-8BF2-57AD395625D1";
createNode transform -n "transform30" -p "polySurface40";
	rename -uid "8F85CDA2-4DAD-2910-4B6D-B4A03EBA4633";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform30";
	rename -uid "E395A351-4240-84A9-32A2-AE91DC6DCB6F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface39" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "C57CA17F-4DBF-0EAA-06AF-C1974330C638";
createNode transform -n "transform19" -p "polySurface39";
	rename -uid "58964BE4-4601-023E-23D5-B2BE8384E993";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform19";
	rename -uid "4D80D2AD-4DA3-ABBF-02C1-F8995DF2955C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface38" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "BCB8D5AE-46F7-D52F-3010-D9AD29F5CE44";
createNode transform -n "transform7" -p "polySurface38";
	rename -uid "3C312173-4C1E-D9F2-E125-909D1E3D2A3D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform7";
	rename -uid "0CE16FD2-44DA-C3D6-954F-1283EFFDD512";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface37" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "551E4D88-42EB-28FF-BAD8-6C9DD92E6B81";
createNode transform -n "transform38" -p "polySurface37";
	rename -uid "071C6524-42E2-956A-B94A-84994A42C4AA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform38";
	rename -uid "772BE767-4BE8-34D8-34C6-46862970C94A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface36" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "0DE89920-43F3-CB69-34C6-829EF5064D6B";
createNode transform -n "transform3" -p "polySurface36";
	rename -uid "C6C00F0B-4899-AC30-7D18-128395E0E6D1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform3";
	rename -uid "04A52120-4C28-7476-1264-AB9A7724B11D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface35" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "20C24EBC-4C62-D585-35EA-29AF4134C560";
createNode transform -n "transform37" -p "polySurface35";
	rename -uid "F7E8E21D-4A60-07ED-EBE4-4194484B3273";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform37";
	rename -uid "23CCC3F3-45FE-A2CC-CC06-539A6FEA1547";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface34" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "DE73E265-4C75-552B-4D83-6FB880CDD422";
createNode transform -n "transform21" -p "polySurface34";
	rename -uid "F2BB3E21-4879-BADA-B004-10A8C7AC134D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform21";
	rename -uid "13552C6F-4A00-71C9-F1DA-649C9CE812CA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface33" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "09B26D72-449C-E3C9-C7BD-B98020C86394";
createNode transform -n "transform40" -p "|PirateShip_CoryPRNfosterParent1|polySurface33";
	rename -uid "A0EF04A4-47EA-4A8A-99DB-5B940E2A2946";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform40";
	rename -uid "7F939E47-4D00-6946-2519-24B3233BD985";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface32" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "3BF9191D-4AE5-5A03-BFDD-898C308B9A72";
createNode transform -n "transform33" -p "polySurface32";
	rename -uid "618261C9-477A-5098-C23D-D8865FFF7EA9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform33";
	rename -uid "DD0F0867-40AD-CC60-EE71-238C71E5DDD5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "1EBC2B59-4DE8-2180-029B-188ED96899B8";
createNode transform -n "transform18" -p "polySurface31";
	rename -uid "155DF10F-4848-870C-15A8-EA927D2F2C3B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform18";
	rename -uid "EF40926D-4492-4CB7-1F63-CD991375A341";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "FA353C3A-46D6-4B90-9690-E1932A383C60";
createNode transform -n "transform35" -p "polySurface30";
	rename -uid "84CE9B48-4C46-2487-C71E-9E84AA5D3844";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform35";
	rename -uid "42FDF156-421F-2615-AF04-2AA6FC54134F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "3D414981-41AF-AFB1-3F83-6B8078742E1C";
createNode transform -n "transform4" -p "polySurface29";
	rename -uid "31D8549C-43EA-6258-744F-86A34074EF34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform4";
	rename -uid "3A435490-454C-DE17-73C5-799E1370A8FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface28" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "41145FA5-4B79-E187-CA88-CA9AD57051D4";
createNode transform -n "transform23" -p "polySurface28";
	rename -uid "96F7ABDE-4166-8864-E0D2-52B3BC145899";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform23";
	rename -uid "686132E4-429D-BCA2-0D6E-7E9C228D30C4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface27" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "1D3E00F8-4371-E5BA-04EB-6FB11AB7F3CC";
createNode transform -n "transform13" -p "polySurface27";
	rename -uid "17510A50-4439-BA9F-8561-9BA0F137EA06";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform13";
	rename -uid "A2A7485B-4C23-A058-6892-8FB076B38596";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface26" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "200F192C-4513-C305-B203-C9B61F79FC14";
createNode transform -n "transform31" -p "polySurface26";
	rename -uid "676064EC-4390-7EB2-CB06-2897EC98CCAE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform31";
	rename -uid "4F14882D-4620-1DBE-0715-8EA14A3D54C4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface25" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "CDB45C51-4807-E86C-8C03-DAAF4CDE1E51";
createNode transform -n "transform20" -p "polySurface25";
	rename -uid "F45DCEF9-4010-0F4C-98BA-E1926E6E1F0C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform20";
	rename -uid "5D82A583-4CCA-EDFE-F378-878CA9EB62E1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface24" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "ED40723C-4466-F9DD-C4C8-E9849ED55F59";
createNode transform -n "transform5" -p "polySurface24";
	rename -uid "681E52BB-4D62-5B28-5F65-ED8E709FDEE8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform5";
	rename -uid "5C682E78-498D-A788-7A28-99A9562FFAEA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface23" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "E859A33E-4DAC-1556-5FE8-6BBE9D4B65D9";
createNode transform -n "transform11" -p "polySurface23";
	rename -uid "2D24E429-4B93-1EC7-EFE2-F5888EDB4F49";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform11";
	rename -uid "C80BCB74-4008-3545-CD69-7687DBC280E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface22" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "AE9EC7FA-44F7-C3FD-3F1A-6DA73945C6CE";
createNode transform -n "transform15" -p "polySurface22";
	rename -uid "31EA27C7-40A1-93AE-CAB8-46A720A3BE92";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform15";
	rename -uid "403D231F-416B-E21B-09A3-69B1B04E0A05";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface21" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "BC37E8E6-4BDD-A581-6BA6-559B4C5B57DE";
createNode transform -n "transform34" -p "polySurface21";
	rename -uid "CD66BC1A-44C4-3CDF-7713-7CA530C8D074";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform34";
	rename -uid "29937081-40A9-32F0-C8A7-369E6FAE8D50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "0216EF1D-4ABF-328A-EC9B-7080A007A72B";
createNode transform -n "transform17" -p "polySurface20";
	rename -uid "2E013EE2-4E09-6A0C-A980-10B6A8975FCC";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform17";
	rename -uid "ECCCF51E-4EBC-E30B-533E-6F96A016368F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface19" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "4BC0A01A-4496-0610-AB75-73BD75B075AA";
createNode transform -n "transform8" -p "polySurface19";
	rename -uid "E7F079F4-40F3-1C2B-B3A5-F0A15F255BC6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform8";
	rename -uid "7FB4C519-4E2C-2840-83A1-7480E74470C6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface18" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "BF6C9160-4A8B-071D-32E0-869DBB7218C3";
createNode transform -n "transform10" -p "polySurface18";
	rename -uid "8327863C-4A9E-C93D-6D1A-1EBBD837140D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform10";
	rename -uid "DD5A0FB1-49F6-37AC-450C-21998D7E56C0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface17" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "367697E2-46CD-742E-BF43-3F8F3344C170";
createNode transform -n "transform22" -p "polySurface17";
	rename -uid "9E436538-4F93-B99A-414E-04BD78E401DA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform22";
	rename -uid "D69AE473-4508-20A6-F6BC-CB8B9475A00D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface16" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "BD04B89B-4240-CBEA-EEED-84991A15AE0D";
createNode transform -n "transform24" -p "polySurface16";
	rename -uid "820A6978-4A29-1F48-A593-C5AD5D5800A7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform24";
	rename -uid "146A1782-417F-96C9-0C35-699F7783DD62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "5913C9D8-42FA-0179-0614-55A2F83E9D5E";
createNode transform -n "transform32" -p "polySurface15";
	rename -uid "6746206D-40D6-DC01-C149-76A5F5B4273A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform32";
	rename -uid "9E4502DD-4BC5-B118-6E67-1FA57FC2DBD5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface14" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "C081838F-4246-EE32-0499-0BBA7850D9C2";
createNode transform -n "transform39" -p "polySurface14";
	rename -uid "13E0760E-46A8-822E-D6C6-5F80CF632E69";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform39";
	rename -uid "C31C5D8A-4FD7-CC7B-172B-E491A6A3A296";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface13" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "85D9CE2F-47C7-A1F7-0CC0-AC9D0F1EFC30";
createNode transform -n "transform36" -p "polySurface13";
	rename -uid "89BBC79E-49C0-B27B-6938-05A112EF0C9B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform36";
	rename -uid "1EB0AA6E-4ED8-404E-4DE9-5DAEC55CA112";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface12" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "55BE2FE9-4A1D-F662-54D1-8F92DE234A01";
createNode transform -n "transform9" -p "polySurface12";
	rename -uid "07D30F05-497B-52D0-B914-1AA5DCD46D40";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform9";
	rename -uid "B26B8A10-426B-2B28-6EF5-CCB6E4B9A06B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface11" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "1087A32D-424E-0267-610A-42878443BEAE";
createNode transform -n "transform2" -p "polySurface11";
	rename -uid "F7694EC9-44F3-6108-D39B-EF8AABC25944";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform2";
	rename -uid "E37F4CBA-457A-223B-4F48-9DABDD824D0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "050482DD-4CA4-DB94-714B-4EA422AC8663";
createNode transform -n "transform6" -p "polySurface10";
	rename -uid "405D1D08-417A-7163-37EB-9CA06D9FA61D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform6";
	rename -uid "5F3657BE-430C-16C4-41F0-B7A5F15FDE9F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface9" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "8391252B-49B9-8F2A-22BC-A998F5D77E4F";
createNode transform -n "transform25" -p "polySurface9";
	rename -uid "984E1B99-461F-040A-B510-909FB1D3CD93";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform25";
	rename -uid "C41CD7A9-4F89-2D09-2748-0180E238A2A4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface8" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "075C72B3-4005-826F-CD77-F09A4521EFAA";
createNode transform -n "transform28" -p "polySurface8";
	rename -uid "CFE8A55A-403A-92E4-ACC7-46B7561B5BF2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform28";
	rename -uid "3C8E04D4-4219-E035-935C-E58125003CC7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "648367CC-4A98-8EEC-59E6-CABEF3F0D68D";
createNode transform -n "transform29" -p "polySurface7";
	rename -uid "A6D854AF-4B08-6C7B-4EA0-009556087BBF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform29";
	rename -uid "5AD24B6E-49D9-9222-1425-DFB34995A93D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "F318D7DD-4C7B-ECDD-47EC-188CEF2ECF24";
createNode transform -n "transform41" -p "polySurface6";
	rename -uid "29AD729E-4974-23C2-B69F-D087EE501ACE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform41";
	rename -uid "C222CE09-427D-C029-C051-8FBD155146CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "52F5B9FB-4089-8828-5B8E-3C94B18E63C9";
createNode transform -n "transform43" -p "polySurface5";
	rename -uid "91D2FD1F-485F-31E8-56AC-DE94E876F022";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform43";
	rename -uid "CED5FE18-497E-F1A7-D49B-FEB07DAD5E68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "7ACCE91C-4FEF-C455-36D8-F0AF11CA4D74";
createNode transform -n "transform44" -p "polySurface4";
	rename -uid "9B8F28AF-492D-299C-6D3D-5885B042EBC6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform44";
	rename -uid "8F0E016A-45CF-CAEB-F505-A2A3E569B2EE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "D5487551-46C6-9E0F-A115-1DA1A8D9F5A9";
createNode transform -n "transform47" -p "polySurface3";
	rename -uid "56D1A5D4-4E13-31FA-BFFB-9A9E385744FF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform47";
	rename -uid "8262AECC-4143-BC36-170D-A6BCEEB40E5A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "399EBD9A-487F-A187-A562-799EFE798EA5";
createNode transform -n "transform48" -p "|PirateShip_CoryPRNfosterParent1|polySurface2";
	rename -uid "DD09CD1E-493D-170A-53B0-968DA0040CF0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform48";
	rename -uid "C3F56577-478F-8102-B1B0-4495C5BF6942";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1" -p "PirateShip_CoryPRNfosterParent1";
	rename -uid "4495B516-4E8D-86A4-F752-E4AE50EC9E42";
createNode transform -n "transform46" -p "polySurface1";
	rename -uid "12E734EA-46BE-FA27-F189-C891084AD924";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform46";
	rename -uid "A33DA0E3-411F-484E-0CAA-77AF88A12D8E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "SailorBlueGuy_HankWRNfosterParent1";
	rename -uid "7191BE86-4CF4-E2CA-5D67-169E44D3F6BB";
createNode parentConstraint -n "R_Arm_IK_Ctrl_parentConstraint1" -p "SailorBlueGuy_HankWRNfosterParent1";
	rename -uid "DE8AC002-4B8A-EC74-4926-A996665BEA78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "polySurface33W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.857016294987111 5.3018987882494883 0.79227287345383957 ;
	setAttr ".tg[0].tor" -type "double3" 107.67369461416678 -69.085719247957556 123.82630093391069 ;
	setAttr ".lr" -type "double3" -79.573433797332839 56.488948167362608 40.296717222050795 ;
	setAttr ".rst" -type "double3" 1.2996515756930123 -0.45702513319176319 2.037190573698318 ;
	setAttr ".rsrr" -type "double3" -83.232773135618856 57.989143129180952 41.754482928775644 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E8024271-4D64-88BE-F581-B08FB12DEAAD";
	setAttr -s 56 ".lnk";
	setAttr -s 56 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D125FC2B-4B1B-8524-5126-E8AC71D16531";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D750292E-493C-8FD5-A096-E9BBD45885E2";
createNode displayLayerManager -n "layerManager";
	rename -uid "61E05FE3-45C7-E6A1-608B-ACB01AAD5747";
	setAttr ".dli[1]"  3;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "9D058EAA-4AEE-5E84-7186-FA88CC1C34F2";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B837D65F-4E54-C822-CACE-4D8CE0DE4117";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8A1B6F19-40D7-B4DB-C31A-D898F479B697";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "53872682-44A0-8AD7-1F3A-A9820A48F94D";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "DAC54019-4EA5-4023-8978-839076D345EA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "35B5082F-41C0-B6D4-46A0-08A6BC8125BE";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "EC41DDDB-43E8-325F-7067-AE81E16B70E0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "PirateShip_CoryPRN";
	rename -uid "39BC89AD-4556-64E0-DEDE-3181131837E4";
	setAttr -s 6 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"PirateShip_CoryPRN"
		"PirateShip_CoryPRN" 0
		"PirateShip_CoryPRN" 146
		0 "|PirateShip_CoryP:Ship_Broken_Up:pCube50Higher_Rail_PostsRailPostsGeo" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeopolySurface86Cabin_Windows" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface94" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface38" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoWalking_Plank" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface18" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeopolySurface111" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface37" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface87" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface95" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface31" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface22" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface85" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface99" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface34" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopCube47" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface88" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface36" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoDoorknob" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopolySurface13" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoRope_Connectors" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface46" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface40" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface97" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface25" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCrowsnest_Ropes_03" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface27" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface47" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface21" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoFloor_Grate" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoMasts" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCrowsnest_Ropes_02" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface91" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface93" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface35" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopolySurface12" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface41" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface19" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCaptain_Quarters_walls" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCrows_Nest" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoBow_Mast" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopCube53" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface24" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface45" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface39" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface89" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface29" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopCube48" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface90" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface20" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoRopes_Main" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface44" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface26" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoStairs_R" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface17" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeoHand_Rails" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface23" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape" "|PirateShip_CoryPRNfosterParent1|transform1" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCrowsnest_Ropes_01" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoHull" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoLower_Rails" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Quarters" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface14" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeopCube54" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface92" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoStair_Rails_01" "|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface33" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopCube46" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface84" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopCube52" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface32" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface98" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoPlank_Floor_Main" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface30" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:Higher_Rail_PostsRailPostsGeopCube51" 
		"|Ship" "-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:RailPostsGeopolySurface28" "|Ship" "-s -r "
		
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoCabin_WindowspolySurface96" "|Ship" 
		"-s -r "
		0 "|PirateShip_CoryP:Ship_Broken_Up:GeoSails_Geo" "|Ship" "-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface1" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface2" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface3" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface4" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface5" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface6" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface7" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface8" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface9" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface10" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface11" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface12" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface13" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface14" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface15" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface16" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface17" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface18" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface19" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface20" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface21" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface22" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface23" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface24" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface25" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface26" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface27" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface28" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface29" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface30" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface31" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface32" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface33" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface34" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface35" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface36" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface37" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface38" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface39" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface40" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface41" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface42" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface43" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface44" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface45" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface46" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|polySurface47" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		0 "|PirateShip_CoryPRNfosterParent1|transform1" "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_Wheel" 
		"-s -r "
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoRope_Connectors" "visibility" 
		" 1"
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCrowsnest_Ropes_03" "visibility" 
		" 1"
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoMasts" "visibility" " 1"
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCrowsnest_Ropes_02" "visibility" 
		" 1"
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCrows_Nest" "visibility" " 1"
		
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoBow_Mast" "visibility" " 1"
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoRopes_Main" "visibility" " 1"
		
		2 "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape" 
		"intermediateObject" " 1"
		2 "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape" 
		"instObjGroups.objectGroups[1].objectGrpCompList" " -type \"componentList\" 1 \"f[0:1995]\""
		
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoCrowsnest_Ropes_01" "visibility" 
		" 1"
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoLower_Rails" "visibility" " 1"
		
		2 "|Ship|PirateShip_CoryP:Ship_Broken_Up:GeoSails_Geo" "visibility" " 1"
		3 "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		5 3 "PirateShip_CoryPRN" "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.instObjGroups.objectGroups[1]" 
		"PirateShip_CoryPRN.placeHolderList[1]" ""
		5 4 "PirateShip_CoryPRN" "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.instObjGroups.objectGroups[1].objectGroupId" 
		"PirateShip_CoryPRN.placeHolderList[2]" ""
		5 4 "PirateShip_CoryPRN" "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"PirateShip_CoryPRN.placeHolderList[3]" ""
		5 3 "PirateShip_CoryPRN" "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.outMesh" 
		"PirateShip_CoryPRN.placeHolderList[4]" ""
		5 3 "PirateShip_CoryPRN" "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.compInstObjGroups.compObjectGroups[1]" 
		"PirateShip_CoryPRN.placeHolderList[5]" ""
		5 4 "PirateShip_CoryPRN" "|PirateShip_CoryPRNfosterParent1|transform1|PirateShip_CoryP:Ship_Broken_Up:GeoCaptains_WheelShape.compInstObjGroups.compObjectGroups[1].compObjectGroupId" 
		"PirateShip_CoryPRN.placeHolderList[6]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "SailorBlueGuy_HankWRN";
	rename -uid "395BEBE9-4906-5B05-4625-95BE097378EF";
	setAttr -s 636 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"SailorBlueGuy_HankWRN"
		"SailorBlueGuy_HankWRN" 0
		"SailorBlueGuy_HankWRN" 676
		0 "|SailorBlueGuy_HankWRNfosterParent1|R_Arm_IK_Ctrl_parentConstraint1" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl" 
		"-s -r "
		1 |SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl 
		"blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|SailorBlueGuy_HankW:left" "translate" " -type \"double3\" -1000.10000000000002274 0 0"
		
		2 "|SailorBlueGuy_HankW:HairBase" "translate" " -type \"double3\" 0 0 0"
		2 "|SailorBlueGuy_HankW:HairBase|SailorBlueGuy_HankW:HairBaseShape" "instObjGroups.objectGroups" 
		" -s 2"
		2 "|SailorBlueGuy_HankW:HairBase|SailorBlueGuy_HankW:HairBaseShape" "instObjGroups.objectGroups[8].objectGrpCompList" 
		" -type \"componentList\" 5 \"f[0:146]\" \"f[151]\" \"f[153:304]\" \"f[309]\" \"f[311:315]\""
		
		2 "|SailorBlueGuy_HankW:Walker" "translate" " -type \"double3\" 1.11368656158447266 -0.030278982594609261 0.31922253966331482"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 4.1070609316326756"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl" 
		"FollowTranslate" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl" 
		"FollowRotate" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:L_Eye_Ctrl_Grp|SailorBlueGuy_HankW:L_Eye_Ctrl" 
		"L_Eye_Close" " -av -k 1 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl" 
		"FollowTranslate" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl" 
		"FollowRotate" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_FK_Ctrl" 
		"FollowTranslate" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_FK_Ctrl" 
		"FollowRotate" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_IK_Ctrl" 
		"ArmLength" " -k 1 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Shoulder_FK_Ctrl" 
		"rotate" " -type \"double3\" -30.24165634262266877 -29.54593014919523597 15.61530349670201545"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Elbow_FK_Ctrl" 
		"rotate" " -type \"double3\" -0.88102977964468632 15.92454952853412919 44.95133087016681372"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Wrist_FK_Ctrl" 
		"translate" " -type \"double3\" -0.027632546392204024 -0.012747841443373997 -0.0047061472306352999"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Wrist_FK_Ctrl" 
		"rotate" " -type \"double3\" -79.11878330034119244 0 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl" 
		"blendParent1" " -k 1 1"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Hip_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Hip_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Hip_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Hip_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Knee_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Knee_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 24.06655252181143467"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ankle_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ankle_FK_Ctrl" 
		"translate" " -type \"double3\" -0.064024084008005189 0.0094268300203514104 0.0062168000016818289"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ankle_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ankle_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -5.48464999230898442"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Hip_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Hip_FK_Ctrl" 
		"rotate" " -type \"double3\" -42.96321914690549448 -14.46015189554941394 -15.00926081409707713"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Knee_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Knee_FK_Ctrl" 
		"translate" " -type \"double3\" -0.17800385461146392 -0.077624468468911564 0.025193330805310849"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Knee_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Knee_FK_Ctrl" 
		"rotate" " -type \"double3\" 1.84156309730946632 -1.41294910866952717 30.33047851076414858"
		
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ankle_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ankle_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ankle_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ankle_FK_Ctrl" 
		"rotate" " -type \"double3\" 13.84457170276454896 1.46404184999442943 -5.918766913322413"
		
		2 "|SailorBlueGuy_HankW:Sword" "translate" " -type \"double3\" 0 0 0"
		2 "SailorBlueGuy_HankW:Geo_Layer" "displayType" " 2"
		2 "SailorBlueGuy_HankW:Geo_Layer" "visibility" " 1"
		2 "SailorBlueGuy_HankW:TeethShapes" "w[0:1]" " -s 2 0 0"
		2 "SailorBlueGuy_HankW:TeethShapes" "weight" " -s 2"
		2 "SailorBlueGuy_HankW:groupParts87" "inputComponents" " -type \"componentList\" 1 \"f[840:16996]\""
		
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.L_Arm_IKFK" 
		"SailorBlueGuy_HankWRN.placeHolderList[1]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.R_Arm_IKFK" 
		"SailorBlueGuy_HankWRN.placeHolderList[2]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.L_Leg_IKFK" 
		"SailorBlueGuy_HankWRN.placeHolderList[3]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.R_Leg_IKFK" 
		"SailorBlueGuy_HankWRN.placeHolderList[4]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.MasterScale" 
		"SailorBlueGuy_HankWRN.placeHolderList[5]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[6]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[7]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[8]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[9]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[10]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Transform_Ctrl_Grp|SailorBlueGuy_HankW:Transform_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[11]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[12]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[13]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[14]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[15]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[16]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[17]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[18]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[19]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[20]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[21]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:COG_Ctrl_Grp|SailorBlueGuy_HankW:COG_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[22]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[23]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[24]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[25]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[26]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[27]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[28]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[29]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[30]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[31]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[32]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Pelvis_FK_Ctrl_Grp|SailorBlueGuy_HankW:Pelvis_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[33]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[34]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[35]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[36]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[37]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[38]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[39]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[40]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[41]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[42]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[43]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_01_Fk_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[44]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Neck_02_Fk_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[45]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[46]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[47]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[48]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[49]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[50]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[51]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[52]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[53]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[54]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[55]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[56]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.CloseMouth" 
		"SailorBlueGuy_HankWRN.placeHolderList[57]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.OpenMouth" 
		"SailorBlueGuy_HankWRN.placeHolderList[58]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.Ooo" 
		"SailorBlueGuy_HankWRN.placeHolderList[59]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.LeftSmile" 
		"SailorBlueGuy_HankWRN.placeHolderList[60]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.RightSmile" 
		"SailorBlueGuy_HankWRN.placeHolderList[61]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.FullSmile" 
		"SailorBlueGuy_HankWRN.placeHolderList[62]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.LeftClosedSmile" 
		"SailorBlueGuy_HankWRN.placeHolderList[63]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.RightClosedSmile" 
		"SailorBlueGuy_HankWRN.placeHolderList[64]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.FullClosedSmile" 
		"SailorBlueGuy_HankWRN.placeHolderList[65]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.F" 
		"SailorBlueGuy_HankWRN.placeHolderList[66]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.OW" 
		"SailorBlueGuy_HankWRN.placeHolderList[67]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.H" 
		"SailorBlueGuy_HankWRN.placeHolderList[68]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.MB" 
		"SailorBlueGuy_HankWRN.placeHolderList[69]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.Angry" 
		"SailorBlueGuy_HankWRN.placeHolderList[70]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.LeftEyebrowDown" 
		"SailorBlueGuy_HankWRN.placeHolderList[71]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.RightEyebrowDown" 
		"SailorBlueGuy_HankWRN.placeHolderList[72]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.LeftEyebrowRaise" 
		"SailorBlueGuy_HankWRN.placeHolderList[73]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.RightEyebrowRaise" 
		"SailorBlueGuy_HankWRN.placeHolderList[74]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.NostrilFlare" 
		"SailorBlueGuy_HankWRN.placeHolderList[75]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.UH" 
		"SailorBlueGuy_HankWRN.placeHolderList[76]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.TeethOpen" 
		"SailorBlueGuy_HankWRN.placeHolderList[77]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.TeethClosed" 
		"SailorBlueGuy_HankWRN.placeHolderList[78]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[79]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[80]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[81]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.visibility" 
		"SailorBlueGuy_HankWRN.placeHolderList[82]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[83]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[84]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[85]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[86]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[87]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl_Grp|SailorBlueGuy_HankW:Head_Fk_Ctrl|SailorBlueGuy_HankW:Face_Ctrl_Grp|SailorBlueGuy_HankW:Face_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[88]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[89]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[90]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[91]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:L_Eye_Ctrl_Grp|SailorBlueGuy_HankW:L_Eye_Ctrl.L_Eye_Close" 
		"SailorBlueGuy_HankWRN.placeHolderList[92]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:L_Eye_Ctrl_Grp|SailorBlueGuy_HankW:L_Eye_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[93]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:L_Eye_Ctrl_Grp|SailorBlueGuy_HankW:L_Eye_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[94]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:L_Eye_Ctrl_Grp|SailorBlueGuy_HankW:L_Eye_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[95]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:R_Eye_Ctrl_Grp|SailorBlueGuy_HankW:R_Eye_Ctrl.R_Eye_Close" 
		"SailorBlueGuy_HankWRN.placeHolderList[96]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:R_Eye_Ctrl_Grp|SailorBlueGuy_HankW:R_Eye_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[97]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:R_Eye_Ctrl_Grp|SailorBlueGuy_HankW:R_Eye_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[98]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Neck_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl_Grp|SailorBlueGuy_HankW:Eye_Ctrl|SailorBlueGuy_HankW:R_Eye_Ctrl_Grp|SailorBlueGuy_HankW:R_Eye_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[99]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[100]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[101]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[102]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[103]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[104]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[105]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[106]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[107]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[108]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[109]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[110]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[111]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[112]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[113]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[114]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[115]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[116]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[117]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[118]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[119]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[120]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[121]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[122]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[123]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[124]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[125]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[126]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[127]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[128]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[129]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[130]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[131]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Spine_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:Spine_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[132]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[133]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[134]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[135]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[136]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[137]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[138]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[139]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[140]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[141]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[142]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[143]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[144]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[145]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[146]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[147]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[148]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[149]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[150]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[151]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[152]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[153]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[154]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[155]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[156]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[157]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[158]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[159]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[160]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[161]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[162]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[163]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[164]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Thumb_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[165]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[166]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[167]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[168]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[169]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[170]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[171]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[172]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[173]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[174]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[175]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[176]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[177]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[178]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[179]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[180]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[181]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[182]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[183]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[184]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[185]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[186]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[187]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[188]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[189]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[190]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[191]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[192]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[193]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[194]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[195]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[196]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[197]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pointer_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[198]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[199]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[200]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[201]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[202]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[203]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[204]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[205]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[206]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[207]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[208]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[209]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[210]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[211]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[212]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[213]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[214]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[215]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[216]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[217]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[218]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[219]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[220]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[221]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[222]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[223]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[224]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[225]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[226]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[227]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[228]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[229]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[230]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Middle_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[231]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[232]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[233]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[234]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[235]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[236]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[237]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[238]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[239]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[240]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[241]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[242]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[243]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[244]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[245]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[246]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[247]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[248]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[249]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[250]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[251]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[252]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[253]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[254]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[255]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[256]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[257]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[258]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[259]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[260]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[261]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[262]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[263]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Ring_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[264]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[265]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[266]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[267]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[268]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[269]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[270]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[271]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[272]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[273]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[274]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[275]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[276]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[277]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[278]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[279]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[280]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[281]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[282]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[283]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[284]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[285]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[286]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[287]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[288]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[289]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[290]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[291]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[292]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[293]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[294]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[295]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[296]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Hand_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Pinky_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[297]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[298]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[299]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[300]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[301]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[302]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[303]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[304]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[305]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[306]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[307]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[308]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[309]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[310]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[311]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[312]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[313]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[314]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[315]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[316]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[317]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[318]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[319]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[320]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[321]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[322]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[323]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[324]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[325]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[326]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[327]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[328]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[329]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Thumb_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[330]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[331]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[332]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[333]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[334]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[335]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[336]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[337]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[338]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[339]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[340]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[341]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[342]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[343]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[344]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[345]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[346]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[347]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[348]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[349]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[350]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[351]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[352]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[353]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[354]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[355]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[356]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[357]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[358]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[359]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[360]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[361]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[362]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pointer_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[363]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[364]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[365]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[366]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[367]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[368]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[369]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[370]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[371]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[372]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[373]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[374]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[375]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[376]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[377]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[378]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[379]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[380]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[381]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[382]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[383]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[384]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[385]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[386]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[387]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[388]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[389]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[390]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[391]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[392]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[393]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[394]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[395]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Middle_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[396]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[397]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[398]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[399]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[400]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[401]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[402]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[403]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[404]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[405]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[406]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[407]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[408]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[409]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[410]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[411]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[412]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[413]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[414]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[415]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[416]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[417]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[418]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[419]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[420]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[421]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[422]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[423]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[424]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[425]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[426]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[427]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[428]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Ring_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[429]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[430]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[431]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[432]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[433]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[434]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[435]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[436]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[437]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[438]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[439]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_01_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[440]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[441]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[442]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[443]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[444]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[445]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[446]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[447]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[448]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[449]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[450]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_02_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[451]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[452]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[453]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[454]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[455]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[456]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[457]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[458]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[459]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[460]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[461]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Hand_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Pinky_Knuckle_03_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[462]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[463]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[464]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[465]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[466]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[467]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[468]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[469]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[470]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[471]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[472]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Clav_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[473]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[474]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[475]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[476]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[477]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[478]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[479]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[480]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[481]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[482]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[483]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Shoulder_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[484]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[485]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[486]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[487]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[488]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[489]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[490]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[491]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[492]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[493]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[494]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Elbow_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[495]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[496]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[497]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[498]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[499]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[500]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[501]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[502]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[503]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[504]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[505]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_Ctrl_Grp|SailorBlueGuy_HankW:L_Arm_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Wrist_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[506]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[507]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[508]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[509]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[510]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[511]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[512]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[513]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[514]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[515]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[516]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Clav_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[517]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[518]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[519]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[520]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Arm_PV_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[521]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[522]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.Stretch" 
		"SailorBlueGuy_HankWRN.placeHolderList[523]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.MaxStretch" 
		"SailorBlueGuy_HankWRN.placeHolderList[524]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.ArmLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[525]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.UpperArmLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[526]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.LowerArmLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[527]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[528]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[529]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[530]" ""
		5 3 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotatePivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[531]" ""
		5 3 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotatePivotTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[532]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[533]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[534]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[535]" ""
		5 3 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotateOrder" 
		"SailorBlueGuy_HankWRN.placeHolderList[536]" ""
		5 3 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.rotateOrder" 
		"SailorBlueGuy_HankWRN.placeHolderList[537]" ""
		5 3 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.parentInverseMatrix" 
		"SailorBlueGuy_HankWRN.placeHolderList[538]" ""
		5 3 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl.blendParent1" 
		"SailorBlueGuy_HankWRN.placeHolderList[539]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[540]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[541]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[542]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Arms_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Arm_IK_Base_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[543]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[544]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[545]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[546]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[547]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[548]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[549]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[550]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[551]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[552]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[553]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Clav_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[554]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[555]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[556]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[557]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Base_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[558]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[559]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[560]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[561]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[562]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.RockFoot" 
		"SailorBlueGuy_HankWRN.placeHolderList[563]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.HeelRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[564]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.HeelPivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[565]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.HeelTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[566]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ToeRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[567]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ToePivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[568]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ToeTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[569]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.BallRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[570]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.BallPivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[571]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.BallTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[572]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ToeTapRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[573]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ToeTapPivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[574]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ToeTapTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[575]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.FootRoll" 
		"SailorBlueGuy_HankWRN.placeHolderList[576]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.ControlVis" 
		"SailorBlueGuy_HankWRN.placeHolderList[577]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.Stretch" 
		"SailorBlueGuy_HankWRN.placeHolderList[578]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.MaxStretch" 
		"SailorBlueGuy_HankWRN.placeHolderList[579]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.LegLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[580]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.UpperLegLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[581]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.LowerLegLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[582]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[583]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[584]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[585]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[586]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[587]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[588]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:L_Leg_PV_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[589]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.FollowTranslate" 
		"SailorBlueGuy_HankWRN.placeHolderList[590]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.FollowRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[591]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[592]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[593]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[594]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[595]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[596]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[597]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.scaleX" 
		"SailorBlueGuy_HankWRN.placeHolderList[598]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.scaleY" 
		"SailorBlueGuy_HankWRN.placeHolderList[599]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Clav_FK_Ctrl.scaleZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[600]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[601]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[602]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[603]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Base_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[604]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[605]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[606]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[607]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl_Offset_Grp|SailorBlueGuy_HankW:R_Leg_PV_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[608]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.translateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[609]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.translateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[610]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.translateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[611]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.Follow" 
		"SailorBlueGuy_HankWRN.placeHolderList[612]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.RockFoot" 
		"SailorBlueGuy_HankWRN.placeHolderList[613]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.HeelRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[614]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.HeelPivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[615]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.HeelTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[616]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ToeRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[617]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ToePivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[618]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ToeTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[619]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.BallRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[620]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.BallPivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[621]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.BallTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[622]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ToeTapRotate" 
		"SailorBlueGuy_HankWRN.placeHolderList[623]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ToeTapPivot" 
		"SailorBlueGuy_HankWRN.placeHolderList[624]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ToeTapTwist" 
		"SailorBlueGuy_HankWRN.placeHolderList[625]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.FootRoll" 
		"SailorBlueGuy_HankWRN.placeHolderList[626]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.ControlVis" 
		"SailorBlueGuy_HankWRN.placeHolderList[627]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.Stretch" 
		"SailorBlueGuy_HankWRN.placeHolderList[628]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.MaxStretch" 
		"SailorBlueGuy_HankWRN.placeHolderList[629]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.LegLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[630]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.UpperLegLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[631]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.LowerLegLength" 
		"SailorBlueGuy_HankWRN.placeHolderList[632]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.rotateY" 
		"SailorBlueGuy_HankWRN.placeHolderList[633]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.rotateX" 
		"SailorBlueGuy_HankWRN.placeHolderList[634]" ""
		5 4 "SailorBlueGuy_HankWRN" "|SailorBlueGuy_HankW:Walker|SailorBlueGuy_HankW:Controls|SailorBlueGuy_HankW:Legs_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Main_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl_Grp|SailorBlueGuy_HankW:R_Leg_IK_Ctrl.rotateZ" 
		"SailorBlueGuy_HankWRN.placeHolderList[635]" ""
		5 3 "SailorBlueGuy_HankWRN" "SailorBlueGuy_HankW:Geo_Layer.drawInfo" 
		"SailorBlueGuy_HankWRN.placeHolderList[636]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "275B4047-43E1-AF09-A276-6B9E65E39F77";
	setAttr ".version" 5;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0A438D8F-4B68-4FD6-EBFB-618CCF34A51C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|left\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 882\n            -height 383\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 882\n            -height 383\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1_group|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 882\n            -height 383\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1771\n            -height 811\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"MG-PickerStudio_3DPanel\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"MG-PickerStudio_3DPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1771\\n    -height 811\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1771\\n    -height 811\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A7DBE56A-4551-A98C-B47F-D498C644C03E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 193 -ast 1 -aet 300 ";
	setAttr ".st" 6;
createNode polySeparate -n "polySeparate1";
	rename -uid "F0512B8D-419F-AFD0-EE79-749EAB61F415";
	setAttr ".ic" 47;
	setAttr -s 47 ".out";
createNode groupId -n "groupId1";
	rename -uid "3B4D620F-46E6-A9CB-96AF-7AAFB209DD9E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "564EC8D8-46FC-1F85-C15F-E0AC14AAED97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "33409422-4BDB-EFB6-93F6-14A07F7847BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "8EF22783-44EE-8EE2-0E0B-4ABA9109EF19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId4";
	rename -uid "0B464E6A-4FF0-A357-1A26-328095E8EC33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A877646F-4B5C-2C53-6917-F396A2B1E6E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId5";
	rename -uid "78D65F79-49B8-0D3D-D0D5-04B5DC41EDB0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "A32C32C4-4553-05C7-5048-97B2B0F0A4B2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId6";
	rename -uid "873CC082-4C0D-C315-4FAB-4FA917C201D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "37BCEEC2-4611-9FDA-BF2C-80A59BACC4BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId7";
	rename -uid "DED9C1EB-4330-E9AA-2F26-5EA836C8DCFA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "2064275E-4D31-B332-9AE2-0896B1FD7081";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId8";
	rename -uid "AF1434F8-45FB-D343-C885-2AB7CE8C4B11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "DBCA3CFE-431C-BD93-8EA9-F2A4AA132087";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId9";
	rename -uid "00D136C4-4315-9F85-9D94-ADA200562A72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "F9232859-45FF-28A8-BE60-E2A5FA7FD404";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:199]";
createNode groupId -n "groupId10";
	rename -uid "FA8BF841-485E-2DFC-932F-5F8CC1EEFCC3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "E57634ED-473F-287F-6C4F-D6BD2FB7B5D2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:199]";
createNode groupId -n "groupId11";
	rename -uid "9EDC3987-412B-0A01-4616-75BD423A0B4B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "8599BF7F-4EAE-ABEC-6470-67B3C57AEB21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "groupId12";
	rename -uid "2B2D9FD7-492F-348D-A966-F6A6FBD7BD44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "CB91E791-4D73-4CF2-2D76-8EBF35E59EA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "groupId13";
	rename -uid "012E5EA8-4C21-9F2F-3C0B-D7860D98C6B2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "5A33EF4B-4998-7DDC-8FA8-D4A7AD2C75D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId14";
	rename -uid "616C8F10-4E57-6CD1-FD03-9CB04A784C64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "F42AD29E-4DD0-7324-75C0-11812B96D2BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId15";
	rename -uid "92F07840-461C-E377-9D07-80A00C83B7CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "2E800CE4-480C-818D-D9CF-BC86D7AE755E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId16";
	rename -uid "7B8A945C-4B83-2C6D-1CCE-9187CEA185E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "30D1B1E2-4554-61B5-BDE1-AC9BD7831F77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId17";
	rename -uid "63A3E184-4D31-D51B-7532-10987D6DB098";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "B8D062A6-4CD9-8FAB-97D8-B4B5383A3F8B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId18";
	rename -uid "73C10638-4158-136C-C676-96A8100D9EE2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "3850C254-4190-0D0F-5D99-58A7033EECE2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId19";
	rename -uid "E9AC1E6A-4A48-A4B2-4F17-77BFFB65A1C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "CFCB4053-45DF-3B43-E6FA-C3B84910A0A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId20";
	rename -uid "DD504732-400E-9034-4C10-98BCF900317E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "81A4BDFF-4ACA-F7F8-89FE-55B9E960B383";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId21";
	rename -uid "02A57C16-4A02-D5F2-7543-5BAD0F845AF4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "8A4CD2E8-4FAD-AD90-1FAF-1498E4F544C3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId22";
	rename -uid "7FE983B0-4490-ABE9-55AE-CBAB4313D839";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "325385DD-4609-9982-9AF5-2BA0F1A5B4BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId23";
	rename -uid "A9D93256-40F9-18D6-DA42-25A31857F339";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "5DDAB678-4537-826D-F104-F8B18715B13E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId24";
	rename -uid "B91CB1C2-46B4-F109-972F-ED9E1062B3D7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "FF9FF3ED-49A9-142E-A393-12BFD9C9D8A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId25";
	rename -uid "A8A30706-47C8-BB32-7D02-99B23B304883";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "830482AF-4F3C-3F52-4775-CEBED4712871";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId26";
	rename -uid "264DA945-49A1-4332-3B09-B88439C41615";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "41043C60-456E-9F24-D826-8DAC46D59FC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId27";
	rename -uid "28C3D729-47EC-BE0B-B49B-52ADDA10EC1C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "EF4F6916-4A62-52ED-3576-5E9CF479A4F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId28";
	rename -uid "E0E0508C-4ED1-48B9-3B30-8392CFF134F1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "259D16B6-43D9-A5C2-8EBD-14A5719FE81E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:28]";
createNode groupId -n "groupId29";
	rename -uid "E57814EB-474C-592E-EEF1-4DA18ECC4114";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "5F2FC293-4356-3CB2-F71B-E19BABE7CEE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:71]";
createNode groupId -n "groupId30";
	rename -uid "C130418A-496F-D7F9-F99D-3DA7D5303B7F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "EAA321F7-4C20-4567-05C5-5385D774E322";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:439]";
createNode groupId -n "groupId31";
	rename -uid "9B7C0A73-419A-FD46-946F-E7B93179F390";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "337598F6-40AA-69F2-7126-78877C1255B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId32";
	rename -uid "505F4C45-4FA4-9EA5-B7B3-F8862FC5D64B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "C7BC010F-4AEF-DF79-C33D-4F9E8DA3C4EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId33";
	rename -uid "CA09CAB3-4E69-FCE1-AC34-998D81991B12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "6FF5D0F0-46F1-18EC-9613-33B6505917EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId34";
	rename -uid "45146CB0-4769-9D7C-B354-92BAC9A437BB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "62D6CD1E-4386-99A0-011B-328E32B38BDD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId35";
	rename -uid "30155848-4C55-ADBC-72C2-37ABEF3401C9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "7BB4C786-4AAF-A6B9-8554-928223EF8F4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId36";
	rename -uid "201EA091-4FA3-3F99-58BE-D3B38EE7A384";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "B4A68B96-4B29-5EAD-9FE6-72B96B311BAE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId37";
	rename -uid "4EE8860E-4B76-FBDA-0496-819336E0C7BC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "C72B8861-4F18-A441-315E-8482644DF90E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId38";
	rename -uid "37FD2378-41A1-0354-2501-90BA46D0E49A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "61C4BC6B-41F7-5C29-7439-86AF9787B4D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId39";
	rename -uid "A38F598E-4A35-6276-5D7D-18B577DF8011";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "CABB0E8B-4359-4660-3E5D-50A25E5441A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId40";
	rename -uid "D37D34CF-40C7-33B4-B21F-FDB2AC4DC016";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "1FCA1290-4084-1CAF-C1F2-DEACD8C00CF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId41";
	rename -uid "F749E3A5-4BFB-7265-3E66-BA81F58D86D9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "288D7B8C-4FC7-96D2-83B2-DA84EC5F0B85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId42";
	rename -uid "140FEFCC-4AA9-0685-50D4-E29A3A43C290";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "E1F83537-4846-FE8E-0860-858FD932B937";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId43";
	rename -uid "DF4172B9-4006-A828-17F8-8CA0263572EB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "81C76390-41DE-513F-2524-7DB8F5813926";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId44";
	rename -uid "26E6AED4-4CCF-3EA2-85DF-82AD48346C79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "36F85D29-472F-0AC6-1538-10AA857C7C42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId45";
	rename -uid "24E1ED7C-4D2C-97F0-F197-089AE6748187";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "6987A93C-4559-F6F2-15B4-FA90E0AFA47A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId46";
	rename -uid "9E644255-4429-F588-7755-679B8410F394";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "D4A76E1F-4F68-529E-98C4-1485AD1A9F63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId47";
	rename -uid "1EA4829D-4A09-8D57-6180-C781BA9B8CDB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "822D83B6-4BA1-FE4D-E6B9-BA9E1640E927";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId48";
	rename -uid "DFCF05C2-4846-3A4D-6397-CE891D833451";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "47D99F60-44B2-3B0A-BCAD-598E65FAFAC7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:98]";
createNode groupId -n "groupId49";
	rename -uid "746A6CC4-4109-F78C-CB80-9197423DEC32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "8BFB34C5-4985-C9C6-497E-7FA641EAF920";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:78]";
createNode polyUnite -n "polyUnite1";
	rename -uid "CF161FE2-45FB-85AA-560A-618421A571BE";
	setAttr -s 39 ".ip";
	setAttr -s 39 ".im";
createNode groupId -n "groupId50";
	rename -uid "A4ED1D9E-41CA-FB10-1A06-69A4602F32AC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "915CBE13-4EB5-5B9C-3409-B49585D1EE69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1743]";
createNode polyUnite -n "polyUnite2";
	rename -uid "7108059D-466F-E46A-07CC-D4A8ACDB07F4";
	setAttr -s 8 ".ip";
	setAttr -s 8 ".im";
createNode groupId -n "groupId51";
	rename -uid "9D61177C-430F-7655-05A3-98B35D317269";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "4E69C903-4B83-3A4F-4A10-9580AA62E698";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode animCurveTL -n "L_Elbow_FK_Ctrl_translateX";
	rename -uid "0C7C68D9-42E7-CDB0-2986-23A620EC43B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Elbow_FK_Ctrl_translateY";
	rename -uid "4E1ADD6E-445C-C73C-9251-44A71D181A02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Elbow_FK_Ctrl_translateZ";
	rename -uid "5B5B6354-433D-C26A-48CF-A0BDCE6322D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Shoulder_FK_Ctrl_translateX";
	rename -uid "6D3B5650-4C2F-35D1-EE03-A2B8FFEE34D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 0 47.040009013605442 0 94.080021598639462 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Shoulder_FK_Ctrl_translateY";
	rename -uid "90CDEA27-49D4-0124-6FAE-B6872E4DB5E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 0 47.040009013605442 0 94.080021598639462 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Shoulder_FK_Ctrl_translateZ";
	rename -uid "1A2D4FBE-41B6-DBA6-49DC-85A4B2AF8E0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 0 47.040009013605442 0 94.080021598639462 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Wrist_FK_Ctrl_translateX";
	rename -uid "51D2CC4D-4594-6034-A6B1-3EB42E6BC1B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.0021848936237646114 48 -0.0021848936237646114;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Wrist_FK_Ctrl_translateY";
	rename -uid "9ED71C26-481D-7194-1557-13999E8ACCE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.0010496369340747926 48 -0.0010496369340747926;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Wrist_FK_Ctrl_translateZ";
	rename -uid "679608D8-4FE3-FF50-03B7-E58C4982D9FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.0036389633187563445 48 0.0036389633187563445;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Clav_FK_Ctrl_translateX";
	rename -uid "64674918-4E8A-A069-333B-579F9E9144E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Clav_FK_Ctrl_translateY";
	rename -uid "C9E5DA90-4240-BBDC-5EAC-7A8485E603F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Clav_FK_Ctrl_translateZ";
	rename -uid "8464F58B-41A3-EDFB-3916-AD82638046A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "C7530EA9-4D2C-8497-F3BC-A7899AB55FE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "65646818-4256-5E06-8578-7BB57E87836B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "3582AE6B-4050-E7A6-A92F-41B0A62A9E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "ED002D6F-467B-3B68-5C23-938A1BEDF230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "B33576E7-4897-97DE-2C39-46A088C0CBE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "038E5FD2-4E56-A35B-53AF-B3A803A8A5B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "2DF973F2-4761-55A4-1BE7-8BB478C1FEF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "D537E70A-4539-104E-561C-13922F8A66B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Middle_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "8DD7DE0A-4647-2611-F37B-FF82BD2ACB49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "C10C02D2-45F1-A075-F4E9-7484476581FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "4C8BE2BF-4963-124D-3DAE-A59C49334C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "D4202755-4A6F-8513-3A38-B683B2AB425D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "499D425E-4417-16C2-8ADB-A09F03583D9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "CB0D51AF-4C43-C2EF-1266-39A629AC8548";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "0602F9BC-4D16-EFEA-ED68-D3AFBCA0B8DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "6BA1DFAB-45BD-07A2-7428-39825D6AACA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "73975E1F-43CE-AD71-B6E5-7884E5D7DDE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pinky_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "E169304D-4168-A361-A0D0-DCABF33CF1E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "01ECA921-4C41-A6DD-D59B-A78A7AC136F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "F01791F0-44A8-BA10-BBA9-4F815CEA1F52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "F1BA9A34-4118-66EA-6D3F-BD940FDA53D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "52CFB320-4864-6AFA-788A-5F8549716595";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "01FC4BA7-4017-80C8-9DA6-00AF7AC9C7C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "6872AB7E-438C-4560-BAD9-73AA54084C39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "8D96D424-4BA6-EE28-67DC-8FB5D605E0D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "19687135-4ED1-B7BE-1536-46AD32C0F0C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Pointer_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "BB035819-46A6-F0AD-1762-0D95702D5E8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "29B33867-4571-D681-2700-92B6B6CB306C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "8B42E8B1-4004-D3DE-F529-599C9FED562E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "2C92209D-42CB-1489-913C-A9A7D3B978DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "AE941708-4B86-E619-E112-AF93C4B0006B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "5ED278E3-4E99-A722-EC58-6882F256918F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "DA21169E-4CE5-1E15-6167-B9A7191B0430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "1F00261D-4CF9-1E84-0C86-74A080E117CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "4F85671A-4487-8CC8-2D7E-5F9A920C5A48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Ring_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "53BD2A1B-4886-015B-432D-EBBACD1385F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "05DCC9B1-4210-BD02-B65C-249F14F60E2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "530D719A-4F1E-AACE-61BF-E4BFF2517B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "EA9C942C-4D09-BA9D-C15A-F68AFC95E122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "3BAB1B6D-4947-78FD-A424-F889906AC789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "61C68A35-4E6E-68D9-C744-7C80F9F5EE87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "CFF6AC8E-46B9-7DA3-3144-CAB82E0A4EE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "2D2DA7F4-4B17-5409-CF44-FCB50C1D83CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "AE1CE1C7-468D-F0E4-C713-BDAF3846F4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Thumb_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "9357112C-4C85-A265-7475-B9892F872452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Arm_IK_Base_Ctrl_translateX";
	rename -uid "03562577-4612-E137-9C2A-22ADA8D8D439";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Arm_IK_Base_Ctrl_translateY";
	rename -uid "11385DA2-4A58-C269-0AD0-8D9B0B60D1D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Arm_IK_Base_Ctrl_translateZ";
	rename -uid "D67500F4-43DE-254D-F29A-9EAC5B8354D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "D7596D7B-454C-AC17-0C85-45A0D6EAB22B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.2996515756930123;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "905EEC61-4A05-015A-B4D5-96BDC6EB2D86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.45702513319176319;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "9690F001-44C3-2D62-BE06-98835BBB7D2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0371905736982967;
createNode animCurveTL -n "R_Arm_PV_Ctrl_translateX";
	rename -uid "E3A9A593-4486-7AE0-FA70-BFB228C8752F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.88612475222846543;
createNode animCurveTL -n "R_Arm_PV_Ctrl_translateY";
	rename -uid "209D3593-425C-A973-EBD4-F9B1D3235906";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.50678375212238824;
createNode animCurveTL -n "R_Arm_PV_Ctrl_translateZ";
	rename -uid "91056321-45A3-AD41-EFD9-9FA71AD55BFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -3.8926097770217183;
createNode animCurveTL -n "R_Clav_FK_Ctrl_translateX";
	rename -uid "90EF1BA4-4FE4-7607-B125-109BC636200C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Clav_FK_Ctrl_translateY";
	rename -uid "F7EF76CC-41C2-250E-1E4C-F090E140A5FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Clav_FK_Ctrl_translateZ";
	rename -uid "357E49A2-4CCA-9435-9A2F-1DA95F5A6A4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "21966F6F-4FDC-3A64-A4AC-3DA6BD08EFEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "7C88B117-4E02-00B8-42CA-FC8F91C3D85E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "F6EF9F05-468F-9C5C-17A8-A39E8CD73216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "F1F56FCC-4CF0-73FD-3408-FCA2F5C434CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "CD5A9E39-4894-F0C0-C6FC-8E8C6B539067";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "EDDE74B0-4288-33EF-F64E-08AAF1A8FF2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "01FE02C3-4968-521E-E3BE-C29C0DB0332E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "07A681C4-4604-1FE7-42BA-9787EC0652EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Middle_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "96E1F931-4804-0054-4DE7-BBB6BC981D16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "2DE1293F-41D4-CF72-9264-AF8CBEA4EF91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "A2850BB2-407C-1E91-E55A-17908C66B78B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "A90ADABE-46C7-6B1F-EBDA-4EB07F16733A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "B88FD1B8-4FB1-64C9-D95C-C19701A5F090";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "8D8339A0-4CA6-A84C-2970-FF8B26019976";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "F7A11CED-466D-3A95-5C85-F0BF3A50F148";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "AED8348B-45F7-5368-12FB-179C0E5647C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "81248876-42B8-6436-DBAD-51883E235B3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pinky_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "61B5CD86-4FFC-8249-B5F3-94B669FA717C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "94F08D24-49E3-5A75-FE17-0F8862005296";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "47ACC6C2-47EE-63FB-9182-32811467CA21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "ACF5AC52-4195-34AA-0A6F-62962BFE0437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "EDDB09B1-4D1C-99F8-6CEE-6EBA00E37EE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "A5591F51-48AD-2833-385A-19AC91EA8D9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "4046800B-4436-23BC-DEE0-B0978162CAEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "2CBAC6CC-4543-A9D8-CEEF-8C89E23A9949";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "A9F8A3E0-4833-D285-B605-9CB470316C98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Pointer_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "3D7B9596-4CE1-9AEB-CD1C-359901094185";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "F9317FAA-4CA0-E1AF-850D-3EA66E1CD118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "13156BDC-4C74-9538-E37D-D5A7114CE080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "6B60AFC8-4257-AF91-346B-6E9B241B953C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "7EDABAD5-4EC0-7569-4EE2-2EB9A96CF727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "0F59BB92-4C4D-A9D0-4DD0-0EA6324FE2E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "D9043954-4C4F-2BB1-8F47-A6BA08D83528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "BE8EA85B-4BDF-8E25-CBC9-E7AB19C563A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "DEC8C9D5-4ECA-A9E4-B5F9-CDAB6DEAB502";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Ring_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "5FA6DA1F-4D19-8C75-90C1-06B837CD2DE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "42BBCC27-4E40-1C0E-835C-2BA1D2B03A29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "63019BF0-4674-7182-8696-7A8C25AA524A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "AF09DC2B-4CDD-2BEB-A7C2-7FBA12DD387C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "7D0C710F-4299-2C30-382C-F0A365231003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "3FC209F1-4805-7099-3BE9-45BDF19263EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "D1F7D3EF-487D-D60D-A3FC-97930A39E410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "60DCF27E-48C5-8C73-3EEA-71BCE5744FC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "878B8D62-4B40-24E1-48BF-63881D651197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Thumb_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "D64A12CB-4816-8F64-625C-A988959E804D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "COG_Ctrl_translateX";
	rename -uid "8181E283-41EE-39C7-79E8-19BA99BD87E1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 0 94 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "5154B563-40B1-3A42-47B9-E588C5EA4547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0.02073917265336029 50 0.034885677030292855
		 94 0.02073917265336029;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "COG_Ctrl_translateZ";
	rename -uid "490C0BF6-48A9-DF4B-FBE2-EE95CCFA095D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  5 0 52 0.13050149704606084 96 0;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Leg_Clav_FK_Ctrl_translateX";
	rename -uid "7B4D6EFA-4CC6-5D24-3733-819DB3037CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_Clav_FK_Ctrl_translateY";
	rename -uid "CFA697E2-417A-A6E2-3574-278EF6476A22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_Clav_FK_Ctrl_translateZ";
	rename -uid "A244C930-45CF-B1DC-C983-5D94355251ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_IK_Base_Ctrl_translateX";
	rename -uid "ACC15389-4B27-C984-AC02-938C9898935A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_IK_Base_Ctrl_translateY";
	rename -uid "88756E84-4819-12FD-721E-7C8CB62642E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_IK_Base_Ctrl_translateZ";
	rename -uid "B77B9116-4D53-757F-7977-18BBE05657FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateX";
	rename -uid "8A72A8F2-410C-4EE6-7A98-A3B5446C2947";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.11448819471425359;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateY";
	rename -uid "87C3B794-4B24-26A1-A0E1-B3864AD55893";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.11160315111297325;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateZ";
	rename -uid "4B11793F-4757-2B60-A6FD-A488A9BE35E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.14745761718664582;
createNode animCurveTL -n "L_Leg_PV_Ctrl_translateX";
	rename -uid "260F8BB1-4EE7-73D4-9F5D-FEAD69F8D897";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_PV_Ctrl_translateY";
	rename -uid "2519F5D7-4144-3C31-1B2E-41996A9C1A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Leg_PV_Ctrl_translateZ";
	rename -uid "654B9782-4855-7D4E-76FC-0C925379658C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_Clav_FK_Ctrl_translateX";
	rename -uid "451565D4-4036-17D3-BEEB-D098AF47BA79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_Clav_FK_Ctrl_translateY";
	rename -uid "9722BE72-43A3-4171-032C-138A69FA110A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_Clav_FK_Ctrl_translateZ";
	rename -uid "2D21771D-49B8-4919-51B8-BB913707CA7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_IK_Base_Ctrl_translateX";
	rename -uid "41DBC931-4EFC-9317-4E2D-43A4D55143A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_IK_Base_Ctrl_translateY";
	rename -uid "13B6C57D-47A5-7F98-6D4A-4A81F7E919B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_IK_Base_Ctrl_translateZ";
	rename -uid "D53E6A3B-4CE0-423A-AA0B-CC8E2FBDFF96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateX";
	rename -uid "F77DD42F-42D9-57C9-B3A1-BAABAEE49EAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.2315585174060357;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateY";
	rename -uid "4992D362-4071-0D9F-28CC-829AFB26E1EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1116031511129834;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateZ";
	rename -uid "FDC6A82F-47AB-400B-4496-A6B682C69462";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.047899118306570732;
createNode animCurveTL -n "R_Leg_PV_Ctrl_translateX";
	rename -uid "7040856B-4071-00CB-9D7E-6F8DA09A8A19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_PV_Ctrl_translateY";
	rename -uid "4E8FF363-472E-170B-5EE0-51AB7BD89902";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Leg_PV_Ctrl_translateZ";
	rename -uid "C87118C2-4692-24F0-63D1-9DA210D63C14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Eye_Ctrl_translateX";
	rename -uid "C695B648-44D6-21C6-39E1-6FBC97B5328B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Eye_Ctrl_translateY";
	rename -uid "FCF2ACEF-49A1-64B8-4B4E-21A167B1CE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Eye_Ctrl_translateZ";
	rename -uid "A81A49E5-4D66-2393-6DA8-F6B3B9A4EA66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Eye_Ctrl_translateX";
	rename -uid "ED242665-4262-7FD7-FE95-7D9C5382662B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "L_Eye_Ctrl_translateY";
	rename -uid "19B52F55-4C75-DFEB-139C-E0A5A112FE74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7763568394002505e-15;
createNode animCurveTL -n "L_Eye_Ctrl_translateZ";
	rename -uid "EC5EE5DC-481E-0E12-6EC7-05BF2BBAD18F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Eye_Ctrl_translateX";
	rename -uid "E74C3F0F-418C-7F2E-2E91-6B87A913671B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "R_Eye_Ctrl_translateY";
	rename -uid "3476A68C-4B3D-A52C-B1E9-F19D68BBD9B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7763568394002505e-15;
createNode animCurveTL -n "R_Eye_Ctrl_translateZ";
	rename -uid "8D3D5BD4-48F1-51DE-31FC-648666BB1AD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Head_Fk_Ctrl_translateX";
	rename -uid "F46C76A2-4DB1-63AF-6CA3-35B37739061C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Head_Fk_Ctrl_translateY";
	rename -uid "7D50F40A-43C2-4907-5F9D-1ABFBB4B5B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Head_Fk_Ctrl_translateZ";
	rename -uid "0A4E6FA3-4060-5201-9602-4CBE7AAF28FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Face_Ctrl_translateX";
	rename -uid "040C3D4B-46E5-A019-A1B5-EC9A854CBD2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Face_Ctrl_translateY";
	rename -uid "89B182EE-4145-D051-1B0D-8E8A8F27D798";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Face_Ctrl_translateZ";
	rename -uid "545C1D5F-4E00-3A7D-34E1-7FA0E3CC46E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Neck_01_Fk_Ctrl_translateX";
	rename -uid "F8DEC353-4B1A-9B59-275E-40ACBC39088A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Neck_01_Fk_Ctrl_translateY";
	rename -uid "A1675E94-48EF-A68C-D455-8594CBCC64DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Neck_01_Fk_Ctrl_translateZ";
	rename -uid "5936D5CC-4B8E-AE2F-34C9-DD8802819160";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Pelvis_FK_Ctrl_translateX";
	rename -uid "1B157BF5-4DFC-820D-B002-6886BAC32992";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Pelvis_FK_Ctrl_translateY";
	rename -uid "D5A22A4A-48DF-57F2-D341-BEA4610B4589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Pelvis_FK_Ctrl_translateZ";
	rename -uid "5E8C0D0C-4D3E-2F8C-F8B0-E2B1F82E8375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_01_FK_Ctrl_translateX";
	rename -uid "A916B74F-4B3C-3D3F-2419-4EBBA8DEE4C5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_01_FK_Ctrl_translateY";
	rename -uid "B0E756F1-4367-E69A-D727-3AA4ABAC2914";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_01_FK_Ctrl_translateZ";
	rename -uid "3AB662A6-450B-98A2-D859-1BB604C59211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_02_FK_Ctrl_translateX";
	rename -uid "5EB1FD4B-49B7-DD2B-5F60-09BF13370E0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 92 0;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_02_FK_Ctrl_translateY";
	rename -uid "27788B64-43A8-2B6B-72DB-5BB8911BBDAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.8248141561850747e-33 48 9.8248141561850747e-33
		 92 9.8248141561850747e-33;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_02_FK_Ctrl_translateZ";
	rename -uid "ACFE2C9B-4F9D-CDFD-4CBA-D58F4D6A4138";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.3057818912215613e-25 48 9.3057818912215613e-25
		 92 9.3057818912215613e-25;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_03_FK_Ctrl_translateX";
	rename -uid "3BFEDC9A-4F7F-9D9B-75DC-74B723D230B2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 86 0 111 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_03_FK_Ctrl_translateY";
	rename -uid "982658AA-4567-AD33-84BD-C890AFBA86DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 86 0 111 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Spine_03_FK_Ctrl_translateZ";
	rename -uid "4875C238-4723-A6DE-3F46-80819C208A76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 86 0 111 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Transform_Ctrl_translateX";
	rename -uid "1683E746-4705-FFDE-3655-9BBEF636EB9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.13133738731235489;
createNode animCurveTL -n "Transform_Ctrl_translateY";
	rename -uid "0DB10028-4879-D101-CC4B-7C874506014D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 91.987306540565868;
createNode animCurveTL -n "Transform_Ctrl_translateZ";
	rename -uid "9EB7CE7C-4178-E793-2DA9-D0A01FF8EA97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 72.424633913849263;
createNode animCurveTA -n "R_Ring_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "96E3781D-44B6-DFA1-30B8-A9B997B46076";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "2417DE57-414F-D926-38E7-1C8D7110F32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "E9873563-4C18-74E1-4659-AA811C530091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 36.689597873940684;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "FC9A8DA6-4968-A2A3-78AD-11B2D25D8341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "5D493005-43E8-EB75-270E-7C80B10F181C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "A4EF0EA0-49A5-42A7-6D30-86AB5FB31557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "3DF1FA61-4B4B-0843-1C40-3C97689A53DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "45A2241E-4498-5A66-FD59-90BA372381CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Transform_Ctrl_rotateX";
	rename -uid "7475E2CF-4213-4C26-61A8-919708324C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Transform_Ctrl_rotateY";
	rename -uid "EA58C923-4625-1566-5052-57B77A0513D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -179.99999999999991;
createNode animCurveTA -n "Transform_Ctrl_rotateZ";
	rename -uid "EF4C56FA-409A-A218-0647-61AE59347DAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Transform_Ctrl_L_Arm_IKFK";
	rename -uid "C2EBC2C2-414D-9DB0-58DE-C5A266706E60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Transform_Ctrl_R_Arm_IKFK";
	rename -uid "991E4498-48DC-70CB-DD4B-B483FE9707F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Transform_Ctrl_L_Leg_IKFK";
	rename -uid "CB33E983-4D48-5FA6-DBC7-9695FF4FF1C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Transform_Ctrl_R_Leg_IKFK";
	rename -uid "74776ED9-415A-6889-BEEB-438453F6CAE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Transform_Ctrl_MasterScale";
	rename -uid "D3171DAB-4AEB-DA46-323C-508AB88E6001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.4;
createNode animCurveTA -n "L_Middle_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "E9AFC793-4CB0-2849-87FD-0DBBF2B31383";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Middle_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "8B6A78B8-46F2-682E-779D-838F38A2E332";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Middle_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "F71AD09E-4F9A-90B5-01E7-18B2258E0612";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "306CC1A3-408A-A1D5-63E7-5CA0A47BDD57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "E600B537-4A79-7484-664C-F290DE15F66F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "EFCAA25C-4CAF-51A2-4F07-B0A32476FE30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "BA5042DB-4DB7-7119-CF95-26B652DEBA55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "80CDB65C-413B-6B8D-3ACB-F7BF7592B6F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Middle_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "868520EA-4EC7-C5E8-D3D7-62BC017757AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Middle_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "407A94AE-4282-8E3F-9964-3091EAFBD4D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Middle_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "BFB35847-4F2F-2800-BA69-FEBFF523CCD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "467BCBE1-49EA-E0CC-DA1C-5FA10862EBFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "35131A36-4BB4-563B-A380-EBA89B115EC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "CDCC5459-495C-F39C-8A32-5A894760CB7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "145B0A18-4F4B-E03C-90EB-E69F3C12061A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "4285F328-4A0E-1637-9198-CBBBCA1A7D90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Pinky_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "8CA33A81-4E3C-CCE4-ABF4-DCA8BEF427BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pinky_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "6D3D1E19-4176-7EC8-46D4-DABF4DFE23BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pinky_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "6AA0E20E-4631-AD24-0E99-DBB03454A721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 28.967850080208962;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "46C2ED41-4EF3-FEF1-3F46-7F80D3B30369";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "1784080A-49BE-0B9E-BAAF-E0AA64B69931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "F29AF594-4316-9163-6F26-71924D688E9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "DF2C8FE3-4F31-B66A-9583-93BE6AA03B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "D7C9749D-4F9B-D069-E00C-7F924075F4FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Pointer_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "54EECC8E-4D90-00E8-07E8-9796465A75FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pointer_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "ACEEEA62-4139-2699-1B7C-13B01B89B0AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pointer_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "09CA91CE-4815-811E-8E99-64B4FBD21D6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 35.277447075697623;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "8DEA2569-4F30-14E9-C280-969FD5831298";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "1C2D7E5A-4C0E-9B2B-3BF6-66BB79642CDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "9AF4940C-4B56-D645-4406-D198C6FEB618";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "1C559642-41F9-64D8-E87A-26AD855C2F5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "E0167A7C-41A7-61F8-0E21-6DA07D2FD24B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Leg_IK_Base_Ctrl_Follow";
	rename -uid "A68D6E5B-4A66-E59A-702E-C98D5EB9071A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_PV_Ctrl_Follow";
	rename -uid "7D8709D0-4AC9-01C9-B718-87BA104C2B25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateX";
	rename -uid "1CDB813F-41C9-1FA1-F26D-4E86D0B7CD56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateY";
	rename -uid "CF3ED5AE-4C0F-056D-4625-C4AB909BB33A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateZ";
	rename -uid "13B3F72D-4242-98BE-EA9A-B6B5E85488B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -17.578119914880951;
createNode animCurveTU -n "L_Clav_FK_Ctrl_scaleX";
	rename -uid "470E4EE4-4EEE-224B-D674-16AD5B41CA1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Clav_FK_Ctrl_scaleY";
	rename -uid "55366C31-4DF9-9E62-6EB0-93A48DBB1069";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Clav_FK_Ctrl_scaleZ";
	rename -uid "FBD49F07-408C-C841-755A-5DAAEA7CE0E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "8AECCF49-4160-BD82-638D-EC87ADAD4901";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Clav_FK_Ctrl_FollowRotate";
	rename -uid "B4476F26-45E9-05CF-6452-5CB6C14E9519";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Thumb_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "F3F1E0A9-43B1-CFEF-4A90-848CFDEA811A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Thumb_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "ED4CA627-4388-7827-E819-84A662373AF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Thumb_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "AB690406-4A65-5D12-F8C2-F08DF13176D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -3.8927144920756418;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "EBFDFB88-424C-28C4-7B34-F8AF9CC6FBF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "7135B628-4583-2D89-4313-B4A3B5F8747D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "32584FE9-4FEE-28C7-429E-74803DD4FE02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "A1282A12-438C-CF61-3EE0-A9ABD5F1FEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "55B81C56-4C94-558C-237E-DAA29052B0F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Thumb_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "4D73649D-4256-084E-348B-70B93646B9DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "AD4EA436-48D5-7618-7D68-F58676E85A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "9ADFC93D-4DB3-D4DD-3BE7-07AA2E1DC709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "15BB0C29-4B98-4795-7C2F-05893F0428FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "A42605F4-4515-DB60-E4BE-4B93C516AEC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "228200E0-4FD2-F6BA-3F01-A099495200C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "115B540A-4B40-2A94-FB46-FB828448125D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "DEA33C3F-4561-1663-6370-3C93035073E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Pinky_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "CB6EFE9C-4D6D-1933-35A5-0E8F1A977280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pinky_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "6CA55743-4DD1-CFCC-EAB9-37BBE46A8FCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pinky_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "3EF26FB1-4569-6789-FE72-B2A042CA24FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "F30361EE-40C7-0C21-6A90-41BA86F7F0D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "643C44B0-4325-BE3B-94F3-44A50C5FBE5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "5D234D29-409B-CB34-283C-4E9A127A3B3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "6DA65171-40D8-6817-6EF3-C0BC3D12C7CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "72A7ABDF-4734-71C2-CE76-A6A32CC2D247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Middle_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "0F781E58-4BA9-C48F-C999-F8B6C2BE7912";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "83EC41FD-4970-EF6C-DE4B-B99B649859A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "D0BF0CF6-4FB7-81DC-6788-D6801282FE3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 40.518495670223764;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "D61B1AE9-47B6-C5B5-2B29-7DAE58DC24CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "BF2493A7-4DB5-AE07-EAAA-2595FD574E33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "F276C58B-4B41-35E6-90A3-8EAC2558ECA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "B943B27C-49BF-86FE-B05A-DDB9D160070F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "36DF52A3-4716-740E-F4A6-80BAD5393815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Leg_Clav_FK_Ctrl_rotateX";
	rename -uid "4F76E02D-4BE9-7B4B-E482-4491CBB9DED9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Leg_Clav_FK_Ctrl_rotateY";
	rename -uid "0B3F5D00-4778-E352-6EB0-B387F898FC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Leg_Clav_FK_Ctrl_rotateZ";
	rename -uid "1166B5DF-45A8-C972-FA53-B6B767D4EBBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_scaleX";
	rename -uid "77BA2410-4977-EE48-FF64-1C9CB847A4F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_scaleY";
	rename -uid "DDFC5EF0-47AA-1D50-A02C-459147EBAF62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_scaleZ";
	rename -uid "55A9B948-47A0-109F-EC44-5FBD1976C7D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "28E1E61D-4B34-3769-9B47-098A7272F317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_FollowRotate";
	rename -uid "B1A5DBE0-417C-0BED-F5FF-40ACB7558123";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Eye_Ctrl_L_Eye_Close";
	rename -uid "04776CF5-4E74-3D52-8ADF-FF9DBE547145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "5B2FC520-42B8-7054-D2D5-03AF124B6656";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "9986CAA5-4E2D-3FEE-AC38-F88C6F2CE10A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "2627E43F-4BC9-B467-E789-3BBBF75D1CA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 37.409958786177768;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "578245DB-4BBE-7239-FBED-2FB827043F7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "AABF64F0-455F-B271-91B4-BFA90244080A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "55FF106C-4101-BC25-2A8A-64AABC7B575D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "3CF244C3-4E6C-27A2-F59C-E498CC95F57D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "4A514968-4BA7-DA63-3236-A28F2C3335FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Thumb_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "443AD3A6-44AC-F649-7D3A-25B638F5EA5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.6107572587669408;
createNode animCurveTA -n "R_Thumb_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "9809AAF7-4063-DD13-DE21-4C9752F88CED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 13.926936272168238;
createNode animCurveTA -n "R_Thumb_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "A017C851-4CD9-5753-1AA5-CF87637AC698";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -7.4321539802806456;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "AB1ADA22-4B17-359B-B023-7EB234039B36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "C42378B6-4005-292D-5CAF-80859FD8520A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "9E8D9813-46B6-BB49-FBC9-A591D83C16CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "4B431FAE-46E0-5692-7643-D7A4E8E86445";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "337D74E0-4EAB-5EFF-3DE5-0BA09351D5B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateX";
	rename -uid "0763F82F-4082-11A1-AA84-568AA7005A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -10.083594067657019;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateY";
	rename -uid "122A02F8-4AB5-2CD2-80C8-379A6E4C5874";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateZ";
	rename -uid "65E7B584-406E-76A8-AC0D-BCB959A98413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_scaleX";
	rename -uid "21F78506-4E6E-A2A5-8FC1-22927DAC1423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_scaleY";
	rename -uid "357E19AC-45D9-BB8D-AE15-C59C35CD8AAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_scaleZ";
	rename -uid "30D681F5-4A7A-3713-0619-08AB77DAB739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_FollowTranslate";
	rename -uid "9EA41D86-42A5-B0BF-3975-849D39EFF118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_FollowRotate";
	rename -uid "818A4185-47D2-9AD3-5E27-1A9D04DCE26F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Middle_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "2749764C-44BB-2C16-9177-F7BEE7008368";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "67280E61-414A-DA6C-71F5-6C9EDE0A5C20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "A942EE52-4AC0-A90F-1F4A-D08823F23D52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 22.28733836079569;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "4CB7B9A6-4B52-6FBE-2479-68A846EF58B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "18D03C83-4A42-A67C-06FA-5AB7363E3207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "0E68C5FD-4677-D33A-35B5-438EC1F914DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "4642003F-4A24-75F8-399B-C4A9E0D97B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "1C5A0FFA-42E3-95CB-0692-C8A0F0DE2BA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Leg_Clav_FK_Ctrl_rotateX";
	rename -uid "F77F7DC1-499F-2010-5086-DF811279AE8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Leg_Clav_FK_Ctrl_rotateY";
	rename -uid "AEC3DD03-4BA6-886E-BA24-A0A2EA101E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Leg_Clav_FK_Ctrl_rotateZ";
	rename -uid "6EE578FF-4A90-23B1-F75F-E98756A78264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_scaleX";
	rename -uid "0EAC1CDD-4D08-744C-52BC-C4A98DB79EF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_scaleY";
	rename -uid "5EABC8D1-4EC0-84E6-A67D-91A9AEB50D64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_scaleZ";
	rename -uid "82CE646F-4546-E462-DE99-BB85BC952DBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "83F0365A-486F-CF71-E99F-F4B4B0DD3552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_FollowRotate";
	rename -uid "8736CEA1-4C43-AED4-55C0-9D95EA776D9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateX";
	rename -uid "2DFA8CEF-4B30-05B9-88FE-4B8D9FB56EAD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateY";
	rename -uid "A5B3C258-4A90-F72E-C24F-4DB012F4332D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 92 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateZ";
	rename -uid "7D3674CF-4136-E8C9-1C1B-C495D4578BAF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.91873947290085523 48 -0.51943759865544514
		 92 0.91873947290085523;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_01_FK_Ctrl_scaleX";
	rename -uid "A7E5CDB9-4A87-1FD6-E339-EC996BDB17B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_01_FK_Ctrl_scaleY";
	rename -uid "7EF1F481-4373-F790-0051-9B89AE1B1499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_01_FK_Ctrl_scaleZ";
	rename -uid "D8428D99-495E-4A8F-E235-BFA2BC72A2EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_01_FK_Ctrl_FollowTranslate";
	rename -uid "E04524B1-4C6D-64DA-192F-E08E0AF36677";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_01_FK_Ctrl_FollowRotate";
	rename -uid "622746F4-4C8E-D07A-55F2-58B1470C42F3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Middle_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "5B7EF5B9-405D-5F3A-9F89-BEB5F59CDE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Middle_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "7339F6AA-4C1C-70D9-9464-5B9CC4916BB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Middle_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "E477A0B7-4AC8-DEF8-B03E-DE96FF13A1DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "91952CDE-4A26-9DF3-44AE-60A8E35824EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "16A08EB7-42B7-6571-AE15-E880EB786D1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "1032D0C0-44FD-9D07-E321-E48166A681DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "56C81444-4A6E-F2A1-D9EF-8CACAA7F552E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "684F8980-44A1-8F70-F817-729B1E139B67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Ring_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "5DD98E21-4EC6-4234-71F2-118D000B1FBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Ring_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "38CDCE5D-4C63-AFB5-24A2-2793EC6255A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Ring_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "84610D9F-4162-E421-2AFC-E89DFDE0A98F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "A3DC2C2B-474C-ED4A-90AF-4BBDB5FCF2F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "4BD820FC-4571-A148-7491-8E91F324E866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "D5935229-4D19-CA40-1CC4-469927D0206C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "151A6D23-4C81-AA08-5E78-DA9FF3DE0A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "1CA70474-4A6F-350B-160D-33898FCA5E25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Ring_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "F6BC8974-4875-6BFE-57F0-32923CFA76DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Ring_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "1C16E48B-418D-31AB-044D-BAA0CED9F39F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Ring_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "AF740EC4-4E9C-D17E-A1D5-11B9CB738F1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "ED166826-47F4-505D-0C98-FDAEE928DBC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "A09EE0DC-4009-E9C2-8D6C-6D804F2D5B1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "7B691FC6-4487-C2A4-4759-E38400C84336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "4591562F-4D39-1A8A-5B30-E7A0D08D92F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "DC4E29D7-4FB3-F218-B591-7596A0AC4B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Ring_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "D51377DC-43E9-61D6-3AFB-BF8D9027A904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "D4FC8BFE-47C0-794F-0734-9981244C32C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Ring_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "4A5FA9DC-47C4-2A3F-E2C8-5DA9D26CB0C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9568245451530819;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "1DEFC533-4BB0-ECF9-3D89-28A4129C87FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "36977E4A-4D88-3651-FF86-F88D2A85F56E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "11EBF73A-4739-EF7F-B18B-9CB07A4C2785";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "D5D9F43A-474F-3FA4-CB87-528C3C8BEBA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "7DCBC4A7-4A6A-C5B1-4274-459B0DFDE409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Ring_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "15BB6DE6-4480-B0E7-FF06-A390F107FEC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Ring_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "EF1A4FC4-4A26-345F-90EC-8DB81179C11A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Ring_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "AE84122C-4EE4-780E-5CEC-D39681248E5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "ABB171F8-428C-DC07-91C1-5D80041E2866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "2E3BF484-462C-D787-7054-478114A3CFD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "CB0373DD-48CF-2E39-4BB9-B6B18779A44C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "EAC29FFE-424E-9C26-5D08-0481B6252EF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "28B8460E-4E7D-EDE7-B6DA-70B41B84875F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateX";
	rename -uid "7B7D1073-4D0D-F540-29E2-3DA435C78292";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 -0.33464762992945274 92 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateY";
	rename -uid "983EEBF1-483A-AA55-F08D-D18A57B008AF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.7862158312928678 48 5.776563365242251
		 92 5.7862158312928678;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateZ";
	rename -uid "5DB79CA3-41D9-36FB-7A4A-089998CF3D93";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 -3.3211996152711891 92 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Pelvis_FK_Ctrl_scaleX";
	rename -uid "F1615140-4ACF-3D9D-0E51-59B37153BDEA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Pelvis_FK_Ctrl_scaleY";
	rename -uid "990754BE-4BCF-5538-93F1-D18BF539C402";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Pelvis_FK_Ctrl_scaleZ";
	rename -uid "2DE22171-4808-592C-1AE0-D8933063A469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Pelvis_FK_Ctrl_FollowTranslate";
	rename -uid "5B6CDCFA-4C65-A373-5CD7-878F1F4C3F96";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Pelvis_FK_Ctrl_FollowRotate";
	rename -uid "B69E9297-4818-B551-FFDE-569E4B1366F3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 92 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateX";
	rename -uid "90EE40EE-402A-5458-DBD2-EF88E37ADE42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -96.878576958736133 48 -94.77109293074875
		 96 -97.520496975146216;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateY";
	rename -uid "C78F10C8-4E2B-B089-3A29-008DAD6E4460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.7243541946865859 48 -7.5693252040053185
		 96 -4.8479566980116502;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateZ";
	rename -uid "B964EC84-4022-DD0E-2A91-E398676597A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  9 -19.250652408808662 56 -44.265594292413034
		 104 -19.250652408808662;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_scaleX";
	rename -uid "39B5A3CC-4E2B-A55C-80B8-07BE955B420E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_scaleY";
	rename -uid "A6C1F06B-4FE0-9C7A-03BA-7EA0AB363756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_scaleZ";
	rename -uid "29410F1A-4229-BE57-2863-71B2C7AB1164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_FollowTranslate";
	rename -uid "0F11AD3C-416C-530C-E2C8-7993745D6347";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_FollowRotate";
	rename -uid "F17CAB46-4E21-241C-2B1B-978A907FB703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "R_Eye_Ctrl_R_Eye_Close";
	rename -uid "F643204F-46F0-A6D2-F737-51B07EC501B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Base_Ctrl_Follow";
	rename -uid "F9C07140-4C8A-21B9-60F6-3D964E65D081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "8BEA953F-41C3-B0DF-E218-6F8D450AD0BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.0122002803850187;
createNode animCurveTA -n "R_Pointer_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "63228CB8-434E-A015-2DE7-9D85A17775A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 14.097201828422605;
createNode animCurveTA -n "R_Pointer_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "24DE7360-4ADC-C1FA-D995-43BFD60E34DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 26.029345173601516;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "DAA47AAF-48D0-AD66-8EE0-23B28590D4D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "8524785E-4C95-BFA9-7388-3DB296FC3F9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "6C673D46-40BC-BC5D-0181-A69B54A5C132";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "F8CD3409-4C72-CDA7-087D-13AE546A0338";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "74A67800-474F-4AFF-CA2F-62A5A82DDF17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Arm_PV_Ctrl_Follow";
	rename -uid "8208E284-4235-024E-29F1-03A542CACD86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateX";
	rename -uid "B7C974C5-49AD-BEA6-6DF4-B788281CB026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateY";
	rename -uid "A83DF559-4713-45EA-4455-BABF1D934EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateZ";
	rename -uid "37426471-47C2-3E2F-286B-B8B5582F9FD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Head_Fk_Ctrl_scaleX";
	rename -uid "9296948A-407C-F685-29C5-AAB67BE5740F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Head_Fk_Ctrl_scaleY";
	rename -uid "49B28AC1-44AC-9794-305A-778187D57F01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Head_Fk_Ctrl_scaleZ";
	rename -uid "943A47D8-4D1B-6C90-1A6E-FC8EBB3AA9DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Head_Fk_Ctrl_FollowTranslate";
	rename -uid "8DC47F23-4787-D841-2734-0CAFC7D7B73F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Head_Fk_Ctrl_FollowRotate";
	rename -uid "AC213F8F-4F45-0BBE-610E-DBAFC4314633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Pinky_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "D6F11BDD-4D62-E7E8-3C2C-2D906646B76E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pinky_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "24AF3F73-4E6A-A8BD-788B-70BE91FB6A60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pinky_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "C3E7372B-47D5-4EDD-354B-8DBC5D8227D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "DFEA4D72-4F37-37A6-72AD-CEAC6AEBC199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "D1B1AC51-4C90-709A-FC36-FE8793C26799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "2161A90A-45FB-0BAD-1EBD-CA87800C603C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "522BCF40-48EB-8A12-A1FB-8CA3047438F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "3F00D895-4430-789D-2F08-D1A2BB1D2559";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateX";
	rename -uid "F96AAFC8-413F-7C26-DC66-B091BF3536DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 -51.116193641419486 47.040009013605442 -34.560670790983174
		 94.080021598639462 -51.095162780294899;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateY";
	rename -uid "A3033A23-4840-FA80-F4D0-C9B9B464E6EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 -56.840473100380969 47.040009013605442 -65.35868430753294
		 94.080021598639462 -56.857500438114968;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "A75A379D-4E41-53CA-8E05-B686FAE7FDCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 22.881967206142843 47.040009013605442 11.284443357681734
		 94.080021598639462 22.856847697228687;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_scaleX";
	rename -uid "842455C2-4742-4FE5-8F8F-AEAD66509D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 1 47.040009013605442 1 94.080021598639462 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_scaleY";
	rename -uid "F7403098-4096-5A1E-294C-48B7135A6F6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 1 47.040009013605442 1 94.080021598639462 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_scaleZ";
	rename -uid "2D880BAB-480A-EF7F-9DEE-C5A3D95C86DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 1 47.040009013605442 1 94.080021598639462 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_FollowTranslate";
	rename -uid "B4828E7A-442C-3E1E-E345-03A51AD0AE4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 1 47.040009013605442 1 94.080021598639462 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_FollowRotate";
	rename -uid "1D8A564B-44FC-D894-3085-7C8C7FA681AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.98 1 47.040009013605442 1 94.080021598639462 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Pointer_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "B003A886-4F5B-DE30-4E69-0DACA1A5D72C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "79B16314-40E6-B3F6-2556-878149C08836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "735011A2-4007-A043-88AA-6682F4D6AFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "0003CC8C-40AC-0488-9403-97B645CA4403";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "9252DCF6-4377-23DC-908F-D1959D606707";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "5DEC84B7-474C-DCF4-E133-4BA65B78D763";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "0914A10B-41B2-3583-78D3-01B39F671D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "5B68D4FF-4BD0-5B9F-B0C2-8196090C9B96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateX";
	rename -uid "E1BAE937-4595-9448-4D56-84BBA7DB6EAD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.14262383104218382 48 -0.14262383104218382
		 92 -0.14262383104218382;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateY";
	rename -uid "2CF2728E-4105-B95D-CB5B-8E94A4DFF4F7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.34564199315089578 48 0.34564199315089578
		 92 0.34564199315089578;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateZ";
	rename -uid "F931852D-44D0-9188-20A3-96BFEB6349C8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.5528934956534668 48 -4.5528934956534668
		 92 -4.5528934956534668;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_02_FK_Ctrl_scaleX";
	rename -uid "EAAA56FF-43F7-1860-4078-EFA255D7C1DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 48 1 92 1;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_02_FK_Ctrl_scaleY";
	rename -uid "C2C45D07-45E7-D15F-FC88-778DB95B6EF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 48 1 92 1;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_02_FK_Ctrl_scaleZ";
	rename -uid "AA6C3F54-4C42-9044-3357-FB8C77E7F723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 48 1 92 1;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_02_FK_Ctrl_FollowTranslate";
	rename -uid "1E81B0DB-43A0-C959-AD16-CD8C054CB8FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 48 1 92 1;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_02_FK_Ctrl_FollowRotate";
	rename -uid "2695F81E-4028-BB95-83B9-7A987B623512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 48 1 92 1;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "E323254E-4BF7-E1E1-F27C-049AF7FF8A41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -83.232773135618856;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "643F360B-4239-AE02-9A3A-F8AFDEC5C0C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 57.989143129180967;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "D28EAC80-45DE-1346-F30F-E082C12C9B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 41.754482928775637;
createNode animCurveTU -n "R_Arm_IK_Ctrl_Follow";
	rename -uid "F1D6D6AE-48DF-A5B8-D28D-E98274196E8A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Arm_IK_Ctrl_Stretch";
	rename -uid "34F2DAC5-4AF1-7C84-487D-55A7911A9C88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Arm_IK_Ctrl_MaxStretch";
	rename -uid "107DAA34-4AD0-436B-A6EB-F1A2C11214F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
createNode animCurveTU -n "R_Arm_IK_Ctrl_ArmLength";
	rename -uid "29EEFF7E-45B9-5D86-17F9-21B0C22435E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Arm_IK_Ctrl_UpperArmLength";
	rename -uid "313871EF-4A83-79ED-D760-9CA0A8129209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Arm_IK_Ctrl_LowerArmLength";
	rename -uid "943BBE7C-4C01-1543-F318-EBBEAB8D3D38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "6A43F8FD-44C0-D07F-FE34-08A7BDACDE95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "C60DB8D4-4F6E-C614-7B01-EFA0A0964BEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "E2D2E53C-42CB-9153-01B2-E891844034C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "A9E84409-4FC8-7A41-6F45-CDAEE7887479";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "A993E1C5-4496-21AF-17DD-B0AE0AAE1742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "693AA082-41CF-E0D8-B2F2-49A3C368CD30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "247D759E-4133-8504-3A32-1197A70B8A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "B3688D95-4D03-44C3-8C76-29B9AFC94C93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Thumb_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "4499C976-40A2-B02C-92E0-B7A2E0291981";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "757BB571-4D1C-34AE-3829-929ADD02A55E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Thumb_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "46061CF3-4D68-66EF-502C-C3B66E44F700";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "74781237-4F7C-0515-ABD3-2EBABA75A8CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "853C6290-4E6F-75E1-27C4-26AB21159D78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "7190573D-4289-4CEB-9067-14A80CEC18A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "AFD8F3CD-4D42-CEEF-4880-AA99C2A88357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "B43D5922-4CD9-272A-02C3-6889947AE5A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateX";
	rename -uid "A6FDEAA3-433B-E850-38B2-F790754FA3EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 12.688220640118084 48 12.868670580136669
		 86 12.688220640118084 111 12.688220640118084;
	setAttr -s 4 ".kit[1:3]"  18 1 1;
	setAttr -s 4 ".kot[1:3]"  18 1 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateY";
	rename -uid "C21DA611-43F8-750B-0C08-078D40F4C150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.3093825587419388 48 -2.5032686041248016
		 86 -3.3093825587419388 111 -3.3093825587419388;
	setAttr -s 4 ".kit[1:3]"  18 1 1;
	setAttr -s 4 ".kot[1:3]"  18 1 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateZ";
	rename -uid "99AAD080-432D-6E43-EB88-37A8A30DEE05";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.19557386045225839 48 -3.3621432157737154
		 86 0.19557386045225839 111 0.19557386045225839;
	setAttr -s 4 ".kit[1:3]"  18 1 1;
	setAttr -s 4 ".kot[1:3]"  18 1 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_03_FK_Ctrl_scaleX";
	rename -uid "DE944645-4C1C-6AAE-6E1D-49B20F8B48F5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 86 1 111 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_03_FK_Ctrl_scaleY";
	rename -uid "00B84CCA-4608-C94C-23D2-0DAE22960532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 86 1 111 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_03_FK_Ctrl_scaleZ";
	rename -uid "33BB1492-4C01-6A4B-A5C7-FAAC58E2C96D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 86 1 111 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_03_FK_Ctrl_FollowTranslate";
	rename -uid "827725E1-45C0-C9FB-640D-B59CB1D49D9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 86 1 111 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Spine_03_FK_Ctrl_FollowRotate";
	rename -uid "AE3D53CB-47A2-D31D-1CF8-1A959DAD9C7A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 86 1 111 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateX";
	rename -uid "4FFDE2C7-46C9-9B7D-9113-B5A2D0FE6B8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateY";
	rename -uid "36621ED5-454E-AA18-D1B8-3B99FCA25A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateZ";
	rename -uid "37D2097A-4839-C4D4-7486-4397E2413463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_Follow";
	rename -uid "8174AC24-4DE5-C27C-2CC4-9BB548AEE66E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_RockFoot";
	rename -uid "B90C5617-4A65-69EA-1AB2-E2871FD8EE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelRotate";
	rename -uid "A67801AD-4D0D-C98B-260F-7897C1603493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelPivot";
	rename -uid "5E558E57-41E3-BB1F-CD64-F68686E6F765";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelTwist";
	rename -uid "7FC2844B-494D-8897-F557-8AA0561C9FBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeRotate";
	rename -uid "53071047-42DE-0E68-D39C-A3A593633768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToePivot";
	rename -uid "5661324B-4C25-E79F-F899-DDBCF1AE98BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTwist";
	rename -uid "292F6A11-4E4B-C16B-E367-078A02776825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_BallRotate";
	rename -uid "1731EFEF-43AE-D7F0-9294-E9921F638C8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_BallPivot";
	rename -uid "2C57AAD9-49DA-9D47-601D-AAA2EF20C3A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_BallTwist";
	rename -uid "A309BF5D-4A55-857F-11AF-C582D535128E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTapRotate";
	rename -uid "49B8A554-4D7C-7357-2A62-2EB016F0E8D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTapPivot";
	rename -uid "806CDE45-4A96-6FB7-5AB8-BAB80EDD0586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTapTwist";
	rename -uid "49AF14E0-412A-8DF0-BB35-C0AA6AA56122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_FootRoll";
	rename -uid "4A3D2397-41D4-7EE4-32B6-04BF66B3808D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ControlVis";
	rename -uid "E34EFD63-4AD7-3BF6-9D08-888A74C42A8B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_Stretch";
	rename -uid "5963D2BF-4588-B20A-0ADC-B496DB275107";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_MaxStretch";
	rename -uid "F974A2BB-4D07-A132-48DF-5690DCC135BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
createNode animCurveTU -n "L_Leg_IK_Ctrl_LegLength";
	rename -uid "B6FE5956-4FF6-0D09-B090-2E95B8F67345";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_UpperLegLength";
	rename -uid "BE164CA1-41F4-CD64-51F3-73A6B2F25735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_IK_Ctrl_LowerLegLength";
	rename -uid "14DB09C6-4F11-5722-30EF-31A62935B2BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "7328F2EC-4810-D20C-3FFD-5EB7129FE097";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "C54E40F6-4EE2-078B-004D-9CBFE3491641";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Middle_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "F72FD056-45C0-5A40-B66F-20B4A8725AFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.5312743564185531;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "6FC90B7A-4837-233F-04A7-EF8392943421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "125251A2-4D77-D374-905F-C3BF43C044F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "8F1B2A68-4C64-57C1-FA45-6098E5E95AC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "C9BA267A-4EA7-1977-DDB7-6699566A907D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "3EE6E3F1-4CB3-12C1-CB86-B8B9EEC853A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Pinky_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "212A01A0-4DA4-0BA5-D0B7-99A8EC3A937F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pinky_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "4E02E593-428E-57C3-F75E-6EA55F2BC30C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pinky_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "2389A4F5-47CD-FEAE-0DE7-0EA8A824C7E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "4591871C-48F4-97A3-0EC9-31B5B6EE1908";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "0B26ACE2-40E1-50DC-E6FD-F98B4286A42B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "D8F2A8BA-4D3C-CAC1-E793-C699645DDE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "C053B864-44CF-261F-E59D-A6920CDDDDE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "F5F064C5-4A52-9DD9-8C27-67BE3B415218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateX";
	rename -uid "938D0C23-46E4-48AE-8658-A59C3AC5D1A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateY";
	rename -uid "D18123AC-462A-49A6-0D07-94BEB90ED49D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -15.680242858551813;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateZ";
	rename -uid "95406C63-484F-693C-C64D-7D8486F4E416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_Follow";
	rename -uid "9355760D-44BC-0A59-2AAA-C584574B9CFD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_RockFoot";
	rename -uid "2243F5D6-45F9-385A-6953-C3BF1988AB9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelRotate";
	rename -uid "49A68ECC-4BF9-4717-B3FE-7D8EABE80A47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelPivot";
	rename -uid "BC94B649-44C2-2E98-0EB1-ECBE88D6EDC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelTwist";
	rename -uid "907D7B97-4EAF-9FA3-F403-FEA6A87004F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeRotate";
	rename -uid "63F77FE8-4E8F-04E0-BAF2-1D82AA224A62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToePivot";
	rename -uid "612738D1-4EC7-8A3E-0FED-2D811A8F00AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTwist";
	rename -uid "3B1AD9BF-4266-D3FB-24E9-77B965B80677";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_BallRotate";
	rename -uid "E7E6B3BA-48D3-D44B-45FE-C3AF23D3D66F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_BallPivot";
	rename -uid "C48E0FF1-47CF-F35D-1C93-1A8BBEB69E47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_BallTwist";
	rename -uid "5351053F-4769-7790-8418-EF95F72A4F9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTapRotate";
	rename -uid "05EACADA-407E-9110-0051-DC80B492E6F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTapPivot";
	rename -uid "8A48318A-4CBF-46A0-FB71-058E6A52202E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTapTwist";
	rename -uid "9336F79A-4B27-DE3D-781B-669FD03A9BD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_FootRoll";
	rename -uid "7BA705E6-4109-77ED-3A51-799400DF3FF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ControlVis";
	rename -uid "321ADEBF-43FE-BA88-9E56-64AF5AC012D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_Stretch";
	rename -uid "7DE744CD-4DCD-678F-5F6F-A68515B53F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_MaxStretch";
	rename -uid "2746990B-42CA-DC2F-9E28-B9A892C98DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
createNode animCurveTU -n "R_Leg_IK_Ctrl_LegLength";
	rename -uid "478D9449-4E3A-A367-B175-A08BE790A3A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_UpperLegLength";
	rename -uid "D9CDE412-47E6-880E-9B97-65ACC3B86088";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "R_Leg_IK_Ctrl_LowerLegLength";
	rename -uid "D82308CC-48D0-DC6B-4A79-FDA95C60AC45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "0BACBECF-4C87-0D03-C1BE-4DA05373BB57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "34D2E884-43A8-6A56-26D7-DAADA7048777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "1CD1050B-4723-0299-672E-58918AE4BA7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "E5B23933-40D5-7A4A-F6DC-21B0D6CDFE67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "78EECA1A-4127-93DD-DF55-81AA2AF9ADFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "930F936C-46E6-13F1-D399-B3A2F43CFD86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "FE8BC72E-4E17-E2F7-3E98-3DB23313438D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "827222D4-4ECD-962E-5F63-A4A0DFE87AF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateX";
	rename -uid "374A0263-4245-F7A4-5FB5-8ABB03882FD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.22331853033981314;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateY";
	rename -uid "575CD398-4679-1B8C-5C26-6FA300841AF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10.717824708324546;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateZ";
	rename -uid "F2734DFD-4E89-8F35-7FDA-2381A0BBBFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  5 59.745939610633265 52 54.949623762749368
		 100 59.745939610633265;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_scaleX";
	rename -uid "B3BC7F26-4CE4-BD76-E77F-F9B22C7A4A6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_scaleY";
	rename -uid "BA77124B-4881-1D84-32BB-79A832A15824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_scaleZ";
	rename -uid "2E9A5321-489B-A3C8-2F27-B79DD257E0E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_FollowTranslate";
	rename -uid "22926852-45B1-9868-177C-68A0B95D3771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_FollowRotate";
	rename -uid "92DF2550-47CF-D02B-EE67-AD82307F0E1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Pinky_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "F2BE6F21-4009-7E06-6C43-D591EBA7742D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pinky_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "2436423E-4247-B475-BDD7-2584DAB8E609";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pinky_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "393E81C7-4B61-BFE3-E987-69B39074B353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 18.451690386721438;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "167C3287-4BA1-96F7-F0A6-C0807C37E32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "49437F16-4813-72CF-5C3F-5C879E46F196";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "4015A881-4542-D5BB-0E10-A7ACD41BA940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "48979162-4607-26A9-4FCF-2E8200586F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "36F1E277-43F7-EA78-732E-AFB31A9D86F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "COG_Ctrl_rotateX";
	rename -uid "9A153336-4A45-44BD-E5FE-A49155EC37B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 0 94 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "COG_Ctrl_rotateY";
	rename -uid "3A18DDAC-4D74-2A92-B836-4DB3AFB0FFD9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 0 94 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "COG_Ctrl_rotateZ";
	rename -uid "18CC477B-497C-A143-0237-63959AC17432";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 0 94 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "COG_Ctrl_scaleX";
	rename -uid "802ACED0-4F95-E243-61E3-178BD9E0E007";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 94 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "COG_Ctrl_scaleY";
	rename -uid "78664E2D-424C-F039-A5B3-909A177DF0E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 94 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "COG_Ctrl_scaleZ";
	rename -uid "F64E230E-4EB7-161C-ECE2-51BE90D3CD5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 94 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "COG_Ctrl_FollowTranslate";
	rename -uid "8ABEDB9D-40EF-8029-4714-42865B910C66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 94 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "COG_Ctrl_FollowRotate";
	rename -uid "9C1C8E52-4431-F3A8-729B-63A9EDD4CD45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 94 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateX";
	rename -uid "A59FC3A7-4E2B-EAE4-E938-DDBC5056DEDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.5089014722222215e-17;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateY";
	rename -uid "EA58D21E-447A-B7A0-631B-58904FE13DA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -7.9467687402124696;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateZ";
	rename -uid "73FBF0BE-482F-7706-779B-1293A7FEC293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.8842909014105451;
createNode animCurveTU -n "R_Clav_FK_Ctrl_scaleX";
	rename -uid "7869BD55-43BF-1489-32CC-5AB106736453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Clav_FK_Ctrl_scaleY";
	rename -uid "3A1C7D98-47DC-1FA9-EEFA-568963042DB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Clav_FK_Ctrl_scaleZ";
	rename -uid "005E7874-4D86-1810-E396-1185AA0AD353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "01CDA74B-4B51-8CBF-67BD-72A81A2233C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Clav_FK_Ctrl_FollowRotate";
	rename -uid "1C216C1A-48AD-EA11-A801-C49C6E9EB182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "R_Thumb_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "A2C23DC3-4F2E-F380-296C-65BDB1302211";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.2705935960602994;
createNode animCurveTA -n "R_Thumb_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "7CDCDC52-4257-29F0-A89F-E2A0E65CDE3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 12.122421156230798;
createNode animCurveTA -n "R_Thumb_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "828EAF8A-44DB-855C-D38A-D58347DB1375";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 11.959201369144685;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "53FBF2CD-40FA-A25D-62AB-01A65A258E96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "11576DA7-4A88-BE8A-7CAF-EFB3BBE3A888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "F90DFB42-4CF9-193D-8522-7B884697AAFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "7BADA1FA-4F9A-876B-1C79-789D1DA385A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "21CC24E7-4361-3D3E-45D2-828B2FD43A19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Face_Ctrl_visibility";
	rename -uid "45E1D840-407F-37B5-1EBF-FEA8081351DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Face_Ctrl_rotateX";
	rename -uid "3CDF5692-4F92-B5F9-39FA-1D9713ABDFA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Face_Ctrl_rotateY";
	rename -uid "4019538B-4539-2B7E-64CE-549885ECBE71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Face_Ctrl_rotateZ";
	rename -uid "CA9157C9-43B0-896F-409D-4DBD8BBAE933";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_scaleX";
	rename -uid "94F35DD4-4FF8-C75A-7BDC-E79F5A1A4302";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Face_Ctrl_scaleY";
	rename -uid "C6B1FE8A-4C3B-22A9-119C-9485C439D3DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Face_Ctrl_scaleZ";
	rename -uid "08F6EE5A-4ABF-9DE8-7128-619571C9183F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Face_Ctrl_CloseMouth";
	rename -uid "7FB51BA0-45B0-95C1-AB86-DCBC428FEEFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_OpenMouth";
	rename -uid "9B0AC294-46BD-CBA8-23FE-76BB057B38E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_Ooo";
	rename -uid "84CE21B6-4552-310E-0EA5-08B9EE76DF61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_LeftSmile";
	rename -uid "49551A7B-4296-3756-E849-0B915BC58124";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_RightSmile";
	rename -uid "EC06CF04-453E-3C16-27CC-5081D9AE2C31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_FullSmile";
	rename -uid "DD6C85E8-4F3F-5C9C-E39B-218400017999";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_LeftClosedSmile";
	rename -uid "A9033226-449B-AE4E-2C90-D581F6F33C11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_RightClosedSmile";
	rename -uid "18EA5733-4117-BD6F-3F5D-AD896BBB5BC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_FullClosedSmile";
	rename -uid "96EC8CE0-4B71-61D5-A2A2-438C92A161CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_F";
	rename -uid "AC824B91-4ACB-61D4-03B2-B7AA9C30A497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_OW";
	rename -uid "C42E328C-4443-1D57-89C3-00984CF1D2ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_H";
	rename -uid "358B8427-4A7C-5BD6-9C82-B484FFD81D3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_MB";
	rename -uid "54D87677-4827-5805-A822-5FB2B24C6B90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_Angry";
	rename -uid "87D06C19-4950-FF22-6C3B-79A1C8055CA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_LeftEyebrowDown";
	rename -uid "2713E82A-47B5-9689-F62C-1CABBB3A2A90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_RightEyebrowDown";
	rename -uid "D1427908-4F30-AABD-4994-5ABD25873470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_LeftEyebrowRaise";
	rename -uid "B7AFA31D-4C4E-8887-FBED-C480F5A866EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_RightEyebrowRaise";
	rename -uid "9419673D-4288-6857-5F08-78B76DC359B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_NostrilFlare";
	rename -uid "D9F3EA5D-4C6C-F6F2-2DC3-E6AFF4054B8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_UH";
	rename -uid "016FEE01-4E4A-DE01-EB7B-D88A793E531C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_TeethOpen";
	rename -uid "C0B7421E-4E96-754D-5B7B-2E83777F9353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Face_Ctrl_TeethClosed";
	rename -uid "AFAEB4F0-46F3-D021-AC91-7CA33B1D163D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Leg_PV_Ctrl_Follow";
	rename -uid "265D611E-45D1-0700-6F85-3EAADF5A795C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "2E81AFAD-488C-1C2F-CD3A-958986581A65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pinky_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "BC108FE2-4D3B-8D36-A431-F8BE798E56B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pinky_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "CC825B92-4DF4-B225-911B-F785BB3ED425";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.4617479321902822;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "892684BD-429A-168D-E18D-C49D0C079D41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "B836E7F2-459D-EDCA-2E6B-B7B571814FF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "649ED73A-48B0-430B-1DF7-C0AFB5206306";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "0AB753FB-4644-EF18-996F-0EB7269A1DCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "2E8BA890-48B7-14A8-8D62-CEBF083ACCC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "L_Pointer_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "AA23B898-4527-48B6-E62D-E48371D2D77B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "6A2311B5-41AD-D111-D480-EF83DB9D40A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Pointer_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "2D23A164-4607-9CC6-0F8F-F1BF997A734C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "C32F3ED5-4290-E802-8136-1FA8DA63802A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "2A5617C8-43D6-CD17-A1BD-2EB441909639";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "C5CD2635-484B-46D8-946F-609785B9FC9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "66F16CEB-4EAF-BA7D-F8DB-0B8A8898122A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "9CA77F43-4DA3-0275-28D2-2AA5C3F5AEF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Arm_IK_Base_Ctrl_Follow";
	rename -uid "E44AB774-486F-08C5-EF96-65BFC1C12195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "16E8677F-4C25-9E68-E995-FEBC389AFC59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pointer_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "9B7904AD-4B88-8B4E-156D-5688B0979CAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "R_Pointer_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "2AA863F6-417E-2DD4-6A87-4F9138D81319";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 17.088683943785302;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "9ACB5F76-403D-ED95-98C7-A18F57C64F0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "8287A264-41EF-E108-9BE1-FEA471E04D0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "7F80970E-43FE-2355-C7B8-B9B9DF8A9F8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "8EAC9AC8-4ADF-3658-4485-84A5D153ACD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "4B90ECAB-45CA-F638-F50C-65903D6B4EC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Neck_02_Fk_Ctrl_rotateZ";
	rename -uid "E5E7DBEE-46FA-A1F2-C922-19915D6FA497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  22 5.428847096116761 64 0.89512055193634865
		 98 5.428847096116761;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode pairBlend -n "pairBlend2";
	rename -uid "67C8AF0D-4ECB-6BD5-DCF3-9EA32C20D61B";
createNode animCurveTA -n "polySurface33_rotateX";
	rename -uid "845A4594-4D15-87F8-26B2-119E7A8BD6A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "polySurface33_rotateY";
	rename -uid "895A934D-42A9-EA76-D5AB-B1BFDFBBA455";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "polySurface33_rotateZ";
	rename -uid "10D08D03-4266-CE08-FFEF-FA99E956A526";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.49489342335683795 61 7.140389459715716
		 76 6.9748544477477488 121 3.7419631805815157 162 6.9331285929006583 176 7.4999999999999991;
createNode animCurveTU -n "polySurface33_visibility";
	rename -uid "A149B0B1-4204-DE34-F31F-19B0B503CC94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "polySurface33_translateX";
	rename -uid "65E5B60E-4F49-7BE7-50B2-64A0E06E2D8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "polySurface33_translateY";
	rename -uid "F3C095BD-4A18-A63E-FFCA-74BEA5354C2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "polySurface33_translateZ";
	rename -uid "44485011-4884-5898-9DDC-D89271116CAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "polySurface33_scaleX";
	rename -uid "38DC0E32-41D5-354E-D376-51885016C91A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "polySurface33_scaleY";
	rename -uid "1549BD51-47BD-6101-E501-239BF6D2FC37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "polySurface33_scaleZ";
	rename -uid "0F12F50B-4BE5-6EFA-6EF0-28A4F626947A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode displayLayer -n "SailorBlueGuy_HankW1:ControlsLayer";
	rename -uid "823FC424-4CCD-C4D2-97F4-A89F2B417992";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
select -ne :time1;
	setAttr ".o" 37;
	setAttr ".unw" 37;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 56 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 34 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 162 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 5 ".r";
select -ne :defaultTextureList1;
	setAttr -s 126 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 130 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2156 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 6 ".sol";
connectAttr "PirateShip_CoryPRN.phl[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.id" "PirateShip_CoryPRN.phl[2]";
connectAttr ":initialShadingGroup.mwc" "PirateShip_CoryPRN.phl[3]";
connectAttr "PirateShip_CoryPRN.phl[4]" "polySeparate1.ip";
connectAttr "PirateShip_CoryPRN.phl[5]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.id" "PirateShip_CoryPRN.phl[6]";
connectAttr "Transform_Ctrl_L_Arm_IKFK.o" "SailorBlueGuy_HankWRN.phl[1]";
connectAttr "Transform_Ctrl_R_Arm_IKFK.o" "SailorBlueGuy_HankWRN.phl[2]";
connectAttr "Transform_Ctrl_L_Leg_IKFK.o" "SailorBlueGuy_HankWRN.phl[3]";
connectAttr "Transform_Ctrl_R_Leg_IKFK.o" "SailorBlueGuy_HankWRN.phl[4]";
connectAttr "Transform_Ctrl_MasterScale.o" "SailorBlueGuy_HankWRN.phl[5]";
connectAttr "Transform_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[6]";
connectAttr "Transform_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[7]";
connectAttr "Transform_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[8]";
connectAttr "Transform_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[9]";
connectAttr "Transform_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[10]";
connectAttr "Transform_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[11]";
connectAttr "COG_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[12]";
connectAttr "COG_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[13]";
connectAttr "COG_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[14]";
connectAttr "COG_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[15]";
connectAttr "COG_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[16]";
connectAttr "COG_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[17]";
connectAttr "COG_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[18]";
connectAttr "COG_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[19]";
connectAttr "COG_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[20]";
connectAttr "COG_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[21]";
connectAttr "COG_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[22]";
connectAttr "Pelvis_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[23]";
connectAttr "Pelvis_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[24]";
connectAttr "Pelvis_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[25]";
connectAttr "Pelvis_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[26]";
connectAttr "Pelvis_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[27]";
connectAttr "Pelvis_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[28]";
connectAttr "Pelvis_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[29]";
connectAttr "Pelvis_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[30]";
connectAttr "Pelvis_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[31]";
connectAttr "Pelvis_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[32]";
connectAttr "Pelvis_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[33]";
connectAttr "Neck_01_Fk_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[34]";
connectAttr "Neck_01_Fk_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[35]";
connectAttr "Neck_01_Fk_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[36]";
connectAttr "Neck_01_Fk_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[37]";
connectAttr "Neck_01_Fk_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[38]";
connectAttr "Neck_01_Fk_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[39]";
connectAttr "Neck_01_Fk_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[40]";
connectAttr "Neck_01_Fk_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[41]";
connectAttr "Neck_01_Fk_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[42]";
connectAttr "Neck_01_Fk_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[43]";
connectAttr "Neck_01_Fk_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[44]";
connectAttr "Neck_02_Fk_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[45]";
connectAttr "Head_Fk_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[46]";
connectAttr "Head_Fk_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[47]";
connectAttr "Head_Fk_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[48]";
connectAttr "Head_Fk_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[49]";
connectAttr "Head_Fk_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[50]";
connectAttr "Head_Fk_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[51]";
connectAttr "Head_Fk_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[52]";
connectAttr "Head_Fk_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[53]";
connectAttr "Head_Fk_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[54]";
connectAttr "Head_Fk_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[55]";
connectAttr "Head_Fk_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[56]";
connectAttr "Face_Ctrl_CloseMouth.o" "SailorBlueGuy_HankWRN.phl[57]";
connectAttr "Face_Ctrl_OpenMouth.o" "SailorBlueGuy_HankWRN.phl[58]";
connectAttr "Face_Ctrl_Ooo.o" "SailorBlueGuy_HankWRN.phl[59]";
connectAttr "Face_Ctrl_LeftSmile.o" "SailorBlueGuy_HankWRN.phl[60]";
connectAttr "Face_Ctrl_RightSmile.o" "SailorBlueGuy_HankWRN.phl[61]";
connectAttr "Face_Ctrl_FullSmile.o" "SailorBlueGuy_HankWRN.phl[62]";
connectAttr "Face_Ctrl_LeftClosedSmile.o" "SailorBlueGuy_HankWRN.phl[63]";
connectAttr "Face_Ctrl_RightClosedSmile.o" "SailorBlueGuy_HankWRN.phl[64]";
connectAttr "Face_Ctrl_FullClosedSmile.o" "SailorBlueGuy_HankWRN.phl[65]";
connectAttr "Face_Ctrl_F.o" "SailorBlueGuy_HankWRN.phl[66]";
connectAttr "Face_Ctrl_OW.o" "SailorBlueGuy_HankWRN.phl[67]";
connectAttr "Face_Ctrl_H.o" "SailorBlueGuy_HankWRN.phl[68]";
connectAttr "Face_Ctrl_MB.o" "SailorBlueGuy_HankWRN.phl[69]";
connectAttr "Face_Ctrl_Angry.o" "SailorBlueGuy_HankWRN.phl[70]";
connectAttr "Face_Ctrl_LeftEyebrowDown.o" "SailorBlueGuy_HankWRN.phl[71]";
connectAttr "Face_Ctrl_RightEyebrowDown.o" "SailorBlueGuy_HankWRN.phl[72]";
connectAttr "Face_Ctrl_LeftEyebrowRaise.o" "SailorBlueGuy_HankWRN.phl[73]";
connectAttr "Face_Ctrl_RightEyebrowRaise.o" "SailorBlueGuy_HankWRN.phl[74]";
connectAttr "Face_Ctrl_NostrilFlare.o" "SailorBlueGuy_HankWRN.phl[75]";
connectAttr "Face_Ctrl_UH.o" "SailorBlueGuy_HankWRN.phl[76]";
connectAttr "Face_Ctrl_TeethOpen.o" "SailorBlueGuy_HankWRN.phl[77]";
connectAttr "Face_Ctrl_TeethClosed.o" "SailorBlueGuy_HankWRN.phl[78]";
connectAttr "Face_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[79]";
connectAttr "Face_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[80]";
connectAttr "Face_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[81]";
connectAttr "Face_Ctrl_visibility.o" "SailorBlueGuy_HankWRN.phl[82]";
connectAttr "Face_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[83]";
connectAttr "Face_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[84]";
connectAttr "Face_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[85]";
connectAttr "Face_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[86]";
connectAttr "Face_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[87]";
connectAttr "Face_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[88]";
connectAttr "Eye_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[89]";
connectAttr "Eye_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[90]";
connectAttr "Eye_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[91]";
connectAttr "L_Eye_Ctrl_L_Eye_Close.o" "SailorBlueGuy_HankWRN.phl[92]";
connectAttr "L_Eye_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[93]";
connectAttr "L_Eye_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[94]";
connectAttr "L_Eye_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[95]";
connectAttr "R_Eye_Ctrl_R_Eye_Close.o" "SailorBlueGuy_HankWRN.phl[96]";
connectAttr "R_Eye_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[97]";
connectAttr "R_Eye_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[98]";
connectAttr "R_Eye_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[99]";
connectAttr "Spine_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[100]"
		;
connectAttr "Spine_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[101]";
connectAttr "Spine_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[102]";
connectAttr "Spine_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[103]";
connectAttr "Spine_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[104]";
connectAttr "Spine_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[105]";
connectAttr "Spine_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[106]";
connectAttr "Spine_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[107]";
connectAttr "Spine_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[108]";
connectAttr "Spine_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[109]";
connectAttr "Spine_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[110]";
connectAttr "Spine_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[111]"
		;
connectAttr "Spine_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[112]";
connectAttr "Spine_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[113]";
connectAttr "Spine_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[114]";
connectAttr "Spine_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[115]";
connectAttr "Spine_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[116]";
connectAttr "Spine_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[117]";
connectAttr "Spine_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[118]";
connectAttr "Spine_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[119]";
connectAttr "Spine_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[120]";
connectAttr "Spine_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[121]";
connectAttr "Spine_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[122]"
		;
connectAttr "Spine_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[123]";
connectAttr "Spine_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[124]";
connectAttr "Spine_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[125]";
connectAttr "Spine_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[126]";
connectAttr "Spine_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[127]";
connectAttr "Spine_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[128]";
connectAttr "Spine_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[129]";
connectAttr "Spine_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[130]";
connectAttr "Spine_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[131]";
connectAttr "Spine_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[132]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[133]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[134]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[135]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[136]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[137]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[138]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[139]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[140]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[141]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[142]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[143]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[144]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[145]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[146]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[147]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[148]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[149]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[150]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[151]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[152]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[153]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[154]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[155]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[156]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[157]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[158]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[159]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[160]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[161]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[162]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[163]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[164]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[165]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[166]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[167]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[168]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[169]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[170]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[171]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[172]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[173]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[174]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[175]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[176]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[177]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[178]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[179]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[180]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[181]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[182]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[183]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[184]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[185]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[186]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[187]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[188]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[189]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[190]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[191]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[192]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[193]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[194]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[195]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[196]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[197]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[198]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[199]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[200]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[201]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[202]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[203]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[204]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[205]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[206]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[207]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[208]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[209]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[210]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[211]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[212]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[213]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[214]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[215]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[216]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[217]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[218]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[219]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[220]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[221]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[222]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[223]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[224]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[225]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[226]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[227]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[228]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[229]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[230]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[231]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[232]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[233]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[234]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[235]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[236]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[237]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[238]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[239]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[240]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[241]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[242]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[243]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[244]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[245]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[246]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[247]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[248]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[249]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[250]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[251]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[252]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[253]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[254]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[255]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[256]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[257]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[258]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[259]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[260]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[261]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[262]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[263]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[264]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[265]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[266]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[267]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[268]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[269]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[270]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[271]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[272]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[273]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[274]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[275]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[276]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[277]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[278]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[279]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[280]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[281]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[282]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[283]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[284]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[285]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[286]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[287]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[288]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[289]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[290]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[291]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[292]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[293]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[294]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[295]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[296]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[297]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[298]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[299]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[300]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[301]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[302]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[303]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[304]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[305]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[306]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[307]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[308]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[309]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[310]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[311]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[312]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[313]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[314]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[315]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[316]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[317]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[318]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[319]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[320]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[321]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[322]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[323]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[324]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[325]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[326]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[327]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[328]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[329]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[330]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[331]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[332]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[333]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[334]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[335]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[336]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[337]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[338]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[339]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[340]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[341]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[342]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[343]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[344]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[345]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[346]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[347]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[348]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[349]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[350]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[351]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[352]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[353]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[354]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[355]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[356]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[357]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[358]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[359]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[360]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[361]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[362]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[363]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[364]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[365]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[366]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[367]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[368]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[369]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[370]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[371]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[372]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[373]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[374]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[375]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[376]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[377]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[378]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[379]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[380]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[381]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[382]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[383]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[384]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[385]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[386]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[387]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[388]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[389]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[390]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[391]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[392]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[393]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[394]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[395]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[396]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[397]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[398]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[399]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[400]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[401]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[402]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[403]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[404]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[405]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[406]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[407]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[408]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[409]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[410]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[411]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[412]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[413]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[414]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[415]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[416]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[417]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[418]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[419]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[420]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[421]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[422]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[423]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[424]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[425]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[426]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[427]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[428]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[429]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[430]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[431]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[432]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[433]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[434]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[435]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[436]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[437]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[438]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[439]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[440]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[441]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[442]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[443]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[444]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[445]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[446]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[447]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[448]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[449]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[450]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[451]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[452]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[453]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[454]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[455]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[456]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[457]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[458]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[459]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[460]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[461]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[462]"
		;
connectAttr "L_Clav_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[463]";
connectAttr "L_Clav_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[464]";
connectAttr "L_Clav_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[465]";
connectAttr "L_Clav_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[466]";
connectAttr "L_Clav_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[467]";
connectAttr "L_Clav_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[468]";
connectAttr "L_Clav_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[469]";
connectAttr "L_Clav_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[470]";
connectAttr "L_Clav_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[471]";
connectAttr "L_Clav_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[472]";
connectAttr "L_Clav_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[473]";
connectAttr "L_Shoulder_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[474]"
		;
connectAttr "L_Shoulder_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[475]"
		;
connectAttr "L_Shoulder_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[476]";
connectAttr "L_Shoulder_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[477]";
connectAttr "L_Shoulder_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[478]";
connectAttr "L_Shoulder_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[479]";
connectAttr "L_Shoulder_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[480]";
connectAttr "L_Shoulder_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[481]";
connectAttr "L_Shoulder_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[482]";
connectAttr "L_Shoulder_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[483]";
connectAttr "L_Shoulder_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[484]";
connectAttr "L_Elbow_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[485]"
		;
connectAttr "L_Elbow_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[486]";
connectAttr "L_Elbow_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[487]";
connectAttr "L_Elbow_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[488]";
connectAttr "L_Elbow_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[489]";
connectAttr "L_Elbow_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[490]";
connectAttr "L_Elbow_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[491]";
connectAttr "L_Elbow_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[492]";
connectAttr "L_Elbow_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[493]";
connectAttr "L_Elbow_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[494]";
connectAttr "L_Elbow_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[495]";
connectAttr "L_Wrist_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[496]"
		;
connectAttr "L_Wrist_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[497]";
connectAttr "L_Wrist_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[498]";
connectAttr "L_Wrist_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[499]";
connectAttr "L_Wrist_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[500]";
connectAttr "L_Wrist_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[501]";
connectAttr "L_Wrist_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[502]";
connectAttr "L_Wrist_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[503]";
connectAttr "L_Wrist_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[504]";
connectAttr "L_Wrist_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[505]";
connectAttr "L_Wrist_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[506]";
connectAttr "R_Clav_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[507]";
connectAttr "R_Clav_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[508]";
connectAttr "R_Clav_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[509]";
connectAttr "R_Clav_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[510]";
connectAttr "R_Clav_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[511]";
connectAttr "R_Clav_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[512]";
connectAttr "R_Clav_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[513]";
connectAttr "R_Clav_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[514]";
connectAttr "R_Clav_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[515]";
connectAttr "R_Clav_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[516]";
connectAttr "R_Clav_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[517]";
connectAttr "R_Arm_PV_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[518]";
connectAttr "R_Arm_PV_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[519]";
connectAttr "R_Arm_PV_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[520]";
connectAttr "R_Arm_PV_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[521]";
connectAttr "R_Arm_IK_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[522]";
connectAttr "R_Arm_IK_Ctrl_Stretch.o" "SailorBlueGuy_HankWRN.phl[523]";
connectAttr "R_Arm_IK_Ctrl_MaxStretch.o" "SailorBlueGuy_HankWRN.phl[524]";
connectAttr "R_Arm_IK_Ctrl_ArmLength.o" "SailorBlueGuy_HankWRN.phl[525]";
connectAttr "R_Arm_IK_Ctrl_UpperArmLength.o" "SailorBlueGuy_HankWRN.phl[526]";
connectAttr "R_Arm_IK_Ctrl_LowerArmLength.o" "SailorBlueGuy_HankWRN.phl[527]";
connectAttr "pairBlend2.otx" "SailorBlueGuy_HankWRN.phl[528]";
connectAttr "pairBlend2.oty" "SailorBlueGuy_HankWRN.phl[529]";
connectAttr "pairBlend2.otz" "SailorBlueGuy_HankWRN.phl[530]";
connectAttr "SailorBlueGuy_HankWRN.phl[531]" "R_Arm_IK_Ctrl_parentConstraint1.crp"
		;
connectAttr "SailorBlueGuy_HankWRN.phl[532]" "R_Arm_IK_Ctrl_parentConstraint1.crt"
		;
connectAttr "pairBlend2.orx" "SailorBlueGuy_HankWRN.phl[533]";
connectAttr "pairBlend2.ory" "SailorBlueGuy_HankWRN.phl[534]";
connectAttr "pairBlend2.orz" "SailorBlueGuy_HankWRN.phl[535]";
connectAttr "SailorBlueGuy_HankWRN.phl[536]" "pairBlend2.ro";
connectAttr "SailorBlueGuy_HankWRN.phl[537]" "R_Arm_IK_Ctrl_parentConstraint1.cro"
		;
connectAttr "SailorBlueGuy_HankWRN.phl[538]" "R_Arm_IK_Ctrl_parentConstraint1.cpim"
		;
connectAttr "SailorBlueGuy_HankWRN.phl[539]" "pairBlend2.w";
connectAttr "R_Arm_IK_Base_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[540]";
connectAttr "R_Arm_IK_Base_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[541]";
connectAttr "R_Arm_IK_Base_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[542]";
connectAttr "R_Arm_IK_Base_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[543]";
connectAttr "L_Leg_Clav_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[544]"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[545]"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[546]";
connectAttr "L_Leg_Clav_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[547]";
connectAttr "L_Leg_Clav_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[548]";
connectAttr "L_Leg_Clav_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[549]";
connectAttr "L_Leg_Clav_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[550]";
connectAttr "L_Leg_Clav_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[551]";
connectAttr "L_Leg_Clav_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[552]";
connectAttr "L_Leg_Clav_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[553]";
connectAttr "L_Leg_Clav_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[554]";
connectAttr "L_Leg_IK_Base_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[555]";
connectAttr "L_Leg_IK_Base_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[556]";
connectAttr "L_Leg_IK_Base_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[557]";
connectAttr "L_Leg_IK_Base_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[558]";
connectAttr "L_Leg_IK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[559]";
connectAttr "L_Leg_IK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[560]";
connectAttr "L_Leg_IK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[561]";
connectAttr "L_Leg_IK_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[562]";
connectAttr "L_Leg_IK_Ctrl_RockFoot.o" "SailorBlueGuy_HankWRN.phl[563]";
connectAttr "L_Leg_IK_Ctrl_HeelRotate.o" "SailorBlueGuy_HankWRN.phl[564]";
connectAttr "L_Leg_IK_Ctrl_HeelPivot.o" "SailorBlueGuy_HankWRN.phl[565]";
connectAttr "L_Leg_IK_Ctrl_HeelTwist.o" "SailorBlueGuy_HankWRN.phl[566]";
connectAttr "L_Leg_IK_Ctrl_ToeRotate.o" "SailorBlueGuy_HankWRN.phl[567]";
connectAttr "L_Leg_IK_Ctrl_ToePivot.o" "SailorBlueGuy_HankWRN.phl[568]";
connectAttr "L_Leg_IK_Ctrl_ToeTwist.o" "SailorBlueGuy_HankWRN.phl[569]";
connectAttr "L_Leg_IK_Ctrl_BallRotate.o" "SailorBlueGuy_HankWRN.phl[570]";
connectAttr "L_Leg_IK_Ctrl_BallPivot.o" "SailorBlueGuy_HankWRN.phl[571]";
connectAttr "L_Leg_IK_Ctrl_BallTwist.o" "SailorBlueGuy_HankWRN.phl[572]";
connectAttr "L_Leg_IK_Ctrl_ToeTapRotate.o" "SailorBlueGuy_HankWRN.phl[573]";
connectAttr "L_Leg_IK_Ctrl_ToeTapPivot.o" "SailorBlueGuy_HankWRN.phl[574]";
connectAttr "L_Leg_IK_Ctrl_ToeTapTwist.o" "SailorBlueGuy_HankWRN.phl[575]";
connectAttr "L_Leg_IK_Ctrl_FootRoll.o" "SailorBlueGuy_HankWRN.phl[576]";
connectAttr "L_Leg_IK_Ctrl_ControlVis.o" "SailorBlueGuy_HankWRN.phl[577]";
connectAttr "L_Leg_IK_Ctrl_Stretch.o" "SailorBlueGuy_HankWRN.phl[578]";
connectAttr "L_Leg_IK_Ctrl_MaxStretch.o" "SailorBlueGuy_HankWRN.phl[579]";
connectAttr "L_Leg_IK_Ctrl_LegLength.o" "SailorBlueGuy_HankWRN.phl[580]";
connectAttr "L_Leg_IK_Ctrl_UpperLegLength.o" "SailorBlueGuy_HankWRN.phl[581]";
connectAttr "L_Leg_IK_Ctrl_LowerLegLength.o" "SailorBlueGuy_HankWRN.phl[582]";
connectAttr "L_Leg_IK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[583]";
connectAttr "L_Leg_IK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[584]";
connectAttr "L_Leg_IK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[585]";
connectAttr "L_Leg_PV_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[586]";
connectAttr "L_Leg_PV_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[587]";
connectAttr "L_Leg_PV_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[588]";
connectAttr "L_Leg_PV_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[589]";
connectAttr "R_Leg_Clav_FK_Ctrl_FollowTranslate.o" "SailorBlueGuy_HankWRN.phl[590]"
		;
connectAttr "R_Leg_Clav_FK_Ctrl_FollowRotate.o" "SailorBlueGuy_HankWRN.phl[591]"
		;
connectAttr "R_Leg_Clav_FK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[592]";
connectAttr "R_Leg_Clav_FK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[593]";
connectAttr "R_Leg_Clav_FK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[594]";
connectAttr "R_Leg_Clav_FK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[595]";
connectAttr "R_Leg_Clav_FK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[596]";
connectAttr "R_Leg_Clav_FK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[597]";
connectAttr "R_Leg_Clav_FK_Ctrl_scaleX.o" "SailorBlueGuy_HankWRN.phl[598]";
connectAttr "R_Leg_Clav_FK_Ctrl_scaleY.o" "SailorBlueGuy_HankWRN.phl[599]";
connectAttr "R_Leg_Clav_FK_Ctrl_scaleZ.o" "SailorBlueGuy_HankWRN.phl[600]";
connectAttr "R_Leg_IK_Base_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[601]";
connectAttr "R_Leg_IK_Base_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[602]";
connectAttr "R_Leg_IK_Base_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[603]";
connectAttr "R_Leg_IK_Base_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[604]";
connectAttr "R_Leg_PV_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[605]";
connectAttr "R_Leg_PV_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[606]";
connectAttr "R_Leg_PV_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[607]";
connectAttr "R_Leg_PV_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[608]";
connectAttr "R_Leg_IK_Ctrl_translateX.o" "SailorBlueGuy_HankWRN.phl[609]";
connectAttr "R_Leg_IK_Ctrl_translateY.o" "SailorBlueGuy_HankWRN.phl[610]";
connectAttr "R_Leg_IK_Ctrl_translateZ.o" "SailorBlueGuy_HankWRN.phl[611]";
connectAttr "R_Leg_IK_Ctrl_Follow.o" "SailorBlueGuy_HankWRN.phl[612]";
connectAttr "R_Leg_IK_Ctrl_RockFoot.o" "SailorBlueGuy_HankWRN.phl[613]";
connectAttr "R_Leg_IK_Ctrl_HeelRotate.o" "SailorBlueGuy_HankWRN.phl[614]";
connectAttr "R_Leg_IK_Ctrl_HeelPivot.o" "SailorBlueGuy_HankWRN.phl[615]";
connectAttr "R_Leg_IK_Ctrl_HeelTwist.o" "SailorBlueGuy_HankWRN.phl[616]";
connectAttr "R_Leg_IK_Ctrl_ToeRotate.o" "SailorBlueGuy_HankWRN.phl[617]";
connectAttr "R_Leg_IK_Ctrl_ToePivot.o" "SailorBlueGuy_HankWRN.phl[618]";
connectAttr "R_Leg_IK_Ctrl_ToeTwist.o" "SailorBlueGuy_HankWRN.phl[619]";
connectAttr "R_Leg_IK_Ctrl_BallRotate.o" "SailorBlueGuy_HankWRN.phl[620]";
connectAttr "R_Leg_IK_Ctrl_BallPivot.o" "SailorBlueGuy_HankWRN.phl[621]";
connectAttr "R_Leg_IK_Ctrl_BallTwist.o" "SailorBlueGuy_HankWRN.phl[622]";
connectAttr "R_Leg_IK_Ctrl_ToeTapRotate.o" "SailorBlueGuy_HankWRN.phl[623]";
connectAttr "R_Leg_IK_Ctrl_ToeTapPivot.o" "SailorBlueGuy_HankWRN.phl[624]";
connectAttr "R_Leg_IK_Ctrl_ToeTapTwist.o" "SailorBlueGuy_HankWRN.phl[625]";
connectAttr "R_Leg_IK_Ctrl_FootRoll.o" "SailorBlueGuy_HankWRN.phl[626]";
connectAttr "R_Leg_IK_Ctrl_ControlVis.o" "SailorBlueGuy_HankWRN.phl[627]";
connectAttr "R_Leg_IK_Ctrl_Stretch.o" "SailorBlueGuy_HankWRN.phl[628]";
connectAttr "R_Leg_IK_Ctrl_MaxStretch.o" "SailorBlueGuy_HankWRN.phl[629]";
connectAttr "R_Leg_IK_Ctrl_LegLength.o" "SailorBlueGuy_HankWRN.phl[630]";
connectAttr "R_Leg_IK_Ctrl_UpperLegLength.o" "SailorBlueGuy_HankWRN.phl[631]";
connectAttr "R_Leg_IK_Ctrl_LowerLegLength.o" "SailorBlueGuy_HankWRN.phl[632]";
connectAttr "R_Leg_IK_Ctrl_rotateY.o" "SailorBlueGuy_HankWRN.phl[633]";
connectAttr "R_Leg_IK_Ctrl_rotateX.o" "SailorBlueGuy_HankWRN.phl[634]";
connectAttr "R_Leg_IK_Ctrl_rotateZ.o" "SailorBlueGuy_HankWRN.phl[635]";
connectAttr "SailorBlueGuy_HankWRN.phl[636]" "Ship.do";
connectAttr "polySurface33_translateX.o" "|polySurface33.tx";
connectAttr "polySurface33_translateY.o" "|polySurface33.ty";
connectAttr "polySurface33_translateZ.o" "|polySurface33.tz";
connectAttr "polySurface33_rotateX.o" "|polySurface33.rx";
connectAttr "polySurface33_rotateY.o" "|polySurface33.ry";
connectAttr "polySurface33_rotateZ.o" "|polySurface33.rz";
connectAttr "polySurface33_scaleX.o" "|polySurface33.sx";
connectAttr "polySurface33_scaleY.o" "|polySurface33.sy";
connectAttr "polySurface33_scaleZ.o" "|polySurface33.sz";
connectAttr "polySurface33_visibility.o" "|polySurface33.v";
connectAttr "groupParts48.og" "polySurface33Shape.i";
connectAttr "groupId50.id" "polySurface33Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface33Shape.iog.og[0].gco";
connectAttr "groupParts49.og" "polySurface2Shape.i";
connectAttr "groupId51.id" "polySurface2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface2Shape.iog.og[0].gco";
connectAttr "camera1_aim.tx" "camera1_group.tg[0].ttx";
connectAttr "camera1_aim.ty" "camera1_group.tg[0].tty";
connectAttr "camera1_aim.tz" "camera1_group.tg[0].ttz";
connectAttr "camera1_aim.rp" "camera1_group.tg[0].trp";
connectAttr "camera1_aim.rpt" "camera1_group.tg[0].trt";
connectAttr "camera1_aim.pm" "camera1_group.tg[0].tpm";
connectAttr "camera1.pim" "camera1_group.cpim";
connectAttr "camera1.t" "camera1_group.ct";
connectAttr "camera1.rp" "camera1_group.crp";
connectAttr "camera1.rpt" "camera1_group.crt";
connectAttr "camera1_group.crx" "camera1.rx" -l on;
connectAttr "camera1_group.cry" "camera1.ry" -l on;
connectAttr "camera1_group.crz" "camera1.rz" -l on;
connectAttr "camera1_group.db" "cameraShape1.coi" -l on;
connectAttr "groupParts47.og" "polySurfaceShape47.i";
connectAttr "groupId49.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupParts46.og" "polySurfaceShape46.i";
connectAttr "groupId48.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape45.i";
connectAttr "groupId47.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape44.i";
connectAttr "groupId46.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape43.i";
connectAttr "groupId45.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape42.i";
connectAttr "groupId44.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape41.i";
connectAttr "groupId43.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape40.i";
connectAttr "groupId42.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape39.i";
connectAttr "groupId41.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape38.i";
connectAttr "groupId40.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape37.i";
connectAttr "groupId39.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape36.i";
connectAttr "groupId38.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape35.i";
connectAttr "groupId37.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape34.i";
connectAttr "groupId36.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape33.i";
connectAttr "groupId35.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape32.i";
connectAttr "groupId34.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape31.i";
connectAttr "groupId33.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape30.i";
connectAttr "groupId32.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape29.i";
connectAttr "groupId31.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape28.i";
connectAttr "groupId30.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape27.i";
connectAttr "groupId29.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape26.i";
connectAttr "groupId28.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape25.i";
connectAttr "groupId27.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape24.i";
connectAttr "groupId26.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape23.i";
connectAttr "groupId25.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape22.i";
connectAttr "groupId24.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape21.i";
connectAttr "groupId23.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape20.i";
connectAttr "groupId22.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape19.i";
connectAttr "groupId21.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape18.i";
connectAttr "groupId20.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape17.i";
connectAttr "groupId19.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape16.i";
connectAttr "groupId18.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape15.i";
connectAttr "groupId17.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape14.i";
connectAttr "groupId16.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape13.i";
connectAttr "groupId15.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape12.i";
connectAttr "groupId14.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape11.i";
connectAttr "groupId13.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape10.i";
connectAttr "groupId12.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape9.i";
connectAttr "groupId11.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape8.i";
connectAttr "groupId10.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape7.i";
connectAttr "groupId9.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape6.i";
connectAttr "groupId8.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape5.i";
connectAttr "groupId7.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape4.i";
connectAttr "groupId6.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape3.i";
connectAttr "groupId5.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts2.og" "polySurfaceShape2.i";
connectAttr "groupId4.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts1.og" "polySurfaceShape1.i";
connectAttr "groupId3.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "|polySurface33.t" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].tt";
connectAttr "|polySurface33.rp" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].trp";
connectAttr "|polySurface33.rpt" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].trt";
connectAttr "|polySurface33.r" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].tr";
connectAttr "|polySurface33.ro" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].tro";
connectAttr "|polySurface33.s" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].ts";
connectAttr "|polySurface33.pm" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.w0" "R_Arm_IK_Ctrl_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "PirateShip_CoryPRNfosterParent1.msg" "PirateShip_CoryPRN.fp";
connectAttr "SailorBlueGuy_HankWRNfosterParent1.msg" "SailorBlueGuy_HankWRN.fp";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId4.id" "groupParts2.gi";
connectAttr "polySeparate1.out[2]" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polySeparate1.out[3]" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polySeparate1.out[4]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySeparate1.out[5]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polySeparate1.out[6]" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySeparate1.out[7]" "groupParts8.ig";
connectAttr "groupId10.id" "groupParts8.gi";
connectAttr "polySeparate1.out[8]" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "polySeparate1.out[9]" "groupParts10.ig";
connectAttr "groupId12.id" "groupParts10.gi";
connectAttr "polySeparate1.out[10]" "groupParts11.ig";
connectAttr "groupId13.id" "groupParts11.gi";
connectAttr "polySeparate1.out[11]" "groupParts12.ig";
connectAttr "groupId14.id" "groupParts12.gi";
connectAttr "polySeparate1.out[12]" "groupParts13.ig";
connectAttr "groupId15.id" "groupParts13.gi";
connectAttr "polySeparate1.out[13]" "groupParts14.ig";
connectAttr "groupId16.id" "groupParts14.gi";
connectAttr "polySeparate1.out[14]" "groupParts15.ig";
connectAttr "groupId17.id" "groupParts15.gi";
connectAttr "polySeparate1.out[15]" "groupParts16.ig";
connectAttr "groupId18.id" "groupParts16.gi";
connectAttr "polySeparate1.out[16]" "groupParts17.ig";
connectAttr "groupId19.id" "groupParts17.gi";
connectAttr "polySeparate1.out[17]" "groupParts18.ig";
connectAttr "groupId20.id" "groupParts18.gi";
connectAttr "polySeparate1.out[18]" "groupParts19.ig";
connectAttr "groupId21.id" "groupParts19.gi";
connectAttr "polySeparate1.out[19]" "groupParts20.ig";
connectAttr "groupId22.id" "groupParts20.gi";
connectAttr "polySeparate1.out[20]" "groupParts21.ig";
connectAttr "groupId23.id" "groupParts21.gi";
connectAttr "polySeparate1.out[21]" "groupParts22.ig";
connectAttr "groupId24.id" "groupParts22.gi";
connectAttr "polySeparate1.out[22]" "groupParts23.ig";
connectAttr "groupId25.id" "groupParts23.gi";
connectAttr "polySeparate1.out[23]" "groupParts24.ig";
connectAttr "groupId26.id" "groupParts24.gi";
connectAttr "polySeparate1.out[24]" "groupParts25.ig";
connectAttr "groupId27.id" "groupParts25.gi";
connectAttr "polySeparate1.out[25]" "groupParts26.ig";
connectAttr "groupId28.id" "groupParts26.gi";
connectAttr "polySeparate1.out[26]" "groupParts27.ig";
connectAttr "groupId29.id" "groupParts27.gi";
connectAttr "polySeparate1.out[27]" "groupParts28.ig";
connectAttr "groupId30.id" "groupParts28.gi";
connectAttr "polySeparate1.out[28]" "groupParts29.ig";
connectAttr "groupId31.id" "groupParts29.gi";
connectAttr "polySeparate1.out[29]" "groupParts30.ig";
connectAttr "groupId32.id" "groupParts30.gi";
connectAttr "polySeparate1.out[30]" "groupParts31.ig";
connectAttr "groupId33.id" "groupParts31.gi";
connectAttr "polySeparate1.out[31]" "groupParts32.ig";
connectAttr "groupId34.id" "groupParts32.gi";
connectAttr "polySeparate1.out[32]" "groupParts33.ig";
connectAttr "groupId35.id" "groupParts33.gi";
connectAttr "polySeparate1.out[33]" "groupParts34.ig";
connectAttr "groupId36.id" "groupParts34.gi";
connectAttr "polySeparate1.out[34]" "groupParts35.ig";
connectAttr "groupId37.id" "groupParts35.gi";
connectAttr "polySeparate1.out[35]" "groupParts36.ig";
connectAttr "groupId38.id" "groupParts36.gi";
connectAttr "polySeparate1.out[36]" "groupParts37.ig";
connectAttr "groupId39.id" "groupParts37.gi";
connectAttr "polySeparate1.out[37]" "groupParts38.ig";
connectAttr "groupId40.id" "groupParts38.gi";
connectAttr "polySeparate1.out[38]" "groupParts39.ig";
connectAttr "groupId41.id" "groupParts39.gi";
connectAttr "polySeparate1.out[39]" "groupParts40.ig";
connectAttr "groupId42.id" "groupParts40.gi";
connectAttr "polySeparate1.out[40]" "groupParts41.ig";
connectAttr "groupId43.id" "groupParts41.gi";
connectAttr "polySeparate1.out[41]" "groupParts42.ig";
connectAttr "groupId44.id" "groupParts42.gi";
connectAttr "polySeparate1.out[42]" "groupParts43.ig";
connectAttr "groupId45.id" "groupParts43.gi";
connectAttr "polySeparate1.out[43]" "groupParts44.ig";
connectAttr "groupId46.id" "groupParts44.gi";
connectAttr "polySeparate1.out[44]" "groupParts45.ig";
connectAttr "groupId47.id" "groupParts45.gi";
connectAttr "polySeparate1.out[45]" "groupParts46.ig";
connectAttr "groupId48.id" "groupParts46.gi";
connectAttr "polySeparate1.out[46]" "groupParts47.ig";
connectAttr "groupId49.id" "groupParts47.gi";
connectAttr "polySurfaceShape33.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape14.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape37.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape35.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape13.o" "polyUnite1.ip[4]";
connectAttr "polySurfaceShape30.o" "polyUnite1.ip[5]";
connectAttr "polySurfaceShape21.o" "polyUnite1.ip[6]";
connectAttr "polySurfaceShape32.o" "polyUnite1.ip[7]";
connectAttr "polySurfaceShape15.o" "polyUnite1.ip[8]";
connectAttr "polySurfaceShape26.o" "polyUnite1.ip[9]";
connectAttr "polySurfaceShape40.o" "polyUnite1.ip[10]";
connectAttr "polySurfaceShape7.o" "polyUnite1.ip[11]";
connectAttr "polySurfaceShape8.o" "polyUnite1.ip[12]";
connectAttr "polySurfaceShape42.o" "polyUnite1.ip[13]";
connectAttr "polySurfaceShape43.o" "polyUnite1.ip[14]";
connectAttr "polySurfaceShape9.o" "polyUnite1.ip[15]";
connectAttr "polySurfaceShape16.o" "polyUnite1.ip[16]";
connectAttr "polySurfaceShape28.o" "polyUnite1.ip[17]";
connectAttr "polySurfaceShape17.o" "polyUnite1.ip[18]";
connectAttr "polySurfaceShape34.o" "polyUnite1.ip[19]";
connectAttr "polySurfaceShape25.o" "polyUnite1.ip[20]";
connectAttr "polySurfaceShape39.o" "polyUnite1.ip[21]";
connectAttr "polySurfaceShape31.o" "polyUnite1.ip[22]";
connectAttr "polySurfaceShape20.o" "polyUnite1.ip[23]";
connectAttr "polySurfaceShape44.o" "polyUnite1.ip[24]";
connectAttr "polySurfaceShape22.o" "polyUnite1.ip[25]";
connectAttr "polySurfaceShape41.o" "polyUnite1.ip[26]";
connectAttr "polySurfaceShape27.o" "polyUnite1.ip[27]";
connectAttr "polySurfaceShape45.o" "polyUnite1.ip[28]";
connectAttr "polySurfaceShape23.o" "polyUnite1.ip[29]";
connectAttr "polySurfaceShape18.o" "polyUnite1.ip[30]";
connectAttr "polySurfaceShape12.o" "polyUnite1.ip[31]";
connectAttr "polySurfaceShape19.o" "polyUnite1.ip[32]";
connectAttr "polySurfaceShape38.o" "polyUnite1.ip[33]";
connectAttr "polySurfaceShape10.o" "polyUnite1.ip[34]";
connectAttr "polySurfaceShape24.o" "polyUnite1.ip[35]";
connectAttr "polySurfaceShape29.o" "polyUnite1.ip[36]";
connectAttr "polySurfaceShape36.o" "polyUnite1.ip[37]";
connectAttr "polySurfaceShape11.o" "polyUnite1.ip[38]";
connectAttr "polySurfaceShape33.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape14.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape37.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape35.wm" "polyUnite1.im[3]";
connectAttr "polySurfaceShape13.wm" "polyUnite1.im[4]";
connectAttr "polySurfaceShape30.wm" "polyUnite1.im[5]";
connectAttr "polySurfaceShape21.wm" "polyUnite1.im[6]";
connectAttr "polySurfaceShape32.wm" "polyUnite1.im[7]";
connectAttr "polySurfaceShape15.wm" "polyUnite1.im[8]";
connectAttr "polySurfaceShape26.wm" "polyUnite1.im[9]";
connectAttr "polySurfaceShape40.wm" "polyUnite1.im[10]";
connectAttr "polySurfaceShape7.wm" "polyUnite1.im[11]";
connectAttr "polySurfaceShape8.wm" "polyUnite1.im[12]";
connectAttr "polySurfaceShape42.wm" "polyUnite1.im[13]";
connectAttr "polySurfaceShape43.wm" "polyUnite1.im[14]";
connectAttr "polySurfaceShape9.wm" "polyUnite1.im[15]";
connectAttr "polySurfaceShape16.wm" "polyUnite1.im[16]";
connectAttr "polySurfaceShape28.wm" "polyUnite1.im[17]";
connectAttr "polySurfaceShape17.wm" "polyUnite1.im[18]";
connectAttr "polySurfaceShape34.wm" "polyUnite1.im[19]";
connectAttr "polySurfaceShape25.wm" "polyUnite1.im[20]";
connectAttr "polySurfaceShape39.wm" "polyUnite1.im[21]";
connectAttr "polySurfaceShape31.wm" "polyUnite1.im[22]";
connectAttr "polySurfaceShape20.wm" "polyUnite1.im[23]";
connectAttr "polySurfaceShape44.wm" "polyUnite1.im[24]";
connectAttr "polySurfaceShape22.wm" "polyUnite1.im[25]";
connectAttr "polySurfaceShape41.wm" "polyUnite1.im[26]";
connectAttr "polySurfaceShape27.wm" "polyUnite1.im[27]";
connectAttr "polySurfaceShape45.wm" "polyUnite1.im[28]";
connectAttr "polySurfaceShape23.wm" "polyUnite1.im[29]";
connectAttr "polySurfaceShape18.wm" "polyUnite1.im[30]";
connectAttr "polySurfaceShape12.wm" "polyUnite1.im[31]";
connectAttr "polySurfaceShape19.wm" "polyUnite1.im[32]";
connectAttr "polySurfaceShape38.wm" "polyUnite1.im[33]";
connectAttr "polySurfaceShape10.wm" "polyUnite1.im[34]";
connectAttr "polySurfaceShape24.wm" "polyUnite1.im[35]";
connectAttr "polySurfaceShape29.wm" "polyUnite1.im[36]";
connectAttr "polySurfaceShape36.wm" "polyUnite1.im[37]";
connectAttr "polySurfaceShape11.wm" "polyUnite1.im[38]";
connectAttr "polyUnite1.out" "groupParts48.ig";
connectAttr "groupId50.id" "groupParts48.gi";
connectAttr "polySurfaceShape2.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape1.o" "polyUnite2.ip[2]";
connectAttr "polySurfaceShape46.o" "polyUnite2.ip[3]";
connectAttr "polySurfaceShape4.o" "polyUnite2.ip[4]";
connectAttr "polySurfaceShape5.o" "polyUnite2.ip[5]";
connectAttr "polySurfaceShape47.o" "polyUnite2.ip[6]";
connectAttr "polySurfaceShape6.o" "polyUnite2.ip[7]";
connectAttr "polySurfaceShape2.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite2.im[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite2.im[2]";
connectAttr "polySurfaceShape46.wm" "polyUnite2.im[3]";
connectAttr "polySurfaceShape4.wm" "polyUnite2.im[4]";
connectAttr "polySurfaceShape5.wm" "polyUnite2.im[5]";
connectAttr "polySurfaceShape47.wm" "polyUnite2.im[6]";
connectAttr "polySurfaceShape6.wm" "polyUnite2.im[7]";
connectAttr "polyUnite2.out" "groupParts49.ig";
connectAttr "groupId51.id" "groupParts49.gi";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend2.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend2.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend2.itz1";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend2.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend2.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend2.irz1";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.ctx" "pairBlend2.itx2";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.cty" "pairBlend2.ity2";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.ctz" "pairBlend2.itz2";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.crx" "pairBlend2.irx2";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.cry" "pairBlend2.iry2";
connectAttr "R_Arm_IK_Ctrl_parentConstraint1.crz" "pairBlend2.irz2";
connectAttr "layerManager.dli[1]" "SailorBlueGuy_HankW1:ControlsLayer.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface33Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
// End of PlayingWithLightning-ColbyC.ma
