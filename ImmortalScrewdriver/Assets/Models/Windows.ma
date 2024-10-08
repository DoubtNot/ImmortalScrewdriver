//Maya ASCII 2023 scene
//Name: Windows.ma
//Last modified: Tue, Oct 08, 2024 12:29:37 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "863AEB92-4A1F-05A1-7E8C-9B8DF87FF9CE";
createNode transform -s -n "persp";
	rename -uid "C893EC40-4412-0E18-52D9-4FA31AC45076";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2318401748326453 1.0656933578280099 3.0787841741194364 ;
	setAttr ".r" -type "double3" -9.3383527296217004 -379.79999999986609 -2.1127508835391405e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4B7663B4-411A-6637-3058-C597F097C185";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.7539374402094787;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.89606267213821411 -0.5 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FCF982AD-4826-BA1E-354B-9994D1535B3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "981F0627-4539-F5CF-D000-7A851285332B";
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
	rename -uid "2CBBB407-4137-4460-02C6-07A9EEFE169A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "94F1B621-46AC-4432-CF46-5DBEF18E3D5E";
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
	rename -uid "1CCB7EC8-4A44-4BB4-4290-EF8523E70A46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B063132D-4E0B-C3E7-70F1-01B3A40314A4";
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
createNode transform -n "Windows";
	rename -uid "530CCFBB-45EE-DFD3-3F9C-1798FF15916E";
createNode mesh -n "WindowsShape" -p "Windows";
	rename -uid "096DA901-403A-8F2C-71AE-BABA534A2387";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68712242123889788 0.044781617820262909 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 5 ".pt";
	setAttr ".pt[14]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[15]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[30]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[31]" -type "float3" 0 -2.9802322e-08 0 ;
