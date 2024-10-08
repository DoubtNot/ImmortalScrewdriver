//Maya ASCII 2023 scene
//Name: No_Window.ma
//Last modified: Tue, Oct 08, 2024 12:29:26 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "E61705F4-4755-676A-0651-FCBBE1155808";
createNode transform -s -n "persp";
	rename -uid "912E2E60-48D4-6C26-01CE-688F0BD8978B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1269236609972206 1.7085193787122639 -5.0725790340287507 ;
	setAttr ".r" -type "double3" -12.938352729593909 -203.39999999997346 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6FA1A851-4186-5B61-E0E4-B38F31F93F27";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.7581538355719672;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.39000000059604645 0.125 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5768E7AE-4588-F93E-D059-90AFDF55C01A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5B91BB8F-45B8-C9EE-AA55-249B804FAD43";
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
	rename -uid "DA258DFD-48DB-CFC7-D4A1-A5BFEA5F20E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "67CE93A8-4EEE-EA4B-FB1D-9F8894E43812";
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
	rename -uid "DEC874D5-4A4B-752F-7A3C-18AD0E0D31D8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EB3EF3A4-4A72-7BFC-CB81-B5AD01541F2B";
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
createNode transform -n "No_Window";
	rename -uid "CFC8F1A3-4A84-CD6A-4A17-1CA1DEA63778";
