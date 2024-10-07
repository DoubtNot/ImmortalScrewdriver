//Maya ASCII 2024 scene
//Name: Hall_End.ma
//Last modified: Mon, Oct 07, 2024 04:07:23 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "4531EDC6-48DE-E81D-1C56-129B9C3D49F2";
createNode transform -s -n "persp";
	rename -uid "695315D5-448E-3B46-5788-47BBC582E378";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3311853934835094 4.4833283260670083 7.4501575916485328 ;
	setAttr ".r" -type "double3" -27.338352729615057 14.600000000000746 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DCE62E79-4EC3-821D-EDF9-EE9D5F15AA2F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.975917842568041;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.9604644775390625e-08 0.0621204674243927 1.1409999951720238 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "508403C9-4961-8CB0-988C-B0938C7EEF1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75153819-4CC2-4347-8AE7-FABCAD711444";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C49C97BA-4720-2641-953D-E38032BCFBF7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8CE27E04-44DB-1C1C-9FD7-F1BBA2F5120B";
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
	rename -uid "1F1A8D89-4A89-16D3-14E6-6A8D965C32E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F0591029-4197-8F8A-46CB-098344FB512F";
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
createNode transform -n "Hall_End";
	rename -uid "BB9D7725-44B8-5A7E-67FC-F888EFEAEAF4";