createNode mesh -n "polySurfaceShape1" -p "Windows";
	rename -uid "0715FE70-47F9-32D4-B41D-E7928786DCA8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 184 ".vt";
	setAttr ".vt[0:165]"  0.58070296 -0.0016155243 -1 0.84554869 0.27860171 -1
		 0.98469096 0.63819081 -1 0.97744423 1.023693681 -1 0.82488585 1.37779927 -1 0.54969585 1.64786482 -1
		 0.19278535 1.79374099 -1 -0.19278568 1.79374087 -1 -0.54969609 1.6478647 -1 -0.82488596 1.37779915 -1
		 -0.97744429 1.023693562 -1 -0.9846909 0.63819039 -1 -0.84554851 0.27860141 -1 -0.58070278 -0.0016156435 -1
		 -0.50730014 0.067760468 -1 -0.75851548 0.33355606 -1 -0.88333577 0.65613222 -1 -0.87683511 1.0019552708 -1
		 -0.73997974 1.31961238 -1 -0.4931154 1.56187987 -1 -0.17294209 1.69274092 -1 0.17294179 1.69274092 -1
		 0.49311519 1.56188011 -1 0.73997962 1.3196125 -1 0.87683505 1.0019552708 -1 0.88333583 0.65613264 -1
		 0.7585156 0.33355632 -1 0.50730026 0.067760587 -1 -0.58070278 -0.0016156435 0 -0.84554851 0.27860141 0
		 -0.75851548 0.33355606 0 -0.50730014 0.067760468 0 -0.9846909 0.63819039 0 -0.88333577 0.65613222 0
		 -0.97744429 1.023693562 0 -0.87683511 1.0019552708 0 -0.82488596 1.37779915 0 -0.73997974 1.31961238 0
		 -0.54969609 1.6478647 0 -0.4931154 1.56187987 0 -0.19278568 1.79374087 0 -0.17294209 1.69274092 0
		 0.19278535 1.79374099 0 0.17294179 1.69274092 0 0.54969585 1.64786482 0 0.49311519 1.56188011 0
		 0.82488585 1.37779927 0 0.73997962 1.3196125 0 0.97744423 1.023693681 0 0.87683505 1.0019552708 0
		 0.98469096 0.63819081 0 0.88333583 0.65613264 0 0.84554869 0.27860171 0 0.7585156 0.33355632 0
		 0.58070296 -0.0016155243 0 0.50730026 0.067760587 0 0.77114618 0.36619785 -0.77899998
		 0.87070525 0.62349111 -0.77899998 0.87070525 0.62349111 -0.22100002 0.77114618 0.36619785 -0.22100002
		 0.86298662 1.034099102 -0.77899998 0.75382805 1.28746879 -0.77899998 0.75382805 1.28746879 -0.22100002
		 0.86298662 1.034099102 -0.22100002 0.46071681 1.57512188 -0.77899998 0.20534016 1.67949915 -0.77899998
		 0.20534016 1.67949915 -0.22100002 0.46071681 1.57512188 -0.22100002 -0.20534045 1.67949903 -0.77899998
		 -0.46071702 1.57512164 -0.77899998 -0.46071702 1.57512164 -0.22100002 -0.20534045 1.67949903 -0.22100002
		 -0.75382817 1.28746867 -0.77899998 -0.86298668 1.034098983 -0.77899998 -0.86298668 1.034098983 -0.22100002
		 -0.75382817 1.28746867 -0.22100002 -0.87070519 0.62349069 -0.77899998 -0.77114606 0.36619759 -0.77899998
		 -0.77114606 0.36619759 -0.22100002 -0.87070519 0.62349069 -0.22100002 0.72493285 0.41303086 -0.75199997
		 0.80500478 0.61996293 -0.75199997 0.80500478 0.61996293 -0.24800003 0.72493285 0.41303086 -0.24800003
		 0.79719996 1.035155535 -0.75199997 0.70940751 1.23893213 -0.75199997 0.70940751 1.23893213 -0.24800003
		 0.79719996 1.035155535 -0.24800003 0.41302353 1.52979684 -0.75199997 0.20763293 1.6137439 -0.75199997
		 0.20763293 1.6137439 -0.24800003 0.41302353 1.52979684 -0.24800003 -0.20763317 1.6137439 -0.75199997
		 -0.41302371 1.52979684 -0.75199997 -0.41302371 1.52979684 -0.24800003 -0.20763317 1.6137439 -0.24800003
		 -0.70940763 1.23893189 -0.75199997 -0.79720002 1.035155535 -0.75199997 -0.79720002 1.035155535 -0.24800003
		 -0.70940763 1.23893189 -0.24800003 -0.80500472 0.61996251 -0.75199997 -0.72493273 0.41303062 -0.75199997
		 -0.72493273 0.41303062 -0.24800003 -0.80500472 0.61996251 -0.24800003 -0.98345047 0.70417875 -0.93400002
		 -0.97868472 0.9577052 -0.93400002 -0.97868472 0.9577052 -0.065999985 -0.98345047 0.70417875 -0.065999985
		 0.97868466 0.95770526 -0.93400002 0.98345053 0.70417917 -0.93400002 0.98345053 0.70417917 -0.065999985
		 0.97868466 0.95770526 -0.065999985 0.8820954 0.722121 -0.93400002 0.87807548 0.93596697 -0.93400002
		 0.87807548 0.93596697 -0.065999985 0.8820954 0.722121 -0.065999985 -0.87807554 0.93596685 -0.93400002
		 -0.88209534 0.72212058 -0.93400002 -0.88209534 0.72212058 -0.065999985 -0.87807554 0.93596685 -0.065999985
		 -1.00044751167 0.70449823 -0.93400002 -0.9956817 0.95802474 -0.93400002 -0.9956817 0.95802474 -0.065999985
		 -1.00044751167 0.70449823 -0.065999985 0.99568164 0.9580248 -0.93400002 1.00044751167 0.70449871 -0.93400002
		 1.00044751167 0.70449871 -0.065999985 0.99568164 0.9580248 -0.065999985 0.86509842 0.72180146 -0.93400002
		 0.8610785 0.93564743 -0.93400002 0.8610785 0.93564743 -0.065999985 0.86509842 0.72180146 -0.065999985
		 -0.86107856 0.93564737 -0.93400002 -0.86509836 0.72180104 -0.93400002 -0.86509836 0.72180104 -0.065999985
		 -0.86107856 0.93564737 -0.065999985 -0.99997765 0.72949386 -0.90899998 -0.99615157 0.93302912 -0.90899998
		 -0.99615157 0.93302912 -0.090999961 -0.99997765 0.72949386 -0.090999961 0.99615151 0.93302923 -0.90899998
		 0.99997765 0.72949427 -0.90899998 0.99997765 0.72949427 -0.090999961 0.99615151 0.93302923 -0.090999961
		 0.86462855 0.74679703 -0.90899998 0.86154836 0.91065186 -0.90899998 0.86154836 0.91065186 -0.090999961
		 0.86462855 0.74679703 -0.090999961 -0.86154842 0.9106518 -0.90900004 -0.86462849 0.74679667 -0.90900004
		 -0.86462849 0.74679667 -0.090999961 -0.86154842 0.9106518 -0.090999961 0.58499998 0 0
		 0.19499998 0 0 -0.19500002 0 0 -0.58499998 0 0 0.58499998 0.125 0 0.19499998 0.125 0
		 -0.19500002 0.125 0 -0.58499998 0.125 0 -0.58499998 0 -1 -0.19499998 0 -1 0.19500002 0 -1
		 0.58499998 0 -1 -0.58499998 0.125 -1 -0.19499998 0.125 -1;
	setAttr ".vt[166:183]" 0.19500002 0.125 -1 0.58499998 0.125 -1 -0.43599999 0.125 -0.85100001
		 -0.34399998 0.125 -0.85100001 -0.34400004 0.125 -0.14899999 -0.43599999 0.125 -0.14899999
		 0.34400004 0.125 -0.85100001 0.43599999 0.125 -0.85100001 0.43599999 0.125 -0.14899999
		 0.34399998 0.125 -0.14899999 -0.428 0.208 -0.84299999 -0.352 0.208 -0.84299999 -0.35200003 0.208 -0.15700001
		 -0.428 0.208 -0.15700001 0.35200003 0.208 -0.84299999 0.428 0.208 -0.84299999 0.428 0.208 -0.15700001
		 0.352 0.208 -0.15700001;
	setAttr -s 368 ".ed";
	setAttr ".ed[0:165]"  12 15 0 15 14 0 14 13 0 13 12 0 11 16 0 16 15 0 12 11 0
		 10 17 0 17 16 0 11 10 0 9 18 0 18 17 0 10 9 0 8 19 0 19 18 0 9 8 0 7 20 0 20 19 0
		 8 7 0 6 21 0 21 20 0 7 6 0 5 22 0 22 21 0 6 5 0 4 23 0 23 22 0 5 4 0 3 24 0 24 23 0
		 4 3 0 2 25 0 25 24 0 3 2 0 1 26 0 26 25 0 2 1 0 0 27 0 27 26 0 1 0 0 31 30 0 30 29 0
		 29 28 0 28 31 0 30 33 0 33 32 0 32 29 0 33 35 0 35 34 0 34 32 0 35 37 0 37 36 0 36 34 0
		 37 39 0 39 38 0 38 36 0 39 41 0 41 40 0 40 38 0 41 43 0 43 42 0 42 40 0 43 45 0 45 44 0
		 44 42 0 45 47 0 47 46 0 46 44 0 47 49 0 49 48 0 48 46 0 49 51 0 51 50 0 50 48 0 51 53 0
		 53 52 0 52 50 0 53 55 0 55 54 0 54 52 0 29 12 0 13 28 0 32 11 0 36 9 0 10 34 0 38 8 0
		 40 7 0 42 6 0 44 5 0 46 4 0 48 3 0 52 1 0 2 50 0 54 0 0 55 27 0 53 26 0 45 22 0 23 47 0
		 41 20 0 21 43 0 37 18 0 19 39 0 31 14 0 15 30 0 56 57 0 57 25 0 26 56 0 57 58 0 58 51 0
		 51 25 0 58 59 0 59 53 0 59 56 0 60 61 0 61 23 0 24 60 0 61 62 0 62 47 0 62 63 0 63 49 0
		 63 60 0 24 49 0 64 65 0 65 21 0 22 64 0 65 66 0 66 43 0 66 67 0 67 45 0 67 64 0 68 69 0
		 69 19 0 20 68 0 69 70 0 70 39 0 70 71 0 71 41 0 71 68 0 72 73 0 73 17 0 18 72 0 73 74 0
		 74 35 0 35 17 0 74 75 0 75 37 0 75 72 0 76 77 0 77 15 0 16 76 0 77 78 0 78 30 0 78 79 0
		 79 33 0 79 76 0 16 33 0 83 82 0 82 81 0 81 80 0 80 83 0 87 86 0 86 85 0 85 84 0 84 87 0
		 91 90 0 90 89 0;
	setAttr ".ed[166:331]" 89 88 0 88 91 0 95 94 0 94 93 0 93 92 0 92 95 0 99 98 0
		 98 97 0 97 96 0 96 99 0 103 102 0 102 101 0 101 100 0 100 103 0 81 57 0 56 80 0 82 58 0
		 83 59 0 85 61 0 60 84 0 86 62 0 87 63 0 89 65 0 64 88 0 90 66 0 91 67 0 93 69 0 68 92 0
		 94 70 0 95 71 0 97 73 0 72 96 0 98 74 0 99 75 0 101 77 0 76 100 0 102 78 0 103 79 0
		 104 105 0 105 10 0 11 104 0 105 106 0 106 34 0 106 107 0 107 32 0 107 104 0 108 109 0
		 109 2 0 3 108 0 109 110 0 110 50 0 110 111 0 111 48 0 111 108 0 112 113 0 113 24 0
		 25 112 0 113 114 0 114 49 0 114 115 0 115 51 0 115 112 0 116 117 0 117 16 0 17 116 0
		 117 118 0 118 33 0 118 119 0 119 35 0 119 116 0 120 121 0 121 105 0 104 120 0 121 122 0
		 122 106 0 122 123 0 123 107 0 123 120 0 124 125 0 125 109 0 108 124 0 125 126 0 126 110 0
		 126 127 0 127 111 0 127 124 0 128 129 0 129 113 0 112 128 0 129 130 0 130 114 0 130 131 0
		 131 115 0 131 128 0 132 133 0 133 117 0 116 132 0 133 134 0 134 118 0 134 135 0 135 119 0
		 135 132 0 136 137 0 137 121 0 120 136 0 137 138 0 138 122 0 138 139 0 139 123 0 139 136 0
		 140 141 0 141 125 0 124 140 0 141 142 0 142 126 0 142 143 0 143 127 0 143 140 0 144 145 0
		 145 129 0 128 144 0 145 146 0 146 130 0 146 147 0 147 131 0 147 144 0 148 149 0 149 133 0
		 132 148 0 149 150 0 150 134 0 150 151 0 151 135 0 151 148 0 140 145 0 144 141 0 143 146 0
		 142 147 0 136 149 0 148 137 0 139 150 0 138 151 0 156 157 0 157 153 0 153 152 0 152 156 0
		 157 158 0 158 154 0 154 153 0 158 159 0 159 155 0 155 154 0 164 165 0 165 161 0 161 160 0
		 160 164 0 165 166 0 166 162 0 162 161 0 166 167 0 167 163 0 163 162 0 157 166 0 165 158 0
		 153 162 0 163 152 0;
	setAttr ".ed[332:367]" 154 161 0 155 160 0 167 156 0 159 164 0 168 169 0 169 165 0
		 164 168 0 169 170 0 170 158 0 170 171 0 171 159 0 171 168 0 172 173 0 173 167 0 166 172 0
		 173 174 0 174 156 0 174 175 0 175 157 0 175 172 0 179 178 0 178 177 0 177 176 0 176 179 0
		 183 182 0 182 181 0 181 180 0 180 183 0 177 169 0 168 176 0 178 170 0 179 171 0 181 173 0
		 172 180 0 182 174 0 183 175 0;
	setAttr -s 184 -ch 736 ".fc[0:183]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 -1 6
		f 4 7 8 -5 9
		f 4 10 11 -8 12
		f 4 13 14 -11 15
		f 4 16 17 -14 18
		f 4 19 20 -17 21
		f 4 22 23 -20 24
		f 4 25 26 -23 27
		f 4 28 29 -26 30
		f 4 31 32 -29 33
		f 4 34 35 -32 36
		f 4 37 38 -35 39
		f 4 40 41 42 43
		f 4 44 45 46 -42
		f 4 47 48 49 -46
		f 4 50 51 52 -49
		f 4 53 54 55 -52
		f 4 56 57 58 -55
		f 4 59 60 61 -58
		f 4 62 63 64 -61
		f 4 65 66 67 -64
		f 4 68 69 70 -67
		f 4 71 72 73 -70
		f 4 74 75 76 -73
		f 4 77 78 79 -76
		f 4 -43 80 -4 81
		f 4 -47 82 -7 -81
		f 4 -53 83 -13 84
		f 4 -56 85 -16 -84
		f 4 -59 86 -19 -86
		f 4 -62 87 -22 -87
		f 4 -65 88 -25 -88
		f 4 -68 89 -28 -89
		f 4 -71 90 -31 -90
		f 4 -77 91 -37 92
		f 4 -80 93 -40 -92
		f 4 -79 94 -38 -94
		f 4 -78 95 -39 -95
		f 4 -66 96 -27 97
		f 4 -60 98 -21 99
		f 4 -54 100 -15 101
		f 4 -41 102 -2 103
		f 4 -44 -82 -3 -103
		f 4 104 105 -36 106
		f 4 107 108 109 -106
		f 4 110 111 -75 -109
		f 4 112 -107 -96 -112
		f 4 113 114 -30 115
		f 4 116 117 -98 -115
		f 4 118 119 -69 -118
		f 4 120 -116 121 -120
		f 4 122 123 -24 124
		f 4 125 126 -100 -124
		f 4 127 128 -63 -127
		f 4 129 -125 -97 -129
		f 4 130 131 -18 132
		f 4 133 134 -102 -132
		f 4 135 136 -57 -135
		f 4 137 -133 -99 -137
		f 4 138 139 -12 140
		f 4 141 142 143 -140
		f 4 144 145 -51 -143
		f 4 146 -141 -101 -146
		f 4 147 148 -6 149
		f 4 150 151 -104 -149
		f 4 152 153 -45 -152
		f 4 154 -150 155 -154
		f 4 156 157 158 159
		f 4 160 161 162 163
		f 4 164 165 166 167
		f 4 168 169 170 171
		f 4 172 173 174 175
		f 4 176 177 178 179
		f 4 -159 180 -105 181
		f 4 -158 182 -108 -181
		f 4 -157 183 -111 -183
		f 4 -160 -182 -113 -184
		f 4 -163 184 -114 185
		f 4 -162 186 -117 -185
		f 4 -161 187 -119 -187
		f 4 -164 -186 -121 -188
		f 4 -167 188 -123 189
		f 4 -166 190 -126 -189
		f 4 -165 191 -128 -191
		f 4 -168 -190 -130 -192
		f 4 -171 192 -131 193
		f 4 -170 194 -134 -193
		f 4 -169 195 -136 -195
		f 4 -172 -194 -138 -196
		f 4 -175 196 -139 197
		f 4 -174 198 -142 -197
		f 4 -173 199 -145 -199
		f 4 -176 -198 -147 -200
		f 4 -179 200 -148 201
		f 4 -178 202 -151 -201
		f 4 -177 203 -153 -203
		f 4 -180 -202 -155 -204
		f 4 204 205 -10 206
		f 4 207 208 -85 -206
		f 4 209 210 -50 -209
		f 4 211 -207 -83 -211
		f 4 212 213 -34 214
		f 4 215 216 -93 -214
		f 4 217 218 -74 -217
		f 4 219 -215 -91 -219
		f 4 220 221 -33 222
		f 4 223 224 -122 -222
		f 4 225 226 -72 -225
		f 4 227 -223 -110 -227
		f 4 228 229 -9 230
		f 4 231 232 -156 -230
		f 4 233 234 -48 -233
		f 4 235 -231 -144 -235
		f 4 236 237 -205 238
		f 4 239 240 -208 -238
		f 4 241 242 -210 -241
		f 4 243 -239 -212 -243
		f 4 244 245 -213 246
		f 4 247 248 -216 -246
		f 4 249 250 -218 -249
		f 4 251 -247 -220 -251
		f 4 252 253 -221 254
		f 4 255 256 -224 -254
		f 4 257 258 -226 -257
		f 4 259 -255 -228 -259
		f 4 260 261 -229 262
		f 4 263 264 -232 -262
		f 4 265 266 -234 -265
		f 4 267 -263 -236 -267
		f 4 268 269 -237 270
		f 4 271 272 -240 -270
		f 4 273 274 -242 -273
		f 4 275 -271 -244 -275
		f 4 276 277 -245 278
		f 4 279 280 -248 -278
		f 4 281 282 -250 -281
		f 4 283 -279 -252 -283
		f 4 284 285 -253 286
		f 4 287 288 -256 -286
		f 4 289 290 -258 -289
		f 4 291 -287 -260 -291
		f 4 292 293 -261 294
		f 4 295 296 -264 -294
		f 4 297 298 -266 -297
		f 4 299 -295 -268 -299
		f 4 -277 300 -285 301
		f 4 -284 302 -288 -301
		f 4 -282 303 -290 -303
		f 4 -280 -302 -292 -304
		f 4 -269 304 -293 305
		f 4 -276 306 -296 -305
		f 4 -274 307 -298 -307
		f 4 -272 -306 -300 -308
		f 4 308 309 310 311
		f 4 312 313 314 -310
		f 4 315 316 317 -314
		f 4 318 319 320 321
		f 4 322 323 324 -320
		f 4 325 326 327 -324
		f 4 -313 328 -323 329
		f 4 -311 330 -328 331
		f 4 -315 332 -325 -331
		f 4 -318 333 -321 -333
		f 4 334 -312 -332 -327
		f 4 335 -322 -334 -317
		f 4 336 337 -319 338
		f 4 339 340 -330 -338
		f 4 341 342 -316 -341
		f 4 343 -339 -336 -343
		f 4 344 345 -326 346
		f 4 347 348 -335 -346
		f 4 349 350 -309 -349
		f 4 351 -347 -329 -351
		f 4 352 353 354 355
		f 4 356 357 358 359
		f 4 -355 360 -337 361
		f 4 -354 362 -340 -361
		f 4 -353 363 -342 -363
		f 4 -356 -362 -344 -364
		f 4 -359 364 -345 365
		f 4 -358 366 -348 -365
		f 4 -357 367 -350 -367
		f 4 -360 -366 -352 -368;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "407A481C-4E69-7E3C-A2F1-0FB9638BE534";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DC147D85-4642-9B81-4920-1DAB2F557654";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0EFB00DE-4460-ED34-4EBD-DDA5B9BCBE27";