createNode mesh -n "No_WindowShape" -p "No_Window";
	rename -uid "1DD12617-4398-8ECD-38CF-5F971732553D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68165886208679738 0.048333480954170227 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "polySurfaceShape1" -p "No_Window";
	rename -uid "EBE77173-4C6D-34CA-D01E-6DB947C3FDB4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 136 ".vt[0:135]"  0.58070296 -0.0016155243 -1 0.84554869 0.27860171 -1
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
		 -0.72493273 0.41303062 -0.24800003 -0.80500472 0.61996251 -0.24800003 0.58499998 0 0
		 0.19499998 0 0 -0.19500002 0 0 -0.58499998 0 0 0.58499998 0.125 0 0.19499998 0.125 0
		 -0.19500002 0.125 0 -0.58499998 0.125 0 -0.58499998 0 -1 -0.19499998 0 -1 0.19500002 0 -1
		 0.58499998 0 -1 -0.58499998 0.125 -1 -0.19499998 0.125 -1 0.19500002 0.125 -1 0.58499998 0.125 -1
		 -0.43599999 0.125 -0.85100001 -0.34399998 0.125 -0.85100001 -0.34400004 0.125 -0.14899999
		 -0.43599999 0.125 -0.14899999 0.34400004 0.125 -0.85100001 0.43599999 0.125 -0.85100001
		 0.43599999 0.125 -0.14899999 0.34399998 0.125 -0.14899999 -0.428 0.208 -0.84299999
		 -0.352 0.208 -0.84299999 -0.35200003 0.208 -0.15700001 -0.428 0.208 -0.15700001 0.35200003 0.208 -0.84299999
		 0.428 0.208 -0.84299999 0.428 0.208 -0.15700001 0.352 0.208 -0.15700001;
	setAttr -s 264 ".ed";
	setAttr ".ed[0:165]"  12 15 0 15 14 0 14 13 0 13 12 0 11 16 0 16 15 0 12 11 0
		 10 17 0 17 16 0 11 10 0 9 18 0 18 17 0 10 9 0 8 19 0 19 18 0 9 8 0 7 20 0 20 19 0
		 8 7 0 6 21 0 21 20 0 7 6 0 5 22 0 22 21 0 6 5 0 4 23 0 23 22 0 5 4 0 3 24 0 24 23 0
		 4 3 0 2 25 0 25 24 0 3 2 0 1 26 0 26 25 0 2 1 0 0 27 0 27 26 0 1 0 0 31 30 0 30 29 0
		 29 28 0 28 31 0 30 33 0 33 32 0 32 29 0 33 35 0 35 34 0 34 32 0 35 37 0 37 36 0 36 34 0
		 37 39 0 39 38 0 38 36 0 39 41 0 41 40 0 40 38 0 41 43 0 43 42 0 42 40 0 43 45 0 45 44 0
		 44 42 0 45 47 0 47 46 0 46 44 0 47 49 0 49 48 0 48 46 0 49 51 0 51 50 0 50 48 0 51 53 0
		 53 52 0 52 50 0 53 55 0 55 54 0 54 52 0 29 12 0 13 28 0 32 11 0 34 10 0 36 9 0 38 8 0
		 40 7 0 42 6 0 44 5 0 46 4 0 48 3 0 50 2 0 52 1 0 54 0 0 55 27 0 53 26 0 49 24 0 25 51 0
		 45 22 0 23 47 0 41 20 0 21 43 0 37 18 0 19 39 0 33 16 0 17 35 0 31 14 0 15 30 0 56 57 0
		 57 25 0 26 56 0 57 58 0 58 51 0 58 59 0 59 53 0 59 56 0 60 61 0 61 23 0 24 60 0 61 62 0
		 62 47 0 62 63 0 63 49 0 63 60 0 64 65 0 65 21 0 22 64 0 65 66 0 66 43 0 66 67 0 67 45 0
		 67 64 0 68 69 0 69 19 0 20 68 0 69 70 0 70 39 0 70 71 0 71 41 0 71 68 0 72 73 0 73 17 0
		 18 72 0 73 74 0 74 35 0 74 75 0 75 37 0 75 72 0 76 77 0 77 15 0 16 76 0 77 78 0 78 30 0
		 78 79 0 79 33 0 79 76 0 83 82 0 82 81 0 81 80 0 80 83 0 87 86 0 86 85 0 85 84 0 84 87 0
		 91 90 0 90 89 0;
	setAttr ".ed[166:263]" 89 88 0 88 91 0 95 94 0 94 93 0 93 92 0 92 95 0 99 98 0
		 98 97 0 97 96 0 96 99 0 103 102 0 102 101 0 101 100 0 100 103 0 81 57 0 56 80 0 82 58 0
		 83 59 0 85 61 0 60 84 0 86 62 0 87 63 0 89 65 0 64 88 0 90 66 0 91 67 0 93 69 0 68 92 0
		 94 70 0 95 71 0 97 73 0 72 96 0 98 74 0 99 75 0 101 77 0 76 100 0 102 78 0 103 79 0
		 108 109 0 109 105 0 105 104 0 104 108 0 109 110 0 110 106 0 106 105 0 110 111 0 111 107 0
		 107 106 0 116 117 0 117 113 0 113 112 0 112 116 0 117 118 0 118 114 0 114 113 0 118 119 0
		 119 115 0 115 114 0 109 118 0 117 110 0 105 114 0 115 104 0 106 113 0 107 112 0 119 108 0
		 111 116 0 120 121 0 121 117 0 116 120 0 121 122 0 122 110 0 122 123 0 123 111 0 123 120 0
		 124 125 0 125 119 0 118 124 0 125 126 0 126 108 0 126 127 0 127 109 0 127 124 0 131 130 0
		 130 129 0 129 128 0 128 131 0 135 134 0 134 133 0 133 132 0 132 135 0 129 121 0 120 128 0
		 130 122 0 131 123 0 133 125 0 124 132 0 134 126 0 135 127 0;
	setAttr -s 132 -ch 528 ".fc[0:131]" -type "polyFaces" 
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
		f 4 -50 83 -10 -83
		f 4 -53 84 -13 -84
		f 4 -56 85 -16 -85
		f 4 -59 86 -19 -86
		f 4 -62 87 -22 -87
		f 4 -65 88 -25 -88
		f 4 -68 89 -28 -89
		f 4 -71 90 -31 -90
		f 4 -74 91 -34 -91
		f 4 -77 92 -37 -92
		f 4 -80 93 -40 -93
		f 4 -79 94 -38 -94
		f 4 -78 95 -39 -95
		f 4 -72 96 -33 97
		f 4 -66 98 -27 99
		f 4 -60 100 -21 101
		f 4 -54 102 -15 103
		f 4 -48 104 -9 105
		f 4 -41 106 -2 107
		f 4 -44 -82 -3 -107
		f 4 108 109 -36 110
		f 4 111 112 -98 -110
		f 4 113 114 -75 -113
		f 4 115 -111 -96 -115
		f 4 116 117 -30 118
		f 4 119 120 -100 -118
		f 4 121 122 -69 -121
		f 4 123 -119 -97 -123
		f 4 124 125 -24 126
		f 4 127 128 -102 -126
		f 4 129 130 -63 -129
		f 4 131 -127 -99 -131
		f 4 132 133 -18 134
		f 4 135 136 -104 -134
		f 4 137 138 -57 -137
		f 4 139 -135 -101 -139
		f 4 140 141 -12 142
		f 4 143 144 -106 -142
		f 4 145 146 -51 -145
		f 4 147 -143 -103 -147
		f 4 148 149 -6 150
		f 4 151 152 -108 -150
		f 4 153 154 -45 -153
		f 4 155 -151 -105 -155
		f 4 156 157 158 159
		f 4 160 161 162 163
		f 4 164 165 166 167
		f 4 168 169 170 171
		f 4 172 173 174 175
		f 4 176 177 178 179
		f 4 -159 180 -109 181
		f 4 -158 182 -112 -181
		f 4 -157 183 -114 -183
		f 4 -160 -182 -116 -184
		f 4 -163 184 -117 185
		f 4 -162 186 -120 -185
		f 4 -161 187 -122 -187
		f 4 -164 -186 -124 -188
		f 4 -167 188 -125 189
		f 4 -166 190 -128 -189
		f 4 -165 191 -130 -191
		f 4 -168 -190 -132 -192
		f 4 -171 192 -133 193
		f 4 -170 194 -136 -193
		f 4 -169 195 -138 -195
		f 4 -172 -194 -140 -196
		f 4 -175 196 -141 197
		f 4 -174 198 -144 -197
		f 4 -173 199 -146 -199
		f 4 -176 -198 -148 -200
		f 4 -179 200 -149 201
		f 4 -178 202 -152 -201
		f 4 -177 203 -154 -203
		f 4 -180 -202 -156 -204
		f 4 204 205 206 207
		f 4 208 209 210 -206
		f 4 211 212 213 -210
		f 4 214 215 216 217
		f 4 218 219 220 -216
		f 4 221 222 223 -220
		f 4 -209 224 -219 225
		f 4 -207 226 -224 227
		f 4 -211 228 -221 -227
		f 4 -214 229 -217 -229
		f 4 230 -208 -228 -223
		f 4 231 -218 -230 -213
		f 4 232 233 -215 234
		f 4 235 236 -226 -234
		f 4 237 238 -212 -237
		f 4 239 -235 -232 -239
		f 4 240 241 -222 242
		f 4 243 244 -231 -242
		f 4 245 246 -205 -245
		f 4 247 -243 -225 -247
		f 4 248 249 250 251
		f 4 252 253 254 255
		f 4 -251 256 -233 257
		f 4 -250 258 -236 -257
		f 4 -249 259 -238 -259
		f 4 -252 -258 -240 -260
		f 4 -255 260 -241 261
		f 4 -254 262 -244 -261
		f 4 -253 263 -246 -263
		f 4 -256 -262 -248 -264;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "ECC32AEF-476C-1E96-3A54-539F206AEAF3";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "91E16B86-4556-5200-1101-8FAD20945062";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "89481608-4AA6-D481-62E5-9CABFB5A0117";