createNode mesh -n "Hall_EndShape" -p "Hall_End";
	rename -uid "3FC84136-4CB3-01F8-9E80-728F9DC8CC67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 236 ".vt";
	setAttr ".vt[0:165]"  0.84554851 0.39755011 -2.14899993 0.9846909 0.75713909 -2.14899993
		 0.88333577 0.77508092 -2.14899993 0.75851548 0.45250475 -2.14899993 0.97744429 1.14264226 -2.14899993
		 0.87683511 1.12090397 -2.14899993 0.82488596 1.49674785 -2.14899993 0.73997974 1.43856108 -2.14899993
		 0.54969609 1.7668134 -2.14899993 0.4931154 1.68082857 -2.14899993 0.19278568 1.91268957 -2.14899993
		 0.17294209 1.81168962 -2.14899993 -0.19278535 1.91268969 -2.14899993 -0.17294179 1.81168962 -2.14899993
		 -0.54969585 1.76681352 -2.14899993 -0.49311519 1.68082881 -2.14899993 -0.82488585 1.49674797 -2.14899993
		 -0.73997962 1.4385612 -2.14899993 -0.97744423 1.14264238 -2.14899993 -0.87683505 1.12090397 -2.14899993
		 -0.98469096 0.7571395 -2.14899993 -0.88333583 0.77508134 -2.14899993 -0.84554869 0.3975504 -2.14899993
		 -0.7585156 0.45250502 -2.14899993 0.84554851 0.39755011 -0.149 0.9846909 0.75713909 -0.149
		 0.97744429 1.14264226 -0.149 0.82488596 1.49674785 -0.149 0.54969609 1.7668134 -0.149
		 0.19278568 1.91268957 -0.149 -0.19278535 1.91268969 -0.149 -0.54969585 1.76681352 -0.149
		 -0.82488585 1.49674797 -0.149 -0.97744423 1.14264238 -0.149 -0.98469096 0.7571395 -0.149
		 -0.84554869 0.3975504 -0.149 -0.7585156 0.45250502 -0.149 -0.88333583 0.77508134 -0.149
		 -0.87683505 1.12090397 -0.149 -0.73997962 1.4385612 -0.149 -0.49311519 1.68082881 -0.149
		 -0.17294179 1.81168962 -0.149 0.17294209 1.81168962 -0.149 0.4931154 1.68082857 -0.149
		 0.73997974 1.43856108 -0.149 0.87683511 1.12090397 -0.149 0.88333577 0.77508092 -0.149
		 0.75851548 0.45250475 -0.149 0.80004394 0.7898252 -0.149 0.68699324 0.49766549 -0.149
		 0.79415625 1.10303974 -0.149 0.6702053 1.39074421 -0.149 0.44661838 1.61016774 -0.149
		 0.15663497 1.72868955 -0.149 -0.1566347 1.72868967 -0.149 -0.4466182 1.61016798 -0.149
		 -0.67020518 1.39074445 -0.149 -0.79415619 1.10303974 -0.149 -0.800044 0.78982556 -0.149
		 -0.68699336 0.49766576 -0.149 -1.067982793 0.74239528 -0.149 -0.91707093 0.35238969 -0.149
		 -1.060123086 1.16050649 -0.149 -0.89466029 1.54456484 -0.149 -0.59619284 1.83747435 -0.149
		 -0.20909244 1.99568963 -0.149 0.2090928 1.99568951 -0.149 0.59619308 1.83747423 -0.149
		 0.89466041 1.54456472 -0.149 1.060123205 1.16050637 -0.149 1.067982674 0.7423948 -0.149
		 0.91707075 0.35238934 -0.149 0.58401167 0 -0.149 0.656048 0.19705123 -0.149 0.656048 0.11884868 -0.149
		 0.58213526 0.11884868 -0.149 0.58070278 0.11733305 -0.149 0.58401167 0 0 0.38996705 0.18340027 0
		 0.68699324 0.49766549 0 0.91707075 0.35238934 0 0.80004394 0.7898252 0 1.067982674 0.7423948 0
		 0.79415625 1.10303974 0 1.060123205 1.16050637 0 0.6702053 1.39074421 0 0.89466041 1.54456472 0
		 0.44661838 1.61016774 0 0.59619308 1.83747423 0 0.15663497 1.72868955 0 0.2090928 1.99568951 0
		 -0.1566347 1.72868967 0 -0.20909244 1.99568963 0 -0.4466182 1.61016798 0 -0.59619284 1.83747435 0
		 -0.67020518 1.39074445 0 -0.89466029 1.54456484 0 -0.79415619 1.10303974 0 -1.060123086 1.16050649 0
		 -0.800044 0.78982556 0 -1.067982793 0.74239528 0 -0.68699336 0.49766576 0 -0.91707093 0.35238969 0
		 -0.38996717 0.18340033 0 -0.58401191 1.1920929e-07 0 -0.58401191 1.1920929e-07 -0.149
		 0.56149429 0.24404871 -2.14899993 0.656048 0.24404871 -2.14899993 0.656048 0.19705123 -2.14899993
		 0.58213526 0.11884868 -2.14899993 0.57909918 0.11884868 -2.14899993 0.58070278 0.11733305 -2.14899993
		 -0.656048 0.19705123 -2.14899993 -0.656048 0.24404871 -2.14899993 -0.56149429 0.24404871 -2.14899993
		 -0.58213532 0.11884868 -2.14899993 -0.58070296 0.11733317 -2.14899993 -0.57909948 0.11884868 -2.14899993
		 -0.58213532 0.11884868 -0.149 -0.58070296 0.11733317 -0.149 -0.656048 0.19705123 -0.149
		 -0.57909948 0.11884868 -0.149 -0.56149429 0.24404871 -0.149 0.56149429 0.24404871 -0.149
		 0.57909918 0.11884868 -0.149 0.45826516 0.11884868 -0.149 0.44728863 0.24404871 -0.149
		 -0.44728863 0.24404871 -0.149 -0.45826539 0.11884868 -0.149 -0.656048 0.11884868 -0.149
		 0.38996705 0.18340027 -6.7070127e-05 0.45826516 0.11884868 -6.7070127e-05 0.44728863 0.24404871 -6.7070127e-05
		 -0.38996717 0.18340033 -6.7070127e-05 -0.44728863 0.24404871 -6.7070127e-05 -0.45826539 0.11884868 -6.7070127e-05
		 -0.656048 0.11884868 -2.29493284 0.656048 0.11884868 -2.29493284 0.656048 0.24404871 -2.29493284
		 -0.656048 0.24404871 -2.29493284 -1 0.9914487 -2.14899993 -0.86602539 0.4914487 -2.14899993
		 -0.49999997 0.12542325 -2.14899993 4.3711388e-08 -0.0085512996 -2.14899993 0.50000006 0.12542331 -2.14899993
		 0.86602539 0.49144864 -2.14899993 1 0.99144876 -2.14899993 0.86602527 1.49144888 -2.14899993
		 0.49999991 1.85747409 -2.14899993 -1.192488e-08 1.99144864 -2.14899993 -0.49999991 1.85747409 -2.14899993
		 -0.86602557 1.4914484 -2.14899993 -1 0.9914487 -2.57999992 -0.86602539 0.4914487 -2.57999992
		 -0.49999997 0.12542325 -2.57999992 4.3711388e-08 -0.0085512996 -2.57999992 0.50000006 0.12542331 -2.57999992
		 0.86602539 0.49144864 -2.57999992 1 0.99144876 -2.57999992 0.86602527 1.49144888 -2.57999992
		 0.49999991 1.85747409 -2.57999992 -1.192488e-08 1.99144864 -2.57999992 -0.49999991 1.85747409 -2.57999992
		 -0.86602557 1.4914484 -2.57999992 -0.61798316 0.99144876 -2.14899993 -0.53518927 1.30044007 -2.14899993;
	setAttr ".vt[166:235]" -0.30899149 1.52663779 -2.14899993 -1.192488e-08 1.60943186 -2.14899993
		 0.30899149 1.52663779 -2.14899993 0.53518897 1.30044031 -2.14899993 0.6179831 0.99144876 -2.14899993
		 0.53518903 0.68245709 -2.14899993 0.30899161 0.45625967 -2.14899993 2.0138168e-08 0.3734656 -2.14899993
		 -0.30899155 0.45625955 -2.14899993 -0.53518909 0.68245715 -2.14899993 -0.61798316 0.99144876 -2.27399993
		 -0.53518927 1.30044007 -2.27399993 -0.30899149 1.52663779 -2.27399993 -1.192488e-08 1.60943186 -2.27399993
		 0.30899149 1.52663779 -2.27399993 0.53518897 1.30044031 -2.27399993 0.6179831 0.99144876 -2.27399993
		 0.53518903 0.68245709 -2.27399993 0.30899161 0.45625967 -2.27399993 2.0138168e-08 0.3734656 -2.27399993
		 -0.30899155 0.45625955 -2.27399993 -0.53518909 0.68245715 -2.27399993 -0.40575153 0.99144876 -2.27399993
		 -0.35139129 1.19432425 -2.27399993 -0.20287567 1.34283984 -2.27399993 -1.192488e-08 1.39720023 -2.27399993
		 0.2028757 1.34283996 -2.27399993 0.35139102 1.19432449 -2.27399993 0.40575147 0.9914487 -2.27399993
		 0.35139108 0.78857291 -2.27399993 0.20287579 0.64005762 -2.27399993 -1.5876472e-08 0.58569723 -2.27399993
		 -0.20287576 0.64005756 -2.27399993 -0.35139114 0.78857291 -2.27399993 -0.40575153 0.99144876 -2.40799999
		 -0.35139129 1.19432425 -2.40799999 -0.20287567 1.34283984 -2.40799999 -1.192488e-08 1.39720023 -2.40799999
		 0.2028757 1.34283996 -2.40799999 0.35139102 1.19432449 -2.40799999 0.40575147 0.9914487 -2.40799999
		 0.35139108 0.78857291 -2.40799999 0.20287579 0.64005762 -2.40799999 -1.5876472e-08 0.58569723 -2.40799999
		 -0.20287576 0.64005756 -2.40799999 -0.35139114 0.78857291 -2.40799999 -0.18937883 0.99144882 -2.40799999
		 -0.16400698 1.086137891 -2.40799999 -0.094689332 1.15545559 -2.40799999 8.1027727e-09 1.1808275 -2.40799999
		 0.094689354 1.15545559 -2.40799999 0.16400675 1.086138248 -2.40799999 0.18937874 0.9914487 -2.40799999
		 0.1640068 0.89675927 -2.40799999 0.094689444 0.82744193 -2.40799999 -5.2593833e-08 0.8020699 -2.40799999
		 -0.094689421 0.82744181 -2.40799999 -0.16400686 0.89675927 -2.40799999 -0.14279141 0.99144882 -2.27900004
		 -0.12366108 1.062844276 -2.27900004 -0.071395613 1.11510968 -2.27900004 1.5289729e-08 1.13424015 -2.27900004
		 0.071395636 1.11510968 -2.27900004 0.12366086 1.062844515 -2.27900004 0.14279132 0.9914487 -2.27900004
		 0.1236609 0.92005295 -2.27900004 0.071395725 0.86778778 -2.27900004 -5.9062096e-08 0.84865737 -2.27900004
		 -0.07139571 0.86778772 -2.27900004 -0.12366097 0.92005301 -2.27900004;
	setAttr -s 440 ".ed";
	setAttr ".ed[0:165]"  3 2 0 2 1 0 1 0 0 0 3 0 2 5 0 5 4 0 4 1 0 5 7 0 7 6 0
		 6 4 0 7 9 0 9 8 0 8 6 0 9 11 0 11 10 0 10 8 0 11 13 0 13 12 0 12 10 0 13 15 0 15 14 0
		 14 12 0 15 17 0 17 16 0 16 14 0 17 19 0 19 18 0 18 16 0 19 21 0 21 20 0 20 18 0 21 23 0
		 23 22 0 22 20 0 1 25 0 25 24 0 24 0 0 4 26 0 26 25 0 6 27 0 27 26 0 8 28 0 28 27 0
		 10 29 0 29 28 0 12 30 0 30 29 0 14 31 0 31 30 0 16 32 0 32 31 0 18 33 0 33 32 0 20 34 0
		 34 33 0 22 35 0 35 34 0 21 37 0 37 36 0 36 23 0 19 38 0 38 37 0 17 39 0 39 38 0 15 40 0
		 40 39 0 13 41 0 41 40 0 11 42 0 42 41 0 9 43 0 43 42 0 7 44 0 44 43 0 5 45 0 45 44 0
		 2 46 0 46 45 0 3 47 0 47 46 0 49 48 0 48 46 0 47 49 0 48 50 0 50 45 0 50 51 0 51 44 0
		 51 52 0 52 43 0 52 53 0 53 42 0 53 54 0 54 41 0 54 55 0 55 40 0 55 56 0 56 39 0 56 57 0
		 57 38 0 57 58 0 58 37 0 58 59 0 59 36 0 61 60 0 60 34 0 35 61 0 60 62 0 62 33 0 62 63 0
		 63 32 0 63 64 0 64 31 0 64 65 0 65 30 0 65 66 0 66 29 0 66 67 0 67 28 0 67 68 0 68 27 0
		 68 69 0 69 26 0 69 70 0 70 25 0 70 71 0 71 24 0 76 75 0 75 74 0 74 73 0 73 24 0 71 72 0
		 72 76 0 80 79 0 79 78 0 78 77 0 77 80 0 82 81 0 81 79 0 80 82 0 84 83 0 83 81 0 82 84 0
		 86 85 0 85 83 0 84 86 0 88 87 0 87 85 0 86 88 0 90 89 0 89 87 0 88 90 0 92 91 0 91 89 0
		 90 92 0 94 93 0 93 91 0 92 94 0 96 95 0 95 93 0 94 96 0 98 97 0 97 95 0 96 98 0 100 99 0
		 99 97 0 98 100 0;
	setAttr ".ed[166:331]" 102 101 0 101 99 0 100 102 0 104 103 0 103 101 0 102 104 0
		 81 48 0 49 79 0 83 50 0 85 51 0 87 52 0 89 53 0 91 54 0 93 55 0 95 56 0 97 57 0 99 58 0
		 101 59 0 102 61 0 61 105 0 105 104 0 100 60 0 98 62 0 96 63 0 94 64 0 92 65 0 90 66 0
		 88 67 0 86 68 0 84 69 0 82 70 0 80 71 0 77 72 0 108 107 0 107 106 0 106 3 0 0 108 0
		 111 110 0 110 109 0 109 111 0 23 114 0 114 113 0 113 112 0 112 22 0 117 116 0 116 115 0
		 115 117 0 73 108 0 76 111 0 109 75 0 116 119 0 119 118 0 118 115 0 112 120 0 120 35 0
		 117 121 0 121 119 0 36 122 0 122 114 0 123 47 0 106 123 0 76 124 0 124 110 0 72 125 0
		 125 124 0 123 126 0 126 49 0 59 127 0 127 122 0 128 105 0 105 119 0 121 128 0 120 129 0
		 129 118 0 131 125 0 78 130 0 130 131 0 126 132 0 132 130 0 134 127 0 103 133 0 133 134 0
		 135 133 0 128 135 0 139 138 0 138 137 0 137 136 0 136 139 0 135 131 0 132 134 0 107 138 0
		 139 113 0 129 136 0 137 74 0 163 162 0 162 161 0 161 160 0 160 159 0 159 158 0 158 157 0
		 157 156 0 156 155 0 155 154 0 154 153 0 153 152 0 152 163 0 153 141 0 141 140 0 140 152 0
		 154 142 0 142 141 0 155 143 0 143 142 0 156 144 0 144 143 0 157 145 0 145 144 0 158 146 0
		 146 145 0 159 147 0 147 146 0 160 148 0 148 147 0 161 149 0 149 148 0 162 150 0 150 149 0
		 163 151 0 151 150 0 140 151 0 164 165 0 165 151 0 140 164 0 165 166 0 166 150 0 166 167 0
		 167 149 0 167 168 0 168 148 0 168 169 0 169 147 0 169 170 0 170 146 0 170 171 0 171 145 0
		 171 172 0 172 144 0 172 173 0 173 143 0 173 174 0 174 142 0 174 175 0 175 141 0 175 164 0
		 176 177 0 177 165 0 164 176 0 177 178 0 178 166 0 178 179 0 179 167 0 179 180 0 180 168 0
		 180 181 0 181 169 0 181 182 0;
	setAttr ".ed[332:439]" 182 170 0 182 183 0 183 171 0 183 184 0 184 172 0 184 185 0
		 185 173 0 185 186 0 186 174 0 186 187 0 187 175 0 187 176 0 188 189 0 189 177 0 176 188 0
		 189 190 0 190 178 0 190 191 0 191 179 0 191 192 0 192 180 0 192 193 0 193 181 0 193 194 0
		 194 182 0 194 195 0 195 183 0 195 196 0 196 184 0 196 197 0 197 185 0 197 198 0 198 186 0
		 198 199 0 199 187 0 199 188 0 200 201 0 201 189 0 188 200 0 201 202 0 202 190 0 202 203 0
		 203 191 0 203 204 0 204 192 0 204 205 0 205 193 0 205 206 0 206 194 0 206 207 0 207 195 0
		 207 208 0 208 196 0 208 209 0 209 197 0 209 210 0 210 198 0 210 211 0 211 199 0 211 200 0
		 212 213 0 213 201 0 200 212 0 213 214 0 214 202 0 214 215 0 215 203 0 215 216 0 216 204 0
		 216 217 0 217 205 0 217 218 0 218 206 0 218 219 0 219 207 0 219 220 0 220 208 0 220 221 0
		 221 209 0 221 222 0 222 210 0 222 223 0 223 211 0 223 212 0 235 234 0 234 233 0 233 232 0
		 232 231 0 231 230 0 230 229 0 229 228 0 228 227 0 227 226 0 226 225 0 225 224 0 224 235 0
		 225 213 0 212 224 0 226 214 0 227 215 0 228 216 0 229 217 0 230 218 0 231 219 0 232 220 0
		 233 221 0 234 222 0 235 223 0;
	setAttr -s 206 -ch 880 ".fc[0:205]" -type "polyFaces" 
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
		f 4 -3 34 35 36
		f 4 -7 37 38 -35
		f 4 -10 39 40 -38
		f 4 -13 41 42 -40
		f 4 -16 43 44 -42
		f 4 -19 45 46 -44
		f 4 -22 47 48 -46
		f 4 -25 49 50 -48
		f 4 -28 51 52 -50
		f 4 -31 53 54 -52
		f 4 -34 55 56 -54
		f 4 -32 57 58 59
		f 4 -29 60 61 -58
		f 4 -26 62 63 -61
		f 4 -23 64 65 -63
		f 4 -20 66 67 -65
		f 4 -17 68 69 -67
		f 4 -14 70 71 -69
		f 4 -11 72 73 -71
		f 4 -8 74 75 -73
		f 4 -5 76 77 -75
		f 4 -1 78 79 -77
		f 4 80 81 -80 82
		f 4 83 84 -78 -82
		f 4 85 86 -76 -85
		f 4 87 88 -74 -87
		f 4 89 90 -72 -89
		f 4 91 92 -70 -91
		f 4 93 94 -68 -93
		f 4 95 96 -66 -95
		f 4 97 98 -64 -97
		f 4 99 100 -62 -99
		f 4 101 102 -59 -101
		f 4 103 104 -57 105
		f 4 106 107 -55 -105
		f 4 108 109 -53 -108
		f 4 110 111 -51 -110
		f 4 112 113 -49 -112
		f 4 114 115 -47 -114
		f 4 116 117 -45 -116
		f 4 118 119 -43 -118
		f 4 120 121 -41 -120
		f 4 122 123 -39 -122
		f 4 124 125 -36 -124
		f 7 126 127 128 129 -126 130 131
		f 4 132 133 134 135
		f 4 136 137 -133 138
		f 4 139 140 -137 141
		f 4 142 143 -140 144
		f 4 145 146 -143 147
		f 4 148 149 -146 150
		f 4 151 152 -149 153
		f 4 154 155 -152 156
		f 4 157 158 -155 159
		f 4 160 161 -158 162
		f 4 163 164 -161 165
		f 4 166 167 -164 168
		f 4 169 170 -167 171
		f 4 -138 172 -81 173
		f 4 -141 174 -84 -173
		f 4 -144 175 -86 -175
		f 4 -147 176 -88 -176
		f 4 -150 177 -90 -177
		f 4 -153 178 -92 -178
		f 4 -156 179 -94 -179
		f 4 -159 180 -96 -180
		f 4 -162 181 -98 -181
		f 4 -165 182 -100 -182
		f 4 -168 183 -102 -183
		f 4 -172 184 185 186
		f 4 -169 187 -104 -185
		f 4 -166 188 -107 -188
		f 4 -163 189 -109 -189
		f 4 -160 190 -111 -190
		f 4 -157 191 -113 -191
		f 4 -154 192 -115 -192
		f 4 -151 193 -117 -193
		f 4 -148 194 -119 -194
		f 4 -145 195 -121 -195
		f 4 -142 196 -123 -196
		f 4 -139 197 -125 -197
		f 4 -136 198 -131 -198
		f 5 199 200 201 -4 202
		f 3 203 204 205
		f 5 206 207 208 209 -33
		f 3 210 211 212
		f 4 -203 -37 -130 213
		f 4 -127 214 -206 215
		f 4 -212 216 217 218
		f 4 -210 219 220 -56
		f 4 -211 221 222 -217
		f 4 -207 -60 223 224
		f 4 225 -79 -202 226
		f 4 227 228 -204 -215
		f 4 -228 -132 229 230
		f 4 -226 231 232 -83
		f 4 -103 233 234 -224
		f 4 235 236 -223 237
		f 7 238 239 -218 -237 -186 -106 -221
		f 6 240 -230 -199 -135 241 242
		f 6 -233 243 244 -242 -134 -174
		f 6 245 -234 -184 -171 246 247
		f 6 248 -247 -170 -187 -236 249
		f 4 250 251 252 253
		f 6 254 -243 -245 255 -248 -249
		f 12 -227 -201 256 -251 257 -208 -225 -235 -246 -256 -244 -232
		f 16 -238 -222 -213 -219 -240 258 -253 259 -128 -216 -205 -229 -231 -241 -255 -250
		f 6 -220 -209 -258 -254 -259 -239
		f 6 -129 -260 -252 -257 -200 -214
		f 12 260 261 262 263 264 265 266 267 268 269 270 271
		f 4 -271 272 273 274
		f 4 -270 275 276 -273
		f 4 -269 277 278 -276
		f 4 -268 279 280 -278
		f 4 -267 281 282 -280
		f 4 -266 283 284 -282
		f 4 -265 285 286 -284
		f 4 -264 287 288 -286
		f 4 -263 289 290 -288
		f 4 -262 291 292 -290
		f 4 -261 293 294 -292
		f 4 -272 -275 295 -294
		f 4 296 297 -296 298
		f 4 299 300 -295 -298
		f 4 301 302 -293 -301
		f 4 303 304 -291 -303
		f 4 305 306 -289 -305
		f 4 307 308 -287 -307
		f 4 309 310 -285 -309
		f 4 311 312 -283 -311
		f 4 313 314 -281 -313
		f 4 315 316 -279 -315
		f 4 317 318 -277 -317
		f 4 319 -299 -274 -319
		f 4 320 321 -297 322
		f 4 323 324 -300 -322
		f 4 325 326 -302 -325
		f 4 327 328 -304 -327
		f 4 329 330 -306 -329
		f 4 331 332 -308 -331
		f 4 333 334 -310 -333
		f 4 335 336 -312 -335
		f 4 337 338 -314 -337
		f 4 339 340 -316 -339
		f 4 341 342 -318 -341
		f 4 343 -323 -320 -343
		f 4 344 345 -321 346
		f 4 347 348 -324 -346
		f 4 349 350 -326 -349
		f 4 351 352 -328 -351
		f 4 353 354 -330 -353
		f 4 355 356 -332 -355
		f 4 357 358 -334 -357
		f 4 359 360 -336 -359
		f 4 361 362 -338 -361
		f 4 363 364 -340 -363
		f 4 365 366 -342 -365
		f 4 367 -347 -344 -367
		f 4 368 369 -345 370
		f 4 371 372 -348 -370
		f 4 373 374 -350 -373
		f 4 375 376 -352 -375
		f 4 377 378 -354 -377
		f 4 379 380 -356 -379
		f 4 381 382 -358 -381
		f 4 383 384 -360 -383
		f 4 385 386 -362 -385
		f 4 387 388 -364 -387
		f 4 389 390 -366 -389
		f 4 391 -371 -368 -391
		f 4 392 393 -369 394
		f 4 395 396 -372 -394
		f 4 397 398 -374 -397
		f 4 399 400 -376 -399
		f 4 401 402 -378 -401
		f 4 403 404 -380 -403
		f 4 405 406 -382 -405
		f 4 407 408 -384 -407
		f 4 409 410 -386 -409
		f 4 411 412 -388 -411
		f 4 413 414 -390 -413
		f 4 415 -395 -392 -415
		f 12 416 417 418 419 420 421 422 423 424 425 426 427
		f 4 -427 428 -393 429
		f 4 -426 430 -396 -429
		f 4 -425 431 -398 -431
		f 4 -424 432 -400 -432
		f 4 -423 433 -402 -433
		f 4 -422 434 -404 -434
		f 4 -421 435 -406 -435
		f 4 -420 436 -408 -436
		f 4 -419 437 -410 -437
		f 4 -418 438 -412 -438
		f 4 -417 439 -414 -439
		f 4 -428 -430 -416 -440;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "23B8545F-4C09-524E-C4D4-748E3263F028";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B8C29951-46F7-9263-210C-E1B2F00F1B32";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B2657DCC-4C46-0B9B-1471-8A899E883CF9";