createNode displayLayerManager -n "layerManager";
	rename -uid "3E128D94-4448-F0EA-5E87-7EB3187F584B";
createNode displayLayer -n "defaultLayer";
	rename -uid "97FA4E6F-4D8B-6C3E-EA99-18B78ABB5E6F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AC3D74FB-4CB7-ADCC-192F-DBB6207D8E2D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F8E2E1A1-4F53-9490-339C-CF9946A1E998";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F0DFE134-4A8D-54C6-E0C8-88958B74C1D0";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "2A75D8D5-4218-41A7-44AA-72B4E53EC653";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D06D496C-4872-521B-A404-58890EE5BDCF";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "F8EDB640-4DBF-931B-AACD-85BC77E527B9";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "431843E1-4B5B-C044-9A18-B8BF4D682690";
	addAttr -ci true -sn "FloorBits" -ln "FloorBits" -at "long";
	addAttr -ci true -sn "Wall_Padding" -ln "Wall_Padding" -at "long";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "079E41EA-4D93-9192-F431-17A58378044A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 934\n            -height 850\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 934\\n    -height 850\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 934\\n    -height 850\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BEEF283B-4DDD-6D06-F265-6F918CB4F99E";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 900 -ast 0 -aet 900 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "B784C3E0-4ED2-B0BB-8DE1-C690522E5F22";