createNode displayLayerManager -n "layerManager";
	rename -uid "835F6BC2-47D8-D964-3724-168DB6AF423A";
createNode displayLayer -n "defaultLayer";
	rename -uid "31B4F54E-452E-370C-E938-18AD4688E8F7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A398D87B-436A-8114-8AE8-A8943F9849E1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3F0DFBA8-4EFC-11D3-08B4-58AA484971C9";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F87244C1-433F-93BF-8783-4D8F0B4D8288";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "0CA81862-49A8-D2C0-5526-4BA8615406E2";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2AC6FD62-4AA1-7B1D-1CA7-BB9549941C04";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "A7BF4B8B-4462-2B79-2AE5-B7A78FFF25EB";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "337F350D-4F8E-D5FD-D7E3-AA8F174B440E";
	addAttr -ci true -sn "FloorBits" -ln "FloorBits" -at "long";
	addAttr -ci true -sn "Wall_Padding" -ln "Wall_Padding" -at "long";
createNode polyBlindData -n "polyBlindData1";
	rename -uid "7B27FA63-4AA0-1482-A44B-A686C18A882B";
	addAttr -ci true -m -sn "fbd" -ln "faceBlindData" -at "compound" -nc 2;
	addAttr -ci true -sn "FloorBits" -ln "FloorBits" -at "long" -p "faceBlindData";
	addAttr -ci true -sn "Wall_Padding" -ln "Wall_Padding" -at "long" -p "faceBlindData";
	setAttr ".bdn" yes;
	setAttr -s 132 ".fbd[0:131]"  0 0 0 0 0 0 
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
		0 0 0 0 0 0 0 1 0 1 0 1 
		0 1 0 1 0 1 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 1 0 
		1 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "47370CAA-4CD6-EDB8-9318-06A35309A744";
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
	rename -uid "03B63576-4635-C40B-A56E-95B872B7315A";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 900 -ast 0 -aet 900 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "19164316-4E90-4DE3-35AF-55B36470DB5C";