createNode displayLayerManager -n "layerManager";
	rename -uid "397C04AB-44E3-6BA2-0078-69BAD6028486";
createNode displayLayer -n "defaultLayer";
	rename -uid "900A07E5-4208-9752-12F3-65A5FE304252";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A0CF908C-4215-6326-99E4-5ABF3AFC743B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "48A3CCD4-4955-DEB4-080F-738DD1A304C9";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "13B19CA2-46D8-9977-18FE-5D84F7A35E5F";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "ACE595FD-446A-5D09-40CB-2FB5FDEF87B5";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "EC7A1846-450D-83B5-7C8D-41AA2A690B59";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "0DDA79F5-46B1-7123-94C1-3D9BDC771CB5";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "5B02564A-44C7-0F50-5B12-DD947931300A";
	addAttr -ci true -sn "Enter" -ln "Enter" -at "long";
	addAttr -ci true -sn "Face" -ln "Face" -at "long";
createNode polyBlindData -n "polyBlindData1";
	rename -uid "C26D4501-4764-0477-F788-4F80CEC0DDEC";
	addAttr -ci true -m -sn "fbd" -ln "faceBlindData" -at "compound" -nc 2;
	addAttr -ci true -sn "Enter" -ln "Enter" -at "long" -p "faceBlindData";
	addAttr -ci true -sn "Face" -ln "Face" -at "long" -p "faceBlindData";
	setAttr ".bdn" yes;
	setAttr -s 206 ".fbd[0:205]"  0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 1 0 
		1 0 1 0 1 0 1 0 1 0 1 0 
		1 0 1 0 1 0 1 0 1 0 1 0 
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
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 1 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "15F26F2D-4BAB-AFDD-5012-05B10A856490";
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
	rename -uid "78A9B889-4A46-C26B-8458-6AA19A49B973";
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
connectAttr "polyBlindData1.msg" "Hall_EndShape.bn" -na;
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
connectAttr "Hall_EndShape.iog" ":initialShadingGroup.dsm" -na;
// End of Hall_End.ma