createNode shadingEngine -n "lambert2SG";
	rename -uid "E0F2B4D4-43DF-9088-8911-A88C352BFA55";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "82E91735-4EEA-2FAC-1CCF-05827041D583";
createNode polyBlindData -n "polyBlindData1";
	rename -uid "EC6FC8E6-4983-6B54-874F-618387EB15AA";
	addAttr -ci true -m -sn "fbd" -ln "faceBlindData" -at "compound" -nc 2;
	addAttr -ci true -sn "FloorBits" -ln "FloorBits" -at "long" -p "faceBlindData";
	addAttr -ci true -sn "Wall_Padding" -ln "Wall_Padding" -at "long" -p "faceBlindData";
	setAttr ".bdn" yes;
	setAttr -s 184 ".fbd[0:183]"  0 0 0 0 0 0 
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
		0 0 0 0 0 0 0 0 0 0 0 1 
		0 1 0 1 0 1 0 1 0 1 0 0 
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
		0 0 0 0 0 0 1 0 1 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode file -n "file1";
	rename -uid "3D92F4CB-4FAE-4C78-8431-6CA3F790BB87";
	setAttr ".ftn" -type "string" "C:/Users/Owner/Desktop/Brick Color Pallette.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "94070BF6-4D88-1FD2-50B9-58912CE50FDF";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "27C1E5E3-40B5-59F0-0599-41AC1BB64201";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:183]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.89606267213821411 -0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.0008950233459473 1 ;
	setAttr ".is" -type "double2" 1 0.3590481162216429 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "D4E13882-4B8B-862C-A4E0-F08D6EAE0153";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[152:183]" -type "float2" 0.063292086 -0.19783039 0.22803627
		 -0.19783039 0.22803627 -0.19783039 0.063292086 -0.19783039 0.39278018 -0.19783039
		 0.39278018 -0.19783039 0.5575242 -0.19783039 0.5575242 -0.19783039 0.5575242 -0.50130481
		 0.39278018 -0.50130481 0.39278018 -0.50130481 0.5575242 -0.50130481 0.22803627 -0.50130481
		 0.22803627 -0.50130481 0.063292086 -0.50130481 0.063292086 -0.50130481 0.49458352
		 -0.45608711 0.45572075 -0.45608711 0.45572093 -0.2430481 0.49458352 -0.2430481 0.16509555
		 -0.45608711 0.12623285 -0.45608711 0.12623285 -0.2430481 0.16509567 -0.2430481 0.49120414
		 -0.24547589 0.45910016 -0.24547589 0.45910016 -0.45365936 0.49120414 -0.45365936
		 0.16171621 -0.24547589 0.12961219 -0.24547589 0.12961219 -0.45365936 0.16171621 -0.45365936;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "0DF98BC4-461F-D445-E303-FFB475964075";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[1]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[40]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]" "e[71]" "e[74]" "e[77]" "e[94]" "e[102]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "89AB8810-4BCC-B17D-5150-2F91F31180DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[1]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[40]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]" "e[71]" "e[74]" "e[77]" "e[94]" "e[102]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "4477A4B8-4855-C2B1-64C8-438C687253AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[1]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[40]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]" "e[71]" "e[74]" "e[77]" "e[94]" "e[102]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "5FFEAAAA-47D7-06B4-7963-58AC3273C288";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[1]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[40]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]" "e[71]" "e[74]" "e[77]" "e[94]" "e[102]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "03710AD1-4E7C-2587-9A6F-2AB900858D2F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[1]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[40]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]" "e[71]" "e[74]" "e[77]" "e[94]" "e[102]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "B70426CF-49E7-01E4-22EF-A089E6C759BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[104]" "e[107]" "e[110]" "e[112:113]" "e[116]" "e[118]" "e[120]" "e[122]" "e[125]" "e[127]" "e[129:130]" "e[133]" "e[135]" "e[137:138]" "e[141]" "e[144]" "e[146:147]" "e[150]" "e[152]" "e[154]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "39C61FD2-4C9A-189D-07A1-009F96B80069";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[56:103]" -type "float2" -0.41306606 -0.44461501 -0.45806575
		 -0.44461501 -0.45806575 -0.26342261 -0.41306606 -0.26342261 -0.45457697 -0.44461501
		 -0.40523845 -0.44461501 -0.40523845 -0.26342258 -0.45457697 -0.26342258 -0.27275506
		 -0.44461501 -0.15732741 -0.44461501 -0.15732741 -0.26342258 -0.27275506 -0.26342258
		 0.028296124 -0.44461501 0.14372376 -0.44461501 0.14372376 -0.26342258 0.028296124
		 -0.26342258 0.27620709 -0.44461501 0.32554561 -0.44461501 0.32554561 -0.26342258
		 0.27620709 -0.26342258 0.32903433 -0.44461501 0.28403458 -0.44461501 0.28403458 -0.26342261
		 0.32903433 -0.26342261 -0.39217812 -0.27218997 -0.42836985 -0.27218997 -0.42836985
		 -0.43584764 -0.39217812 -0.43584764 -0.42484206 -0.27218997 -0.3851608 -0.27218997
		 -0.3851608 -0.43584758 -0.42484206 -0.43584758 -0.25119823 -0.27218997 -0.15836376
		 -0.27218997 -0.15836376 -0.43584758 -0.25119823 -0.43584758 0.029332411 -0.27218997
		 0.12216689 -0.27218997 0.12216689 -0.43584758 0.029332411 -0.43584758 0.25612941
		 -0.27218997 0.29581073 -0.27218997 0.29581073 -0.43584758 0.25612941 -0.43584758
		 0.29933837 -0.27218997 0.26314664 -0.27218997 0.26314664 -0.43584764 0.29933837 -0.43584764;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "C9B41FC6-4016-5C08-D314-AFB172EA96D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[204]" "e[207]" "e[209]" "e[211:212]" "e[215]" "e[217]" "e[219:220]" "e[223]" "e[225]" "e[227:228]" "e[231]" "e[233]" "e[235]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "6F577647-4ADC-F122-7254-05ABE07DE882";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[104:151]" -type "float2" 0.27737334 -0.46872479 0.27561134
		 -0.46872479 0.27561134 -0.23817128 0.27737334 -0.23817128 -0.66514951 -0.46872479
		 -0.66691148 -0.46872479 -0.66691148 -0.23817128 -0.66514951 -0.23817128 -0.62943834
		 -0.46872479 -0.6279521 -0.46872479 -0.6279521 -0.23817128 -0.62943834 -0.23817128
		 0.23841396 -0.46872479 0.23990017 -0.46872479 0.23990017 -0.23817128 0.23841396 -0.23817128
		 0.28365755 -0.46872479 0.28189555 -0.46872479 0.28189555 -0.23817128 0.28365755 -0.23817128
		 -0.67143363 -0.46872479 -0.67319572 -0.46872479 -0.67319572 -0.23817128 -0.67143363
		 -0.23817128 -0.62315422 -0.46872479 -0.62166798 -0.46872479 -0.62166798 -0.23817128
		 -0.62315422 -0.23817128 0.23212981 -0.46872479 0.23361605 -0.46872479 0.23361605
		 -0.23817128 0.23212981 -0.23817128 0.2834838 -0.46208441 0.28206927 -0.46208441 0.28206927
		 -0.24481164 0.2834838 -0.24481164 -0.67160738 -0.46208441 -0.67302197 -0.46208441
		 -0.67302197 -0.24481164 -0.67160738 -0.24481164 -0.62298048 -0.46208441 -0.62184167
		 -0.46208441 -0.62184167 -0.24481164 -0.62298048 -0.24481164 0.23230356 -0.46208444
		 0.23344231 -0.46208444 0.23344231 -0.24481164 0.23230356 -0.24481164;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "AB0D82EA-4F94-5363-398A-18B73334DC39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[336]" "e[339]" "e[341]" "e[343:344]" "e[347]" "e[349]" "e[351]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "822B52A4-4341-8803-D85C-2FAB94DAD684";
	setAttr ".uopa" yes;
	setAttr -s 164 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.5563395 -0.61239183 ;
	setAttr ".uvtk[1]" -type "float2" 0.64751935 -0.5069859 ;
	setAttr ".uvtk[2]" -type "float2" 0.536915 -0.5069859 ;
	setAttr ".uvtk[3]" -type "float2" 0.43886948 -0.61239183 ;
	setAttr ".uvtk[4]" -type "float2" 0.61805499 -0.61239183 ;
	setAttr ".uvtk[5]" -type "float2" 0.70247483 -0.5069859 ;
	setAttr ".uvtk[6]" -type "float2" 0.61484081 -0.61239183 ;
	setAttr ".uvtk[7]" -type "float2" 0.69961268 -0.5069859 ;
	setAttr ".uvtk[8]" -type "float2" 0.54717481 -0.61239183 ;
	setAttr ".uvtk[9]" -type "float2" 0.6393584 -0.5069859 ;
	setAttr ".uvtk[10]" -type "float2" 0.42511666 -0.61239183 ;
	setAttr ".uvtk[11]" -type "float2" 0.53066981 -0.5069859 ;
	setAttr ".uvtk[12]" -type "float2" 0.26681209 -0.61239183 ;
	setAttr ".uvtk[13]" -type "float2" 0.38970494 -0.5069859 ;
	setAttr ".uvtk[14]" -type "float2" 0.095795318 -0.61239183 ;
	setAttr ".uvtk[15]" -type "float2" 0.23742014 -0.5069859 ;
	setAttr ".uvtk[16]" -type "float2" -0.062509373 -0.61239183 ;
	setAttr ".uvtk[17]" -type "float2" 0.096455269 -0.5069859 ;
	setAttr ".uvtk[18]" -type "float2" -0.18456759 -0.61239183 ;
	setAttr ".uvtk[19]" -type "float2" -0.01223357 -0.5069859 ;
	setAttr ".uvtk[20]" -type "float2" -0.25223356 -0.61239183 ;
	setAttr ".uvtk[21]" -type "float2" -0.072487898 -0.5069859 ;
	setAttr ".uvtk[22]" -type "float2" -0.25544775 -0.61239183 ;
	setAttr ".uvtk[23]" -type "float2" -0.075349994 -0.5069859 ;
	setAttr ".uvtk[24]" -type "float2" -0.1937324 -0.61239183 ;
	setAttr ".uvtk[25]" -type "float2" -0.020394515 -0.5069859 ;
	setAttr ".uvtk[26]" -type "float2" -0.076262251 -0.61239183 ;
	setAttr ".uvtk[27]" -type "float2" -0.043705121 -0.61239183 ;
	setAttr ".uvtk[28]" -type "float2" 0.40631229 -0.29374373 ;
	setAttr ".uvtk[29]" -type "float2" 0.64751935 -0.19068316 ;
	setAttr ".uvtk[30]" -type "float2" 0.5563395 -0.29374373 ;
	setAttr ".uvtk[31]" -type "float2" 0.43886948 -0.29374373 ;
	setAttr ".uvtk[32]" -type "float2" 0.70247483 -0.19068316 ;
	setAttr ".uvtk[33]" -type "float2" 0.61805499 -0.29374373 ;
	setAttr ".uvtk[34]" -type "float2" 0.69961268 -0.19068316 ;
	setAttr ".uvtk[35]" -type "float2" 0.61484081 -0.29374373 ;
	setAttr ".uvtk[36]" -type "float2" 0.6393584 -0.19068316 ;
	setAttr ".uvtk[37]" -type "float2" 0.54717481 -0.29374373 ;
	setAttr ".uvtk[38]" -type "float2" 0.53066981 -0.19068316 ;
	setAttr ".uvtk[39]" -type "float2" 0.42511666 -0.29374373 ;
	setAttr ".uvtk[40]" -type "float2" 0.38970494 -0.19068316 ;
	setAttr ".uvtk[41]" -type "float2" 0.26681209 -0.29374373 ;
	setAttr ".uvtk[42]" -type "float2" 0.23742014 -0.19068316 ;
	setAttr ".uvtk[43]" -type "float2" 0.095795318 -0.29374373 ;
	setAttr ".uvtk[44]" -type "float2" 0.096455269 -0.19068316 ;
	setAttr ".uvtk[45]" -type "float2" -0.062509373 -0.29374373 ;
	setAttr ".uvtk[46]" -type "float2" -0.01223357 -0.19068316 ;
	setAttr ".uvtk[47]" -type "float2" -0.18456759 -0.29374373 ;
	setAttr ".uvtk[48]" -type "float2" -0.072487898 -0.19068316 ;
	setAttr ".uvtk[49]" -type "float2" -0.25223356 -0.29374373 ;
	setAttr ".uvtk[50]" -type "float2" -0.075349994 -0.19068316 ;
	setAttr ".uvtk[51]" -type "float2" -0.25544775 -0.29374373 ;
	setAttr ".uvtk[52]" -type "float2" -0.020394515 -0.19068316 ;
	setAttr ".uvtk[53]" -type "float2" -0.1937324 -0.29374373 ;
	setAttr ".uvtk[54]" -type "float2" 0.090209775 -0.19068316 ;
	setAttr ".uvtk[55]" -type "float2" -0.076262251 -0.29374373 ;
	setAttr ".uvtk[152]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[153]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[154]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[155]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[156]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[157]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[158]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[159]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[160]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[161]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[162]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[163]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[164]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[165]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[166]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[167]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[168]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[169]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[170]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[171]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[172]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[173]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[174]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[175]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[176]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[177]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[178]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[179]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[180]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[181]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[182]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[183]" -type "float2" -0.37318578 0 ;
	setAttr ".uvtk[184]" -type "float2" 0.536915 -0.19068316 ;
	setAttr ".uvtk[185]" -type "float2" 0.40631229 -0.61239183 ;
	setAttr ".uvtk[186]" -type "float2" -0.043705121 -0.29374373 ;
	setAttr ".uvtk[187]" -type "float2" 0.090209775 -0.5069859 ;
	setAttr ".uvtk[188]" -type "float2" -0.15512957 -0.29374373 ;
	setAttr ".uvtk[189]" -type "float2" -0.21049257 -0.29374373 ;
	setAttr ".uvtk[190]" -type "float2" -0.20760919 -0.29374373 ;
	setAttr ".uvtk[191]" -type "float2" -0.14690806 -0.29374373 ;
	setAttr ".uvtk[192]" -type "float2" -0.037413433 -0.29374373 ;
	setAttr ".uvtk[193]" -type "float2" 0.10459678 -0.29374373 ;
	setAttr ".uvtk[194]" -type "float2" 0.25801063 -0.29374373 ;
	setAttr ".uvtk[195]" -type "float2" 0.40002078 -0.29374373 ;
	setAttr ".uvtk[196]" -type "float2" 0.5095154 -0.29374373 ;
	setAttr ".uvtk[197]" -type "float2" 0.57021642 -0.29374373 ;
	setAttr ".uvtk[198]" -type "float2" 0.57309979 -0.29374373 ;
	setAttr ".uvtk[199]" -type "float2" 0.51773679 -0.29374373 ;
	setAttr ".uvtk[200]" -type "float2" -0.15512957 -0.61239183 ;
	setAttr ".uvtk[201]" -type "float2" -0.21049257 -0.61239183 ;
	setAttr ".uvtk[202]" -type "float2" -0.20760919 -0.61239183 ;
	setAttr ".uvtk[203]" -type "float2" -0.14690806 -0.61239183 ;
	setAttr ".uvtk[204]" -type "float2" -0.037413433 -0.61239183 ;
	setAttr ".uvtk[205]" -type "float2" 0.10459678 -0.61239183 ;
	setAttr ".uvtk[206]" -type "float2" 0.25801063 -0.61239183 ;
	setAttr ".uvtk[207]" -type "float2" 0.40002078 -0.61239183 ;
	setAttr ".uvtk[208]" -type "float2" 0.5095154 -0.61239183 ;
	setAttr ".uvtk[209]" -type "float2" 0.57021642 -0.61239183 ;
	setAttr ".uvtk[210]" -type "float2" 0.57309979 -0.61239183 ;
	setAttr ".uvtk[211]" -type "float2" 0.51773679 -0.61239183 ;
	setAttr ".uvtk[212]" -type "float2" 0.69691384 -0.26058605 ;
	setAttr ".uvtk[213]" -type "float2" 0.69691384 -0.43708292 ;
	setAttr ".uvtk[214]" -type "float2" 0.65308028 -0.26058605 ;
	setAttr ".uvtk[215]" -type "float2" 0.65308028 -0.43708292 ;
	setAttr ".uvtk[216]" -type "float2" 0.6454556 -0.26058605 ;
	setAttr ".uvtk[217]" -type "float2" 0.6454556 -0.43708292 ;
	setAttr ".uvtk[218]" -type "float2" 0.69351554 -0.26058605 ;
	setAttr ".uvtk[219]" -type "float2" 0.69351554 -0.43708292 ;
	setAttr ".uvtk[220]" -type "float2" 0.40396917 -0.26058605 ;
	setAttr ".uvtk[221]" -type "float2" 0.40396917 -0.43708292 ;
	setAttr ".uvtk[222]" -type "float2" 0.51640546 -0.26058605 ;
	setAttr ".uvtk[223]" -type "float2" 0.51640546 -0.43708292 ;
	setAttr ".uvtk[224]" -type "float2" 0.11071949 -0.26058605 ;
	setAttr ".uvtk[225]" -type "float2" 0.11071949 -0.43708292 ;
	setAttr ".uvtk[226]" -type "float2" 0.22315592 -0.26058605 ;
	setAttr ".uvtk[227]" -type "float2" 0.22315592 -0.43708292 ;
	setAttr ".uvtk[228]" -type "float2" -0.066390581 -0.26058605 ;
	setAttr ".uvtk[229]" -type "float2" -0.066390581 -0.43708292 ;
	setAttr ".uvtk[230]" -type "float2" -0.018330647 -0.26058605 ;
	setAttr ".uvtk[231]" -type "float2" -0.018330647 -0.43708292 ;
	setAttr ".uvtk[232]" -type "float2" -0.025955509 -0.26058605 ;
	setAttr ".uvtk[233]" -type "float2" -0.025955509 -0.43708292 ;
	setAttr ".uvtk[234]" -type "float2" -0.069789 -0.26058605 ;
	setAttr ".uvtk[235]" -type "float2" -0.069789 -0.43708292 ;
	setAttr ".uvtk[236]" -type "float2" 0.70015883 -0.21155913 ;
	setAttr ".uvtk[237]" -type "float2" 0.70015883 -0.48610988 ;
	setAttr ".uvtk[238]" -type "float2" 0.70192862 -0.21155913 ;
	setAttr ".uvtk[239]" -type "float2" 0.70192862 -0.48610988 ;
	setAttr ".uvtk[240]" -type "float2" -0.074803777 -0.21155913 ;
	setAttr ".uvtk[241]" -type "float2" -0.074803777 -0.48610988 ;
	setAttr ".uvtk[242]" -type "float2" -0.073033877 -0.21155913 ;
	setAttr ".uvtk[243]" -type "float2" -0.073033877 -0.48610988 ;
	setAttr ".uvtk[244]" -type "float2" -0.25278372 -0.31477448 ;
	setAttr ".uvtk[245]" -type "float2" -0.25278372 -0.59136105 ;
	setAttr ".uvtk[246]" -type "float2" -0.25489753 -0.31477448 ;
	setAttr ".uvtk[247]" -type "float2" -0.25489753 -0.59136105 ;
	setAttr ".uvtk[248]" -type "float2" 0.61750478 -0.31477448 ;
	setAttr ".uvtk[249]" -type "float2" 0.61750478 -0.59136105 ;
	setAttr ".uvtk[250]" -type "float2" 0.61539096 -0.31477448 ;
	setAttr ".uvtk[251]" -type "float2" 0.61539096 -0.59136105 ;
	setAttr ".uvtk[252]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[253]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[254]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[255]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[256]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[257]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[258]" -type "float2" -0.12328569 -0.10565078 ;
	setAttr ".uvtk[259]" -type "float2" -0.12328569 -0.10565078 ;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
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
connectAttr "polyTweakUV4.out" "WindowsShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "WindowsShape.uvst[0].uvtw";
connectAttr "polyBlindData1.msg" "polySurfaceShape1.bn" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "WindowsShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "WindowsShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV4.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of Windows.ma
