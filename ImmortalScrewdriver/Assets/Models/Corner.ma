//Maya ASCII 2024 scene
//Name: Corner.ma
//Last modified: Mon, Oct 07, 2024 04:06:15 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "8433C85B-45FB-13CE-51A4-9AB09D549707";
createNode transform -s -n "persp";
	rename -uid "239E9400-44B1-D6BD-434D-E5A8860D9B46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1478441099244616 5.8605803880994971 12.3142677242953 ;
	setAttr ".r" -type "double3" -23.73835272960342 18.199999999999484 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "832F6982-4627-CBE4-7A9D-A79AB22F8B5E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.62143437973184;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.4984713792800839 0.066396117210388184 0.59052872657776045 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5EA37798-4D55-8FC2-CC0B-798C85D693D2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1737550916263886 1000.1 2.5914073451491708 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "66229790-40D2-3771-8D1D-4DB62CB5988F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.7284913175919385;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DC7F4846-4B3F-3E19-C25E-4B8D0C7653B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "264B9A80-4387-CF45-0B63-FA96293B9DE2";
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
	rename -uid "81BD1516-4147-8994-4D13-CF87DADAFC5F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1EA9C162-4D71-9BA5-2DC3-BCB2434CCA93";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Corner";
	rename -uid "6DC37001-4303-74CF-2A02-CFB98D55EBF1";