createNode shadingEngine -n "lambert2SG";
	rename -uid "03E9C6FE-43C9-31DF-CEDF-689D0927533E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EDA69AD1-4EED-0DF0-BCB6-A1A14A389468";
createNode file -n "file1";
	rename -uid "FE3E635A-432F-E2AD-DA98-95B77D748272";
	setAttr ".ftn" -type "string" "C:/Users/Owner/Desktop/Brick Color Pallette.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "3B5A9669-41F3-C05D-5F45-AAB8611C9AFE";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "3D65B85B-413F-A5CD-40FA-439F9CC796DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.9802322387695312e-08 0.89606267213821411 -0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.9693818688392639 1 ;
	setAttr ".is" -type "double2" 1 0.37873008451566348 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "2CB7ED4B-4F63-66A1-6808-CBB58DB4485B";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[104:135]" -type "float2" -0.064781412 -0.29481265
		 0.099251106 -0.29481265 0.099251106 -0.29481265 -0.064781412 -0.29481265 0.2632837
		 -0.29481265 0.2632837 -0.29481265 0.42731628 -0.29481265 0.42731628 -0.29481265 0.42731628
		 -0.60852039 0.2632837 -0.60852039 0.2632837 -0.60852039 0.42731628 -0.60852039 0.099251106
		 -0.60852039 0.099251106 -0.60852039 -0.064781412 -0.60852039 -0.064781412 -0.60852039
		 0.36464736 -0.56177795 0.32595256 -0.56177795 0.32595262 -0.34155509 0.36464736 -0.34155509
		 0.036582235 -0.56177795 -0.0021126163 -0.56177795 -0.0021126163 -0.34155509 0.036582235
		 -0.34155509 0.36128268 -0.34406477 0.3293173 -0.34406477 0.3293173 -0.55926824 0.36128268
		 -0.55926824 0.033217441 -0.34406477 0.0012521259 -0.34406477 0.0012521259 -0.55926824
		 0.033217441 -0.55926824;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "9DA70BFA-4CE2-A72A-B5ED-F78A099C1A8D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[232]" "e[235]" "e[237]" "e[239:240]" "e[243]" "e[245]" "e[247]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "3B42E57A-49FE-3B37-75FA-C78FA3201C86";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[120:135]" -type "float2" -0.0018516429 0.10431045
		 -0.0018516429 0.10431045 -0.0018516429 0.10431045 -0.0018516429 0.10431045 -0.0018516429
		 0.10431045 -0.0018516429 0.10431045 -0.0018516429 0.10431045 -0.0018516429 0.10431045
		 -0.0018516429 0.10431045 -0.0018516429 0.10431045 -0.0018516429 0.10431046 -0.0018516429
		 0.10431046 -0.0018516429 0.10431045 -0.0018516429 0.10431045 -0.0018516429 0.10431046
		 -0.0018516429 0.10431046;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "0F437B10-4ECF-00B1-9C51-1D8C949BEE16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[1]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[40]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]" "e[71]" "e[74]" "e[77]" "e[94]" "e[106]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "CEF042B6-48F4-5D4D-3C62-1CAA08FA9E7C";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.44466764 -0.62491852 ;
	setAttr ".uvtk[1]" -type "float2" 0.65148085 -0.61803263 ;
	setAttr ".uvtk[2]" -type "float2" 0.53850234 -0.61803263 ;
	setAttr ".uvtk[3]" -type "float2" 0.32263196 -0.62491852 ;
	setAttr ".uvtk[4]" -type "float2" 0.50878161 -0.62491852 ;
	setAttr ".uvtk[5]" -type "float2" 0.70761609 -0.61803263 ;
	setAttr ".uvtk[6]" -type "float2" 0.50544256 -0.62491852 ;
	setAttr ".uvtk[7]" -type "float2" 0.70469254 -0.61803263 ;
	setAttr ".uvtk[8]" -type "float2" 0.43514675 -0.62491852 ;
	setAttr ".uvtk[9]" -type "float2" 0.64314491 -0.61803263 ;
	setAttr ".uvtk[10]" -type "float2" 0.30834472 -0.62491852 ;
	setAttr ".uvtk[11]" -type "float2" 0.53212309 -0.61803263 ;
	setAttr ".uvtk[12]" -type "float2" 0.14388752 -0.62491852 ;
	setAttr ".uvtk[13]" -type "float2" 0.38813207 -0.61803263 ;
	setAttr ".uvtk[14]" -type "float2" -0.033776071 -0.62491852 ;
	setAttr ".uvtk[15]" -type "float2" 0.23257855 -0.61803263 ;
	setAttr ".uvtk[16]" -type "float2" -0.19823325 -0.62491852 ;
	setAttr ".uvtk[17]" -type "float2" 0.08858756 -0.61803263 ;
	setAttr ".uvtk[18]" -type "float2" -0.32503527 -0.62491852 ;
	setAttr ".uvtk[19]" -type "float2" -0.022434182 -0.61803263 ;
	setAttr ".uvtk[20]" -type "float2" -0.39533126 -0.62491852 ;
	setAttr ".uvtk[21]" -type "float2" -0.083981954 -0.61803263 ;
	setAttr ".uvtk[22]" -type "float2" -0.39867032 -0.62491852 ;
	setAttr ".uvtk[23]" -type "float2" -0.086905502 -0.61803263 ;
	setAttr ".uvtk[24]" -type "float2" -0.33455634 -0.62491852 ;
	setAttr ".uvtk[25]" -type "float2" -0.030770428 -0.61803263 ;
	setAttr ".uvtk[26]" -type "float2" -0.21252072 -0.62491852 ;
	setAttr ".uvtk[27]" -type "float2" -0.17869818 -0.62491852 ;
	setAttr ".uvtk[28]" -type "float2" 0.28880954 -0.28123915 ;
	setAttr ".uvtk[29]" -type "float2" 0.65148085 -0.28259671 ;
	setAttr ".uvtk[30]" -type "float2" 0.44466764 -0.28123915 ;
	setAttr ".uvtk[31]" -type "float2" 0.32263196 -0.28123915 ;
	setAttr ".uvtk[32]" -type "float2" 0.70761609 -0.28259671 ;
	setAttr ".uvtk[33]" -type "float2" 0.50878161 -0.28123915 ;
	setAttr ".uvtk[34]" -type "float2" 0.70469254 -0.28259671 ;
	setAttr ".uvtk[35]" -type "float2" 0.50544256 -0.28123915 ;
	setAttr ".uvtk[36]" -type "float2" 0.64314491 -0.28259671 ;
	setAttr ".uvtk[37]" -type "float2" 0.43514675 -0.28123915 ;
	setAttr ".uvtk[38]" -type "float2" 0.53212309 -0.28259671 ;
	setAttr ".uvtk[39]" -type "float2" 0.30834472 -0.28123915 ;
	setAttr ".uvtk[40]" -type "float2" 0.38813207 -0.28259671 ;
	setAttr ".uvtk[41]" -type "float2" 0.14388752 -0.28123915 ;
	setAttr ".uvtk[42]" -type "float2" 0.23257855 -0.28259671 ;
	setAttr ".uvtk[43]" -type "float2" -0.033776071 -0.28123915 ;
	setAttr ".uvtk[44]" -type "float2" 0.08858756 -0.28259671 ;
	setAttr ".uvtk[45]" -type "float2" -0.19823325 -0.28123915 ;
	setAttr ".uvtk[46]" -type "float2" -0.022434182 -0.28259671 ;
	setAttr ".uvtk[47]" -type "float2" -0.32503527 -0.28123915 ;
	setAttr ".uvtk[48]" -type "float2" -0.083981954 -0.28259671 ;
	setAttr ".uvtk[49]" -type "float2" -0.39533126 -0.28123915 ;
	setAttr ".uvtk[50]" -type "float2" -0.086905502 -0.28259671 ;
	setAttr ".uvtk[51]" -type "float2" -0.39867032 -0.28123915 ;
	setAttr ".uvtk[52]" -type "float2" -0.030770428 -0.28259671 ;
	setAttr ".uvtk[53]" -type "float2" -0.33455634 -0.28123915 ;
	setAttr ".uvtk[54]" -type "float2" 0.082208253 -0.28259671 ;
	setAttr ".uvtk[55]" -type "float2" -0.21252072 -0.28123915 ;
	setAttr ".uvtk[56]" -type "float2" -0.036450688 -0.54390132 ;
	setAttr ".uvtk[57]" -type "float2" -0.081225298 -0.54390132 ;
	setAttr ".uvtk[58]" -type "float2" -0.081225298 -0.35672808 ;
	setAttr ".uvtk[59]" -type "float2" -0.036450688 -0.35672808 ;
	setAttr ".uvtk[60]" -type "float2" -0.077753924 -0.54390132 ;
	setAttr ".uvtk[61]" -type "float2" -0.028662272 -0.54390132 ;
	setAttr ".uvtk[62]" -type "float2" -0.028662272 -0.35672805 ;
	setAttr ".uvtk[63]" -type "float2" -0.077753924 -0.35672805 ;
	setAttr ".uvtk[64]" -type "float2" 0.10315797 -0.54390132 ;
	setAttr ".uvtk[65]" -type "float2" 0.21800813 -0.54390132 ;
	setAttr ".uvtk[66]" -type "float2" 0.21800813 -0.35672805 ;
	setAttr ".uvtk[67]" -type "float2" 0.10315797 -0.35672805 ;
	setAttr ".uvtk[68]" -type "float2" 0.4027026 -0.54390132 ;
	setAttr ".uvtk[69]" -type "float2" 0.51755261 -0.54390132 ;
	setAttr ".uvtk[70]" -type "float2" 0.51755261 -0.35672805 ;
	setAttr ".uvtk[71]" -type "float2" 0.4027026 -0.35672805 ;
	setAttr ".uvtk[72]" -type "float2" 0.64937288 -0.54390132 ;
	setAttr ".uvtk[73]" -type "float2" 0.69846457 -0.54390132 ;
	setAttr ".uvtk[74]" -type "float2" 0.69846457 -0.35672805 ;
	setAttr ".uvtk[75]" -type "float2" 0.64937288 -0.35672805 ;
	setAttr ".uvtk[76]" -type "float2" 0.70193577 -0.54390132 ;
	setAttr ".uvtk[77]" -type "float2" 0.65716124 -0.54390132 ;
	setAttr ".uvtk[78]" -type "float2" 0.65716124 -0.35672808 ;
	setAttr ".uvtk[79]" -type "float2" 0.70193577 -0.35672808 ;
	setAttr ".uvtk[80]" -type "float2" -0.015667211 -0.36578482 ;
	setAttr ".uvtk[81]" -type "float2" -0.05167789 -0.36578479 ;
	setAttr ".uvtk[82]" -type "float2" -0.05167789 -0.53484452 ;
	setAttr ".uvtk[83]" -type "float2" -0.015667211 -0.53484452 ;
	setAttr ".uvtk[84]" -type "float2" -0.048167832 -0.36578479 ;
	setAttr ".uvtk[85]" -type "float2" -0.0086851232 -0.36578479 ;
	setAttr ".uvtk[86]" -type "float2" -0.0086851232 -0.53484446 ;
	setAttr ".uvtk[87]" -type "float2" -0.048167832 -0.53484446 ;
	setAttr ".uvtk[88]" -type "float2" 0.124607 -0.36578479 ;
	setAttr ".uvtk[89]" -type "float2" 0.21697697 -0.36578479 ;
	setAttr ".uvtk[90]" -type "float2" 0.21697697 -0.53484446 ;
	setAttr ".uvtk[91]" -type "float2" 0.124607 -0.53484446 ;
	setAttr ".uvtk[92]" -type "float2" 0.40373376 -0.36578479 ;
	setAttr ".uvtk[93]" -type "float2" 0.49610361 -0.36578479 ;
	setAttr ".uvtk[94]" -type "float2" 0.49610361 -0.53484446 ;
	setAttr ".uvtk[95]" -type "float2" 0.40373376 -0.53484446 ;
	setAttr ".uvtk[96]" -type "float2" 0.62939566 -0.36578479 ;
	setAttr ".uvtk[97]" -type "float2" 0.66887838 -0.36578479 ;
	setAttr ".uvtk[98]" -type "float2" 0.66887838 -0.53484446 ;
	setAttr ".uvtk[99]" -type "float2" 0.62939566 -0.53484446 ;
	setAttr ".uvtk[100]" -type "float2" 0.67238837 -0.36578479 ;
	setAttr ".uvtk[101]" -type "float2" 0.63637781 -0.36578482 ;
	setAttr ".uvtk[102]" -type "float2" 0.63637781 -0.53484452 ;
	setAttr ".uvtk[103]" -type "float2" 0.67238837 -0.53484452 ;
	setAttr ".uvtk[144]" -type "float2" 0.53850234 -0.28259671 ;
	setAttr ".uvtk[145]" -type "float2" 0.28880954 -0.62491852 ;
	setAttr ".uvtk[146]" -type "float2" -0.17869818 -0.28123915 ;
	setAttr ".uvtk[147]" -type "float2" 0.082208253 -0.61803263 ;
	setAttr ".uvtk[148]" -type "float2" -0.29445332 -0.28123915 ;
	setAttr ".uvtk[149]" -type "float2" -0.35196793 -0.28123915 ;
	setAttr ".uvtk[150]" -type "float2" -0.34897256 -0.28123915 ;
	setAttr ".uvtk[151]" -type "float2" -0.28591222 -0.28123915 ;
	setAttr ".uvtk[152]" -type "float2" -0.17216206 -0.28123915 ;
	setAttr ".uvtk[153]" -type "float2" -0.02463248 -0.28123915 ;
	setAttr ".uvtk[154]" -type "float2" 0.1347439 -0.28123915 ;
	setAttr ".uvtk[155]" -type "float2" 0.28227353 -0.28123915 ;
	setAttr ".uvtk[156]" -type "float2" 0.39602369 -0.28123915 ;
	setAttr ".uvtk[157]" -type "float2" 0.45908391 -0.28123915 ;
	setAttr ".uvtk[158]" -type "float2" 0.46207929 -0.28123915 ;
	setAttr ".uvtk[159]" -type "float2" 0.40456456 -0.28123915 ;
	setAttr ".uvtk[160]" -type "float2" -0.29445332 -0.62491852 ;
	setAttr ".uvtk[161]" -type "float2" -0.35196793 -0.62491852 ;
	setAttr ".uvtk[162]" -type "float2" -0.34897256 -0.62491852 ;
	setAttr ".uvtk[163]" -type "float2" -0.28591222 -0.62491852 ;
	setAttr ".uvtk[164]" -type "float2" -0.17216206 -0.62491852 ;
	setAttr ".uvtk[165]" -type "float2" -0.02463248 -0.62491852 ;
	setAttr ".uvtk[166]" -type "float2" 0.1347439 -0.62491852 ;
	setAttr ".uvtk[167]" -type "float2" 0.28227353 -0.62491852 ;
	setAttr ".uvtk[168]" -type "float2" 0.39602369 -0.62491852 ;
	setAttr ".uvtk[169]" -type "float2" 0.45908391 -0.62491852 ;
	setAttr ".uvtk[170]" -type "float2" 0.46207929 -0.62491852 ;
	setAttr ".uvtk[171]" -type "float2" 0.40456456 -0.62491852 ;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "B8E14DFB-4298-B1BD-4DC1-24AD922967D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[108]" "e[111]" "e[113]" "e[115:116]" "e[119]" "e[121]" "e[123:124]" "e[127]" "e[129]" "e[131:132]" "e[135]" "e[137]" "e[139:140]" "e[143]" "e[145]" "e[147:148]" "e[151]" "e[153]" "e[155]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "53C45FA3-48A9-68F4-CE64-AC9F9F2892A5";
	setAttr ".uopa" yes;
	setAttr -s 196 ".uvtk[0:195]" -type "float2" 0.1199367 0 0 0.099857241
		 0 0.099857241 0.11993667 0 0.11993667 0 0 0.099857241 0.11993667 0 0 0.099857241
		 0.1199367 0 0 0.099857241 0.11993667 0 0 0.099857241 0.11993676 0 0 0.099857241 0.11993676
		 0 0 0.099857241 0.11993676 0 0 0.099857241 0.1199367 0 0 0.099857241 0.11993676 0
		 0 0.099857241 0.11993676 0 0 0.099857241 0.11993676 0 0 0.099857241 0.11993676 0
		 0.11993676 0 0.11993667 0 0 0.099857241 0.1199367 0 0.11993667 0 0 0.099857241 0.11993667
		 0 0 0.099857241 0.11993667 0 0 0.099857241 0.1199367 0 0 0.099857241 0.11993667 0
		 0 0.099857241 0.11993676 0 0 0.099857241 0.11993676 0 0 0.099857241 0.11993676 0
		 0 0.099857241 0.1199367 0 0 0.099857241 0.11993676 0 0 0.099857241 0.11993676 0 0
		 0.099857241 0.11993676 0 0 0.099857241 0.11993676 0 -0.37475839 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475839 0.10220684 -0.37475833 0.10220684 -0.37475839
		 0.10220684 -0.37475839 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475839
		 0.10220684 -0.37475839 0.10220684 -0.37475833 0.10220684 -0.37475839 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475839 0.10220684 -0.37475839 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475839 0.10220684 -0.37475833 0.10220684 -0.37475839
		 0.10220684 -0.37475839 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 -0.37475839 0.10220684 -0.37475839
		 0.10220684 -0.37475839 0.10220684 -0.37475839 0.10220684 -0.37475833 0.10220684 -0.37475833
		 0.10220684 -0.37475833 0.10220684 -0.37475833 0.10220684 0.0003914088 0 0.00039146841
		 0 0.00039146841 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.0003914088
		 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.00039146841 0 0.00039146841
		 0 0.0003914088 0 0.0003914088 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177
		 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177
		 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177 0 -0.24318177
		 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.0003914088 0 0.0003914088
		 0 0.0003914088 0 0.0003914088 0 0 0.099857241 0.11993667 0 0.11993676 0 0 0.099857241
		 0.1199367 0 0.11993676 0 0.11993676 0 0.11993667 0 0.11993667 0 0.11993676 0 0.11993676
		 0 0.11993667 0 0.1199367 0 0.11993667 0 0.11993667 0 0.1199367 0 0.1199367 0 0.11993676
		 0 0.11993676 0 0.11993667 0 0.11993667 0 0.11993676 0 0.11993676 0 0.11993667 0 0.1199367
		 0 0.11993667 0 0.11993667 0 0.1199367 0 0 0.099857248 0 0.099857241 0 0.099857248
		 0 0.099857241 0 0.099857248 0 0.099857241 0 0.099857248 0 0.099857241 0 0.099857248
		 0 0.099857241 0 0.099857248 0 0.099857241 0 0.099857248 0 0.099857241 0 0.099857248
		 0 0.099857241 0 0.099857248 0 0.099857241 0 0.099857248 0 0.099857241 0 0.099857248
		 0 0.099857241 0 0.099857248 0 0.099857241;
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
connectAttr "polyTweakUV4.out" "No_WindowShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "No_WindowShape.uvst[0].uvtw";
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
connectAttr "No_WindowShape.iog" "lambert2SG.dsm" -na;
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
connectAttr "No_WindowShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV4.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of No_Window.ma