createNode mesh -n "CornerShape" -p "Corner";
	rename -uid "938ECC9F-42BB-F11F-416A-15AFC91D1CA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 262 ".vt";
	setAttr ".vt[0:165]"  2.068666935 0.39754999 -3.094548225 2.068666935 0.75713897 -3.23369074
		 -1.0085644722 0.75713897 -3.22571087 -0.86491704 0.39754999 -3.082063675 2.068666935 1.14264214 -3.22644424
		 -1.0010831356 1.14264214 -3.21822977 2.068666935 1.49674773 -3.073885918 -0.84358549 1.49674773 -3.060732126
		 2.068666935 1.76681328 -2.79869604 -0.55948615 1.76681328 -2.77663279 2.068666935 1.91268945 -2.44178557
		 -0.19102049 1.91268945 -2.40816689 2.068666935 1.91268945 -2.056214571 0.20703375 1.91268945 -2.010112762
		 2.068666935 1.76681352 -1.69930398 0.57549953 1.76681352 -1.64164698 2.068666935 1.49674797 -1.42411399
		 0.85959911 1.49674797 -1.3575474 2.068666935 1.14264226 -1.27155566 1.017096758 1.14264226 -1.20004976
		 2.068666935 0.75713938 -1.26430893 1.024578094 0.75713938 -1.19256842 2.068666935 0.39755028 -1.4034512
		 0.8809309 0.39755028 -1.33621562 2.068666935 0.4525049 -1.49048424 2.068666935 0.77508122 -1.36566401
		 0.91994143 0.77508122 -1.29720509 0.79108 0.4525049 -1.42606652 2.068666935 1.12090385 -1.37216473
		 0.91323018 1.12090385 -1.30391634 2.068666935 1.4385612 -1.50902021 0.77194405 1.4385612 -1.44520247
		 2.068666935 1.68082857 -1.75588465 0.51708698 1.68082857 -1.70005953 2.068666935 1.8116895 -2.076058149
		 0.18654776 1.8116895 -2.03059864 2.068666935 1.81168938 -2.421942 -0.17053437 1.81168938 -2.38768101
		 2.068666935 1.68082845 -2.74211526 -0.5010736 1.68082845 -2.71822023 2.068666935 1.43856096 -2.98897958
		 -0.75593042 1.43856096 -2.97307706 2.068666935 1.12090373 -3.12583494 -0.8972168 1.12090373 -3.11436319
		 2.068666935 0.7750808 -3.13233566 -0.9039278 0.7750808 -3.1210742 2.068666935 0.45250463 -3.0075154305
		 -0.77506638 0.45250463 -2.99221277 -0.99402404 0.75713897 -0.14899993 -0.85488176 0.39754999 -0.14899993
		 -0.98677731 1.14264214 -0.14899993 -0.83421898 1.49674773 -0.14899993 -0.5590291 1.76681328 -0.14899993
		 -0.20211887 1.91268945 -0.14899993 0.18345225 1.91268945 -0.14899993 0.54036272 1.76681352 -0.14899993
		 0.81555271 1.49674797 -0.14899993 0.96811104 1.14264226 -0.14899993 0.97535777 0.75713938 -0.14899993
		 0.8362155 0.39755028 -0.14899993 0.8740027 0.77508122 -0.14899993 0.74918246 0.4525049 -0.14899993
		 0.86750197 1.12090385 -0.14899993 0.73064649 1.4385612 -0.14899993 0.48378205 1.68082857 -0.14899993
		 0.16360867 1.8116895 -0.14899993 -0.1822753 1.81168938 -0.14899993 -0.50244856 1.68082845 -0.14899993
		 -0.74931288 1.43856096 -0.14899993 -0.88616824 1.12090373 -0.14899993 -0.89266896 0.7750808 -0.14899993
		 -0.76784849 0.45250463 -0.14899993 2.068666935 0.78982508 -3.049043655 2.068666935 0.49766538 -2.93599319
		 2.068666935 1.10303962 -3.043156147 2.068666935 1.39074409 -2.91920519 2.068666935 1.61016762 -2.69561815
		 2.068666935 1.72868943 -2.40563488 2.068666935 1.72868943 -2.092365026 2.068666935 1.61016774 -1.80238163
		 2.068666935 1.39074433 -1.57879472 2.068666935 1.10303974 -1.45484364 2.068666935 0.78982544 -1.44895577
		 2.068666935 0.49766564 -1.56200647 2.068666935 0.74239516 -1.18101704 2.068666935 0.35238957 -1.33192897
		 2.068666935 1.16050637 -1.18887675 2.068666935 1.54456472 -1.3543396 2.068666935 1.83747435 -1.652807
		 2.068666935 1.99568951 -2.039907455 2.068666935 1.99568939 -2.45809269 2.068666935 1.83747411 -2.84519291
		 2.068666935 1.54456449 -3.14366031 2.068666935 1.16050625 -3.30912304 2.068666935 0.74239469 -3.31698251
		 2.068666935 0.35238922 -3.16607046 2.068666935 -1.1920929e-07 -2.83301163 2.068666935 0.19705111 -2.90504789
		 2.068666935 0.11884856 -2.90504789 2.068666935 0.11884856 -2.83113503 2.068666935 0.11733294 -2.82970262
		 -1.077315807 0.74239469 -0.14899993 -0.926404 0.35238922 -0.14899993 -1.0694561 1.16050625 -0.14899993
		 -0.90399337 1.54456449 -0.14899993 -0.60552621 1.83747411 -0.14899993 -0.21842599 1.99568939 -0.14899993
		 0.19975936 1.99568951 -0.14899993 0.5868597 1.83747435 -0.14899993 0.8853271 1.54456472 -0.14899993
		 1.050789833 1.16050637 -0.14899993 1.05864954 0.74239516 -0.14899993 0.90773773 0.35238957 -0.14899993
		 0.5746789 0 -0.14899993 0.63471508 0.18435478 -0.14899993 0.63471508 0.11884856 -0.14899993
		 0.57280231 0.11884856 -0.14899993 0.57136989 0.11733305 -0.14899993 0.79071093 0.78982544 -0.14899993
		 0.67766023 0.49766564 -0.14899993 0.78482318 1.10303974 -0.14899993 0.6608721 1.39074433 -0.14899993
		 0.43728507 1.61016774 -0.14899993 0.14730155 1.72868943 -0.14899993 -0.16596818 1.72868943 -0.14899993
		 -0.45595145 1.61016762 -0.14899993 -0.67953849 1.39074421 -0.14899993 -0.80348945 1.10303962 -0.14899993
		 -0.80937719 0.78982508 -0.14899993 -0.69632626 0.49766538 -0.14899993 2.21766686 0.35238922 -3.16607046
		 2.21766686 0.49766538 -2.93599319 2.21766686 0.78982508 -3.049043655 2.21766686 0.74239469 -3.31698251
		 2.21766686 1.10303962 -3.043156147 2.21766686 1.16050625 -3.30912304 2.21766686 1.39074409 -2.91920519
		 2.21766686 1.54456449 -3.14366031 2.21766686 1.61016762 -2.69561815 2.21766686 1.83747411 -2.84519291
		 2.21766686 1.72868943 -2.40563488 2.21766686 1.99568939 -2.45809269 2.21766686 1.72868943 -2.092365026
		 2.21766686 1.99568951 -2.039907455 2.21766686 1.61016774 -1.80238163 2.21766686 1.83747435 -1.652807
		 2.21766686 1.39074433 -1.57879472 2.21766686 1.54456472 -1.3543396 2.21766686 1.10303974 -1.45484364
		 2.21766686 1.16050637 -1.18887675 2.21766686 0.78982544 -1.44895577 2.21766686 0.74239516 -1.18101704
		 2.21766686 0.49766564 -1.56200647 2.21766686 0.35238957 -1.33192897 -0.926404 0.35238922 0
		 -1.077315807 0.74239469 0 -0.80937719 0.78982508 0 -0.69632626 0.49766538 0 -1.0694561 1.16050625 0
		 -0.80348945 1.10303962 0 -0.90399337 1.54456449 0 -0.67953849 1.39074421 0 -0.60552621 1.83747411 0
		 -0.45595145 1.61016762 0 -0.21842599 1.99568939 0 -0.16596818 1.72868943 0;
	setAttr ".vt[166:261]" 0.19975936 1.99568951 0 0.14730155 1.72868943 0 0.5868597 1.83747435 0
		 0.43728507 1.61016774 0 0.8853271 1.54456472 0 0.6608721 1.39074433 0 1.050789833 1.16050637 0
		 0.78482318 1.10303974 0 1.05864954 0.74239516 0 0.79071093 0.78982544 0 0.90773773 0.35238957 0
		 0.67766023 0.49766564 0 2.068666935 0 -1.66498792 2.21766686 0 -1.66498792 2.21766686 -1.1920929e-07 -2.83301163
		 -0.59334493 -1.1920929e-07 -0.14899993 -0.59334493 -1.1920929e-07 0 0.5746789 0 0
		 -0.59149671 0.11733294 -2.80864334 -0.58677316 0.11884856 -2.81017113 -0.58677316 0.21531987 -2.90504789
		 0.63471508 0.13500959 -1.59295177 0.63471508 0.14521384 -1.58243144 2.068666935 0.19705111 -1.59295177
		 0.63471508 0.11884856 -1.60929573 2.068666935 0.11884856 -1.66686451 2.068666935 0.11733305 -1.66829681
		 0.60751057 0.11733305 -1.60963595 0.60898936 0.11884856 -1.60815716 2.068666935 0.11884856 -1.66990042
		 0.63471508 0.11884856 -1.61244988 0.60585523 0.11884856 -1.61129141 0.58767998 0.2440486 -1.62946653
		 0.63471508 0.2440486 -1.63118911 2.068666935 0.2440486 -1.68750548 2.068666935 0.2440486 -2.81049418
		 0.63471508 0.2440486 -2.7974906 -0.57166624 0.2440486 -2.78881288 -0.58729315 0.12118125 -2.80443978
		 -0.58677316 0.12118554 -2.80443978 -0.58677316 0.11884856 -2.80701566 2.068666935 0.11884856 -2.82809901
		 -0.59295607 0.11884856 -2.80443978 -0.59146833 0.11884856 -0.14899993 -0.59003592 0.11733294 -0.14899993
		 -0.67738104 0.20974743 -0.14899993 -0.67738104 0.20566916 -2.80443978 0.60861313 0.11884856 -1.59295177
		 0.60545218 0.11884856 -1.59295177 0.5697664 0.11884856 -0.14899993 0.55216122 0.2440486 -0.14899993
		 0.58648205 0.2440486 -1.59295177 -0.57082748 0.2440486 -0.14899993 -0.57209015 0.2440486 -1.59295177
		 -0.5898397 0.11884856 -2.80443978 -0.58843231 0.11884856 -0.14899993 2.068666935 0.11884856 -2.7072649
		 2.068666935 0.2440486 -2.69628859 2.068666935 0.2440486 -1.8017112 2.068666935 0.11884856 -1.79073441
		 2.068666935 0.11884856 -1.59295177 -0.67738104 0.11884856 -0.14899993 0.44893229 0.11884856 -0.14899993
		 0.43795562 0.2440486 -0.14899993 -0.45662165 0.2440486 -0.14899993 -0.4675982 0.11884856 -0.14899993
		 2.21766686 0.11884856 -2.7072649 2.21766686 0.11884856 -2.90504789 2.21766686 0.2440486 -2.90504789
		 2.21766686 0.2440486 -2.69628859 2.21766686 0.2440486 -1.8017112 2.21766686 0.2440486 -1.59295177
		 2.21766686 0.11884856 -1.59295177 2.21766686 0.11884856 -1.79073441 -0.67738104 0.2440486 0
		 -0.67738104 0.11884856 0 -0.4675982 0.11884856 0 -0.45662165 0.2440486 0 0.63471508 0.11884856 0
		 0.63471508 0.2440486 0 0.43795562 0.2440486 0 0.44893229 0.11884856 0 0.63471508 0.11884856 -1.59295177
		 -0.58677316 0.11884856 -2.90504789 2.21770692 0.11884856 -2.90504789 2.21770692 0.11884856 -1.59295177
		 2.21770692 0.2440486 -1.59295177 2.21770692 0.2440486 -2.90504789 -0.58677316 0.11884856 -2.80443978
		 0.63471508 0.11884856 -2.80443978 0.63471508 0.11884856 4.029274e-05 -0.67738104 0.11884856 4.029274e-05
		 -0.67738104 0.2440486 4.029274e-05 0.63471508 0.2440486 4.029274e-05 -0.58677316 0.11884856 -1.59295177
		 -0.67738104 0.11884856 -2.80443978;
	setAttr -s 483 ".ed";
	setAttr ".ed[0:165]"  3 2 0 2 1 0 1 0 0 0 3 0 2 5 0 5 4 0 4 1 0 5 7 0 7 6 0
		 6 4 0 7 9 0 9 8 0 8 6 0 9 11 0 11 10 0 10 8 0 11 13 0 13 12 0 12 10 0 13 15 0 15 14 0
		 14 12 0 15 17 0 17 16 0 16 14 0 17 19 0 19 18 0 18 16 0 19 21 0 21 20 0 20 18 0 21 23 0
		 23 22 0 22 20 0 27 26 0 26 25 0 25 24 0 24 27 0 26 29 0 29 28 0 28 25 0 29 31 0 31 30 0
		 30 28 0 31 33 0 33 32 0 32 30 0 33 35 0 35 34 0 34 32 0 35 37 0 37 36 0 36 34 0 37 39 0
		 39 38 0 38 36 0 39 41 0 41 40 0 40 38 0 41 43 0 43 42 0 42 40 0 43 45 0 45 44 0 44 42 0
		 45 47 0 47 46 0 46 44 0 49 48 0 48 2 0 3 49 0 48 50 0 50 5 0 50 51 0 51 7 0 51 52 0
		 52 9 0 52 53 0 53 11 0 53 54 0 54 13 0 54 55 0 55 15 0 55 56 0 56 17 0 56 57 0 57 19 0
		 57 58 0 58 21 0 58 59 0 59 23 0 61 60 0 60 26 0 27 61 0 60 62 0 62 29 0 62 63 0 63 31 0
		 63 64 0 64 33 0 64 65 0 65 35 0 65 66 0 66 37 0 66 67 0 67 39 0 67 68 0 68 41 0 68 69 0
		 69 43 0 69 70 0 70 45 0 70 71 0 71 47 0 73 72 0 72 44 0 46 73 0 72 74 0 74 42 0 74 75 0
		 75 40 0 75 76 0 76 38 0 76 77 0 77 36 0 77 78 0 78 34 0 78 79 0 79 32 0 79 80 0 80 30 0
		 80 81 0 81 28 0 81 82 0 82 25 0 82 83 0 83 24 0 85 84 0 84 20 0 22 85 0 84 86 0 86 18 0
		 86 87 0 87 16 0 87 88 0 88 14 0 88 89 0 89 12 0 89 90 0 90 10 0 90 91 0 91 8 0 91 92 0
		 92 6 0 92 93 0 93 4 0 93 94 0 94 1 0 94 95 0 95 0 0 100 99 0 99 98 0 98 97 0 97 0 0
		 95 96 0 96 100 0;
	setAttr ".ed[166:331]" 102 101 0 101 48 0 49 102 0 101 103 0 103 50 0 103 104 0
		 104 51 0 104 105 0 105 52 0 105 106 0 106 53 0 106 107 0 107 54 0 107 108 0 108 55 0
		 108 109 0 109 56 0 109 110 0 110 57 0 110 111 0 111 58 0 111 112 0 112 59 0 117 116 0
		 116 115 0 115 114 0 114 59 0 112 113 0 113 117 0 119 118 0 118 60 0 61 119 0 118 120 0
		 120 62 0 120 121 0 121 63 0 121 122 0 122 64 0 122 123 0 123 65 0 123 124 0 124 66 0
		 124 125 0 125 67 0 125 126 0 126 68 0 126 127 0 127 69 0 127 128 0 128 70 0 128 129 0
		 129 71 0 133 132 0 132 131 0 131 130 0 130 133 0 135 134 0 134 132 0 133 135 0 137 136 0
		 136 134 0 135 137 0 139 138 0 138 136 0 137 139 0 141 140 0 140 138 0 139 141 0 143 142 0
		 142 140 0 141 143 0 145 144 0 144 142 0 143 145 0 147 146 0 146 144 0 145 147 0 149 148 0
		 148 146 0 147 149 0 151 150 0 150 148 0 149 151 0 153 152 0 152 150 0 151 153 0 157 156 0
		 156 155 0 155 154 0 154 157 0 156 159 0 159 158 0 158 155 0 159 161 0 161 160 0 160 158 0
		 161 163 0 163 162 0 162 160 0 163 165 0 165 164 0 164 162 0 165 167 0 167 166 0 166 164 0
		 167 169 0 169 168 0 168 166 0 169 171 0 171 170 0 170 168 0 171 173 0 173 172 0 172 170 0
		 173 175 0 175 174 0 174 172 0 175 177 0 177 176 0 176 174 0 132 72 0 73 131 0 134 74 0
		 136 75 0 138 76 0 140 77 0 142 78 0 144 79 0 146 80 0 148 81 0 150 82 0 152 83 0
		 179 153 0 153 85 0 85 178 0 178 179 0 151 84 0 149 86 0 147 87 0 145 88 0 143 89 0
		 141 90 0 139 91 0 137 92 0 135 93 0 133 94 0 130 95 0 130 180 0 180 96 0 182 154 0
		 154 102 0 102 181 0 181 182 0 155 101 0 158 103 0 160 104 0 164 106 0 105 162 0 166 107 0
		 168 108 0 170 109 0 172 110 0 174 111 0 176 112 0 176 183 0 183 113 0;
	setAttr ".ed[332:482]" 175 118 0 119 177 0 173 120 0 171 121 0 169 122 0 167 123 0
		 165 124 0 163 125 0 161 126 0 159 127 0 156 128 0 157 129 0 186 185 0 185 99 0 100 184 0
		 184 3 0 97 186 0 189 22 0 23 188 0 188 187 0 187 189 0 194 193 0 193 192 0 192 191 0
		 191 190 0 190 194 0 193 197 0 197 196 0 196 195 0 195 192 0 24 200 0 200 199 0 199 198 0
		 198 27 0 47 203 0 203 202 0 202 201 0 201 46 0 100 207 0 207 206 0 206 205 0 205 204 0
		 204 184 0 212 211 0 211 49 0 184 210 0 210 209 0 209 208 0 208 212 0 117 193 0 194 213 0
		 213 116 0 114 188 0 117 215 0 215 214 0 214 197 0 198 217 0 217 216 0 216 61 0 219 203 0
		 71 218 0 218 219 0 221 210 0 204 220 0 220 221 0 96 222 0 222 207 0 201 223 0 223 73 0
		 83 224 0 224 200 0 195 225 0 225 178 0 178 192 0 189 226 0 226 191 0 227 209 0 210 181 0
		 211 227 0 113 228 0 228 215 0 229 119 0 216 229 0 129 230 0 230 218 0 221 231 0 231 181 0
		 235 234 0 234 233 0 233 232 0 232 180 0 131 235 0 179 239 0 239 238 0 238 237 0 237 236 0
		 236 152 0 243 157 0 182 242 0 242 241 0 241 240 0 240 243 0 247 183 0 177 246 0 246 245 0
		 245 244 0 244 247 0 232 222 0 223 235 0 236 224 0 225 239 0 247 228 0 229 246 0 243 230 0
		 231 242 0 187 248 0 248 226 0 248 190 0 186 249 0 249 185 0 98 249 0 219 217 0 199 202 0
		 253 252 0 252 251 0 251 250 0 250 253 0 206 254 0 254 205 0 252 237 0 238 251 0 234 253 0
		 250 233 0 196 255 0 255 254 0 259 258 0 258 257 0 257 256 0 256 259 0 254 220 0 240 258 0
		 259 245 0 254 260 0 260 214 0 244 256 0 257 241 0 248 213 0 208 261 0 261 212 0 227 261 0
		 248 115 0;
	setAttr -s 221 -ch 966 ".fc[0:220]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 -6
		f 4 10 11 12 -9
		f 4 13 14 15 -12
		f 4 16 17 18 -15
		f 4 19 20 21 -18
		f 4 22 23 24 -21
		f 4 25 26 27 -24
		f 4 28 29 30 -27
		f 4 31 32 33 -30
		f 4 34 35 36 37
		f 4 38 39 40 -36
		f 4 41 42 43 -40
		f 4 44 45 46 -43
		f 4 47 48 49 -46
		f 4 50 51 52 -49
		f 4 53 54 55 -52
		f 4 56 57 58 -55
		f 4 59 60 61 -58
		f 4 62 63 64 -61
		f 4 65 66 67 -64
		f 4 68 69 -1 70
		f 4 71 72 -5 -70
		f 4 73 74 -8 -73
		f 4 75 76 -11 -75
		f 4 77 78 -14 -77
		f 4 79 80 -17 -79
		f 4 81 82 -20 -81
		f 4 83 84 -23 -83
		f 4 85 86 -26 -85
		f 4 87 88 -29 -87
		f 4 89 90 -32 -89
		f 4 91 92 -35 93
		f 4 94 95 -39 -93
		f 4 96 97 -42 -96
		f 4 98 99 -45 -98
		f 4 100 101 -48 -100
		f 4 102 103 -51 -102
		f 4 104 105 -54 -104
		f 4 106 107 -57 -106
		f 4 108 109 -60 -108
		f 4 110 111 -63 -110
		f 4 112 113 -66 -112
		f 4 114 115 -68 116
		f 4 117 118 -65 -116
		f 4 119 120 -62 -119
		f 4 121 122 -59 -121
		f 4 123 124 -56 -123
		f 4 125 126 -53 -125
		f 4 127 128 -50 -127
		f 4 129 130 -47 -129
		f 4 131 132 -44 -131
		f 4 133 134 -41 -133
		f 4 135 136 -37 -135
		f 4 137 138 -34 139
		f 4 140 141 -31 -139
		f 4 142 143 -28 -142
		f 4 144 145 -25 -144
		f 4 146 147 -22 -146
		f 4 148 149 -19 -148
		f 4 150 151 -16 -150
		f 4 152 153 -13 -152
		f 4 154 155 -10 -154
		f 4 156 157 -7 -156
		f 4 158 159 -3 -158
		f 7 160 161 162 163 -160 164 165
		f 4 166 167 -69 168
		f 4 169 170 -72 -168
		f 4 171 172 -74 -171
		f 4 173 174 -76 -173
		f 4 175 176 -78 -175
		f 4 177 178 -80 -177
		f 4 179 180 -82 -179
		f 4 181 182 -84 -181
		f 4 183 184 -86 -183
		f 4 185 186 -88 -185
		f 4 187 188 -90 -187
		f 7 189 190 191 192 -189 193 194
		f 4 195 196 -92 197
		f 4 198 199 -95 -197
		f 4 200 201 -97 -200
		f 4 202 203 -99 -202
		f 4 204 205 -101 -204
		f 4 206 207 -103 -206
		f 4 208 209 -105 -208
		f 4 210 211 -107 -210
		f 4 212 213 -109 -212
		f 4 214 215 -111 -214
		f 4 216 217 -113 -216
		f 4 218 219 220 221
		f 4 222 223 -219 224
		f 4 225 226 -223 227
		f 4 228 229 -226 230
		f 4 231 232 -229 233
		f 4 234 235 -232 236
		f 4 237 238 -235 239
		f 4 240 241 -238 242
		f 4 243 244 -241 245
		f 4 246 247 -244 248
		f 4 249 250 -247 251
		f 4 252 253 254 255
		f 4 256 257 258 -254
		f 4 259 260 261 -258
		f 4 262 263 264 -261
		f 4 265 266 267 -264
		f 4 268 269 270 -267
		f 4 271 272 273 -270
		f 4 274 275 276 -273
		f 4 277 278 279 -276
		f 4 280 281 282 -279
		f 4 283 284 285 -282
		f 4 -220 286 -115 287
		f 4 -224 288 -118 -287
		f 4 -227 289 -120 -289
		f 4 -230 290 -122 -290
		f 4 -233 291 -124 -291
		f 4 -236 292 -126 -292
		f 4 -239 293 -128 -293
		f 4 -242 294 -130 -294
		f 4 -245 295 -132 -295
		f 4 -248 296 -134 -296
		f 4 -251 297 -136 -297
		f 4 298 299 300 301
		f 4 -252 302 -138 -300
		f 4 -249 303 -141 -303
		f 4 -246 304 -143 -304
		f 4 -243 305 -145 -305
		f 4 -240 306 -147 -306
		f 4 -237 307 -149 -307
		f 4 -234 308 -151 -308
		f 4 -231 309 -153 -309
		f 4 -228 310 -155 -310
		f 4 -225 311 -157 -311
		f 4 -222 312 -159 -312
		f 4 313 314 -165 -313
		f 4 315 316 317 318
		f 4 -255 319 -167 -317
		f 4 -259 320 -170 -320
		f 4 -262 321 -172 -321
		f 4 -268 322 -176 323
		f 4 -271 324 -178 -323
		f 4 -274 325 -180 -325
		f 4 -277 326 -182 -326
		f 4 -280 327 -184 -327
		f 4 -283 328 -186 -328
		f 4 -286 329 -188 -329
		f 4 330 331 -194 -330
		f 4 -284 332 -196 333
		f 4 -281 334 -199 -333
		f 4 -278 335 -201 -335
		f 4 -275 336 -203 -336
		f 4 -272 337 -205 -337
		f 4 -269 338 -207 -338
		f 4 -266 339 -209 -339
		f 4 -263 340 -211 -340
		f 4 -260 341 -213 -341
		f 4 -257 342 -215 -342
		f 4 -253 343 -217 -343
		f 8 344 345 -161 346 347 -4 -164 348
		f 5 349 -33 350 351 352
		f 5 353 354 355 356 357
		f 5 358 359 360 361 -355
		f 5 362 363 364 365 -38
		f 5 366 367 368 369 -67
		f 6 370 371 372 373 374 -347
		f 8 375 376 -71 -348 377 378 379 380
		f 5 -190 381 -354 382 383
		f 4 -351 -91 -193 384
		f 5 385 386 387 -359 -382
		f 5 388 389 390 -94 -366
		f 5 391 -367 -114 392 393
		f 5 394 -378 -375 395 396
		f 4 -371 -166 397 398
		f 4 -370 399 400 -117
		f 4 -137 401 402 -363
		f 4 403 404 405 -362
		f 7 406 407 -356 -406 -301 -140 -350
		f 7 408 -379 409 -318 -169 -377 410
		f 4 411 412 -386 -195
		f 4 413 -198 -391 414
		f 4 -218 415 416 -393
		f 4 417 418 -410 -395
		f 7 419 420 421 422 -314 -221 423
		f 7 -250 -299 424 425 426 427 428
		f 7 429 -256 -316 430 431 432 433
		f 7 434 -331 -285 435 436 437 438
		f 4 -315 -423 439 -398
		f 4 -401 440 -424 -288
		f 4 -298 -429 441 -402
		f 4 -425 -302 -405 442
		f 4 -174 -322 -265 -324
		f 4 -412 -332 -435 443
		f 4 -436 -334 -414 444
		f 4 -430 445 -416 -344
		f 4 446 -431 -319 -419
		f 4 -353 447 448 -407
		f 4 449 -357 -408 -449
		f 3 -345 450 451
		f 4 -451 -349 -163 452
		f 4 -452 -453 -162 -346
		f 6 -392 453 -389 -365 454 -368
		f 4 455 456 457 458
		f 3 -373 459 460
		f 4 -457 461 -427 462
		f 4 463 -459 464 -421
		f 12 -462 -456 -464 -420 -441 -400 -369 -455 -364 -403 -442 -428
		f 14 -440 -422 -465 -458 -463 -426 -443 -404 -361 465 466 -460 -372 -399
		f 4 467 468 469 470
		f 4 -461 471 -396 -374
		f 12 -437 -445 -415 -390 -454 -394 -417 -446 -434 472 -468 473
		f 14 -472 474 475 -387 -413 -444 -439 476 -470 477 -432 -447 -418 -397
		f 4 -438 -474 -471 -477
		f 4 -469 -473 -433 -478
		f 4 -450 478 -383 -358
		f 3 -381 479 480
		f 4 -380 -409 481 -480
		f 4 -482 -411 -376 -481
		f 6 -467 -466 -360 -388 -476 -475
		f 4 -191 -384 -479 482
		f 5 -385 -192 -483 -448 -352;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A580A9B2-4BEB-1218-2D01-F18A602DFEF8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DD839D83-42B4-C726-6808-039CF59A7AFA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "388DEAB1-4136-CAC2-3803-1F96F57776BF";
createNode displayLayerManager -n "layerManager";
	rename -uid "36ED820A-437B-AD42-E8F1-718270A0FA90";
createNode displayLayer -n "defaultLayer";
	rename -uid "BBA39475-498F-3E55-2DFF-BFB662D4F57A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F308038E-4D6B-3395-1EE7-B6972CE9974F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "13B54B51-41BD-A11E-2810-D7ABCABBB23D";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1EA292B2-4CFE-E507-79D1-BE8854ED49D1";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "8D1D95E5-42EB-4BB7-ED5B-96B62924C0B7";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C2CC7DF0-467B-2E5D-93A1-46B4960EF458";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6A064484-48A1-9E07-4FC9-5284E5CF161C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "49631251-4F05-8B57-458D-83A69962EFBC";
	addAttr -ci true -sn "Doorway" -ln "Doorway" -at "long";
	addAttr -ci true -sn "Enter" -ln "Enter" -at "long";
createNode polyBlindData -n "polyBlindData1";
	rename -uid "63F6C5FF-41BB-A579-1ACE-5986BEE6A46E";
	addAttr -ci true -m -sn "fbd" -ln "faceBlindData" -at "compound" -nc 2;
	addAttr -ci true -sn "Doorway" -ln "Doorway" -at "long" -p "faceBlindData";
	addAttr -ci true -sn "Enter" -ln "Enter" -at "long" -p "faceBlindData";
	setAttr ".bdn" yes;
	setAttr -s 221 ".fbd[0:220]"  0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 1 0 1 0 1 0 
		1 0 1 0 1 0 1 0 1 0 1 0 
		1 0 1 0 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		1 0 1 0 1 1 1 1 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "74BF6D8F-4EFC-CA4A-EAAF-F9B79ACA19DC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 564\n            -height 396\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 563\n            -height 395\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 564\n            -height 395\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1134\n            -height 836\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 836\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 836\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8206A90E-4085-5928-D60C-B8BD72BCD229";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 900 -ast 0 -aet 900 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "polyBlindData1.msg" "CornerShape.bn" -na;
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CornerShape.iog" ":initialShadingGroup.dsm" -na;
// End of Corner.ma
