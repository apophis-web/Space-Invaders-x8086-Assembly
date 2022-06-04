.model small
.stack 100h
.data
	menu 	db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	", 13, 10
			db "	ENTER YOUR CHOICE:", 13, 10
			db "	", 13, 10
			db "	1. New Game", 13, 10
			db "	2. High Score", 13, 10
			db "	3. Exit", 13, 10,'$'


    congratulations 	db "	", 13, 10
                        db "	", 13, 10
                        db "	", 13, 10
                        db "	", 13, 10
                        db "	", 13, 10
                        db "	", 13, 10
                        db "	", 13, 10
                        db "	CONGRATULATIONS!", 13, 10
                        db "	YOU WON!!!", 13, 10,'$'	

	name_menu_condition dw 1 

	rand_num db ?
	rand_counter db 0
	LevelThreeShuttleBullet_x dw ?
	LevelThreeShuttleBullet_y dw ?
	LevelThreeShuttleBullet_status dw ?
	LevelThreeShuttleBullet_const_x dw 0
	MainBossDamageCounter dw 0

	name_menu	db "	", 13, 10
				db "	", 13, 10
				db "	", 13, 10
				db "	", 13, 10
				db "	", 13, 10
				db "	", 13, 10
				db "	", 13, 10
				db "	", 13, 10
				db "	    ENTER YOUR NAME", 13, 10
				db "	", 13, 10,'$'

	score db "SCORE: $"
	level_one_header db "LEVEL ONE $"

	LEVEL_ONE_COMPLETE	db "	", 13, 10
						db "	", 13, 10
						db "	", 13, 10
						db "	CONGRATULATIONS!", 13, 10
						db "	LEVEL ONE COMPLETE", 13, 10
						db "	", 13, 10,'$'

	score_value dw 0
	score_value2 dw 0
	
	level_1 dw 1
	level_2 dw 1
	level_3 dw 1

	logo_y dw 20
	logo_x dw 20
	logo_status dw 1

	row_no dw ?
	col_no dw ?
	addx dw 150

	logo	db 252, 240, 250, 241, 249, 242, 248, 243, 243, 241, 241, 245, 243, 248, 242, 249, 241, 250, 240, 250, 240, 250, 241, 249, 241, 248, 242, 247, 243, 242, 242, 241, 246, 243, 248, 241, 249, 240, 250, 238
			db 241, 248, 242, 248, 243, 247, 243, 249, 251, 251, 252, 245, 246, 244, 247, 243, 248, 242, 248, 242, 248, 242, 248, 243, 247, 243, 247, 243, 250, 251, 251, 252, 244, 247, 243, 247, 243, 248, 242, 249
			db 246, 245, 246, 245, 245, 244, 249, 229, 153, 154, 147, 216, 250, 244, 245, 245, 245, 246, 245, 246, 245, 246, 245, 246, 245, 245, 244, 252, 210, 148, 154, 153, 233, 248, 244, 245, 246, 245, 246, 244
			db 248, 243, 247, 243, 247, 243, 252, 216,  77,  77,  76, 188, 252, 244, 244, 247, 243, 247, 243, 247, 243, 247, 243, 247, 243, 247, 241, 252, 183,  76,  77,  75, 221, 250, 246, 243, 247, 243, 247, 242
			db 240, 248, 240, 248, 241, 247, 248, 224,  79,  81,  76, 182, 253, 239, 247, 242, 249, 241, 249, 241, 249, 241, 249, 242, 248, 241, 243, 251, 192,  76,  81,  81, 216, 253, 241, 248, 241, 248, 240, 250
			db 252, 245, 251, 246, 249, 241, 253, 214,  77,  77,  76, 192, 251, 247, 244, 249, 241, 249, 241, 250, 241, 250, 241, 249, 241, 250, 244, 253, 185,  76,  77,  75, 223, 248, 247, 244, 251, 245, 251, 239
			db 238, 229, 223, 226, 236, 248, 248, 225,  94,  96,  87, 178, 235, 221, 232, 243, 248, 242, 249, 242, 249, 242, 248, 242, 249, 228, 224, 233, 181,  86,  95,  96, 219, 252, 243, 238, 222, 227, 224, 248
			db 229,  90,  80,  75, 176, 252, 243, 244, 240, 237, 250, 132,  76,  75, 114, 250, 243, 246, 244, 246, 244, 246, 244, 245, 247, 115,  75,  75, 137, 249, 238, 239, 244, 242, 252, 177,  75,  81,  89, 225
			db 229,  85,  76,  76, 174, 252, 243, 245, 247, 244, 252, 133,  76,  76, 111, 250, 243, 246, 244, 246, 244, 246, 244, 245, 248, 112,  76,  76, 135, 252, 245, 246, 246, 241, 252, 174,  76,  76,  84, 225
			db 221,  85,  76,  76, 175, 253, 241, 246, 241, 240, 252, 136,  76,  76, 112, 243, 245, 239, 246, 239, 246, 239, 245, 238, 250, 109,  76,  76, 130, 252, 239, 242, 243, 244, 251, 174,  76,  76,  86, 233
			db 234,  85,  76,  76, 174, 251, 245, 242, 252, 248, 252, 134,  76,  76, 111, 253, 249, 253, 250, 253, 250, 253, 250, 252, 250, 113,  76,  76, 137, 251, 249, 250, 250, 239, 253, 174,  76,  76,  84, 219
			db 220,  86,  77,  76, 175, 253, 244, 233, 142, 142, 147, 100,  76,  76,  91, 144, 143, 142, 144, 142, 144, 143, 144, 142, 145,  90,  76,  76,  99, 147, 141, 144, 226, 249, 251, 174,  76,  76,  86, 234
			db 231,  85,  76,  76, 174, 252, 250, 216,  77,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76, 221, 248, 252, 174,  76,  76,  84, 223
			db 228,  85,  76,  76, 173, 252, 247, 218,  79,  78,  78,  78,  76,  76,  78,  78,  78,  78,  78,  78,  78,  78,  78,  78,  78,  78,  76,  76,  78,  78,  78,  78, 219, 246, 252, 173,  76,  76,  85, 226
			db 222,  84,  76,  76, 177, 252, 251, 225,  75,  76,  76,  76,  76,  76,  77,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  77,  76,  76,  76,  76,  76,  77, 221, 253, 251, 177,  76,  76,  85, 232
			db 234,  86,  76,  76, 158, 224, 223, 192,  78,  76,  76,  93, 104, 103,  97,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  97, 103, 104,  94,  76,  76,  75, 200, 218, 229, 159,  76,  76,  85, 220
			db 220,  85,  76,  76,  77,  76,  76,  76,  76,  78,  76, 181, 253, 248, 209,  76,  76,  76,  76,  76,  76,  76,  76,  77,  75, 209, 252, 251, 192,  76,  78,  76,  76,  76,  76,  77,  76,  76,  86, 234
			db 232,  85,  76,  76,  76,  76,  76,  76,  76,  78,  76, 190, 251, 252, 209,  75,  77,  76,  76,  76,  76,  76,  76,  76,  76, 209, 250, 252, 183,  76,  78,  76,  76,  76,  76,  76,  76,  76,  84, 222
			db 226,  85,  76,  76,  76,  76,  76,  76,  76,  78,  76, 185, 252, 248, 206,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76, 207, 248, 251, 186,  76,  78,  76,  76,  76,  76,  76,  76,  76,  85, 228
			db 223,  85,  76,  76,  76,  76,  76,  76,  76,  78,  76, 191, 252, 252, 214,  76,  77,  76,  76,  76,  76,  76,  76,  77,  75, 214, 252, 251, 192,  76,  78,  76,  76,  76,  76,  76,  76,  76,  85, 231
			db 234,  87,  76,  78,  77,  77,  76,  77,  77,  78,  75, 116, 135, 136, 121,  75,  77,  77,  77,  77,  77,  77,  77,  77,  76, 121, 134, 137, 111,  76,  77,  77,  77,  76,  77,  77,  78,  76,  86, 220
			db 219,  84,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  85, 234
			db 233,  87,  76,  78,  77,  76,  76,  76,  76,  76,  76,  77,  78,  78,  78,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  78,  78,  78,  77,  76,  76,  76,  76,  76,  76,  77,  78,  76,  87, 221
			db 224,  85,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  77,  76,  76,  85, 229
			db 228, 117, 108, 112,  92,  76,  76,  76,  76,  76,  76,  76,  76,  76,  77,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  77,  76,  76,  76,  76,  76,  76,  76,  76,  76,  90, 114, 106, 119, 233
			db 251, 246, 248, 251, 149,  76,  78,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  78,  76, 144, 252, 243, 251, 241
			db 239, 249, 237, 253, 141,  76,  78,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  78,  76, 149, 251, 246, 240, 251
			db 250, 241, 246, 251, 149,  76,  80,  78,  76,  76,  76,  77,  77,  77,  78,  78,  77,  77,  78,  77,  77,  78,  77,  77,  78,  78,  77,  77,  76,  76,  76,  76,  78,  80,  76, 143, 253, 238, 249, 240
			db 242, 247, 240, 253, 143,  76,  78,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  75,  76,  76,  76,  76,  76,  76,  76,  76,  76,  76,  75,  78,  76, 146, 251, 244, 243, 248
			db 245, 246, 244, 250, 216, 192, 202, 177,  78,  78,  76, 157, 204, 196, 196, 198, 195, 198, 195, 198, 195, 198, 195, 198, 196, 198, 194, 205, 153,  76,  78,  77, 180, 201, 193, 217, 248, 245, 245, 246
			db 249, 242, 248, 242, 251, 249, 252, 224,  76,  77,  76, 192, 251, 250, 251, 252, 251, 252, 250, 252, 250, 252, 251, 252, 251, 252, 249, 252, 190,  76,  77,  76, 226, 251, 251, 247, 247, 242, 248, 241
			db 239, 250, 241, 249, 239, 242, 244, 220,  77,  79,  76, 180, 253, 238, 246, 240, 247, 239, 247, 239, 247, 239, 247, 239, 246, 240, 243, 251, 191,  76,  79,  79, 212, 249, 236, 246, 242, 249, 241, 251
			db 251, 241, 249, 240, 252, 248, 253, 221,  77,  77,  76, 191, 251, 245, 242, 248, 241, 249, 241, 249, 241, 249, 241, 249, 242, 248, 240, 253, 180,  76,  77,  75, 225, 251, 251, 245, 249, 241, 250, 239
			db 241, 248, 241, 251, 216, 197, 203, 188, 120, 121, 113, 200, 252, 242, 247, 243, 248, 242, 248, 242, 248, 242, 248, 243, 247, 243, 245, 251, 203, 112, 121, 120, 188, 204, 196, 221, 246, 247, 242, 249
			db 246, 245, 243, 252, 145,  76,  76, 102, 250, 252, 251, 248, 244, 245, 245, 245, 245, 246, 245, 246, 245, 246, 245, 245, 245, 245, 245, 245, 247, 251, 252, 250, 101,  76,  76, 144, 252, 242, 246, 245
			db 248, 243, 244, 251, 148,  76,  76, 103, 243, 244, 243, 245, 244, 246, 244, 247, 243, 247, 243, 247, 243, 247, 243, 247, 243, 247, 244, 246, 244, 244, 244, 243, 101,  76,  76, 145, 253, 240, 247, 242
			db 240, 249, 238, 253, 143,  76,  76, 100, 244, 246, 245, 244, 247, 243, 248, 242, 249, 241, 249, 241, 249, 241, 249, 242, 248, 242, 247, 244, 246, 244, 246, 243, 104,  76,  76, 149, 251, 246, 241, 251
			db 251, 240, 247, 251, 149,  75,  75, 103, 243, 246, 244, 246, 243, 247, 242, 249, 241, 249, 241, 250, 241, 250, 241, 249, 242, 248, 243, 247, 244, 245, 246, 244,  97,  76,  76, 141, 253, 238, 250, 239
			db 241, 248, 241, 251, 220, 206, 203, 213, 244, 246, 245, 244, 246, 243, 247, 243, 248, 242, 248, 242, 248, 242, 248, 242, 248, 243, 247, 244, 246, 245, 245, 246, 210, 207, 201, 225, 245, 247, 242, 249
			db 246, 245, 246, 244, 250, 252, 252, 251, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 246, 245, 246, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 251, 252, 252, 249, 245, 245, 246, 245


	enemy_new   db 247, 246, 246, 246, 246, 246, 246, 246, 246, 246, 246, 246, 246, 246, 246, 247
				db 246, 246, 247, 249, 248, 244, 246, 246, 246, 246, 244, 248, 250, 247, 246, 246
				db 245, 250, 235, 128, 181, 254, 244, 245, 245, 244, 254, 180, 128, 235, 250, 245
				db 245, 250, 233, 125, 138, 201, 245, 250, 250, 245, 201, 139, 127, 234, 249, 245
				db 246, 245, 244, 244, 140,  84, 225, 236, 236, 225,  83, 140, 246, 244, 245, 246
				db 244, 252, 235, 121,  81,  75, 100, 103, 103, 100,  75,  81, 123, 237, 252, 244
				db 254, 221, 148,  80, 117, 148,  77,  76,  76,  77, 149, 116,  81, 150, 221, 254
				db 233, 156,  73,  76, 165, 215,  83,  79,  78,  85, 218, 163,  76,  73, 158, 234
				db 109,  75,  74,  77,  85,  90,  80,  80,  80,  80,  91,  85,  77,  74,  75, 110
				db  96, 104, 159,  86,  76,  77,  76,  76,  76,  76,  77,  76,  87, 162, 103,  95
				db  92, 131, 234,  95,  88, 117, 113, 112, 112, 113, 117,  88,  96, 236, 131,  91
				db  90, 126, 232,  85, 145, 247, 237, 241, 241, 236, 246, 145,  86, 233, 126,  88
				db 203, 213, 242, 205, 139,  99,  98, 204, 204,  98,  96, 135, 205, 243, 211, 200
				db 253, 251, 246, 254, 185, 122, 125, 211, 210, 126, 124, 188, 254, 246, 251, 253
				db 245, 245, 246, 244, 249, 251, 251, 248, 248, 251, 251, 249, 245, 246, 245, 245
				db 247, 246, 246, 246, 246, 246, 245, 246, 246, 246, 246, 246, 246, 246, 246, 247
	
	bullet  db 4, 4
			db 4, 4
			db 4, 4
			db 4, 4

	bullet2  db 7, 7, 7, 7
			 db 7, 5, 5, 7
			 db 7, 5, 5, 7
			 db 7, 7, 7, 7

	bullet2_status dw 1
	bullet2_x dw ?
	bullet2_y dw ?

	shuttle db 248, 245, 245, 246, 245, 245, 246, 245, 245, 246, 245, 245, 246, 245, 244, 243, 241, 244, 246, 245, 246, 247, 245, 246, 246, 245, 246, 246, 245, 246, 246, 243
			db 245, 246, 246, 245, 246, 246, 244, 246, 246, 243, 243, 246, 245, 245, 248, 255, 255, 252, 244, 246, 246, 243, 244, 246, 245, 246, 245, 246, 247, 245, 245, 247
			db 245, 246, 246, 245, 246, 246, 245, 246, 245, 252, 251, 245, 244, 250, 211, 169, 170, 208, 250, 245, 245, 255, 251, 245, 246, 246, 245, 246, 246, 245, 245, 247
			db 248, 245, 245, 247, 245, 245, 246, 243, 255, 168, 140, 255, 241, 255, 124,  17,  18, 118, 255, 239, 255, 138, 166, 255, 243, 245, 246, 246, 245, 246, 246, 244
			db 243, 246, 245, 245, 246, 247, 244, 248, 238, 125, 120, 218, 255, 223,  44, 103, 103,  46, 224, 255, 213, 115, 129, 235, 248, 246, 245, 245, 246, 245, 245, 248
			db 248, 245, 245, 246, 245, 245, 245, 248, 236, 101, 126, 208, 255, 110,  47, 193, 193,  48, 109, 255, 209,  96, 137, 233, 249, 245, 246, 246, 245, 246, 246, 244
			db 247, 245, 245, 246, 246, 245, 246, 245, 247,  92,  65, 239, 208,  23, 146, 209, 209, 146,  23, 206, 242,  63,  99, 248, 246, 246, 246, 246, 245, 246, 246, 245
			db 244, 246, 246, 245, 246, 246, 246, 241, 255, 127,  76, 255,  79,  72, 203,  97,  97, 203,  73,  77, 255,  82, 122, 255, 242, 246, 245, 245, 246, 245, 245, 248
			db 249, 245, 244, 246, 245, 245, 246, 242, 255, 130,  97, 255,  65, 153, 171,  80,  53, 170, 152,  72, 255,  87, 132, 255, 243, 245, 246, 246, 245, 246, 246, 243
			db 244, 246, 246, 245, 245, 245, 245, 242, 255, 130,  87, 254,  75, 155, 165, 114,  79, 163, 156,  71, 255,  92, 129, 255, 242, 246, 245, 246, 246, 245, 245, 247
			db 245, 246, 246, 245, 247, 246, 245, 243, 255, 130,  88, 255,  73, 146, 204, 102,  99, 204, 146,  70, 255,  92, 130, 255, 242, 246, 245, 246, 246, 245, 245, 247
			db 248, 245, 245, 246, 245, 245, 246, 242, 255, 129,  94, 255,  69, 148, 206, 100, 102, 207, 145,  75, 255,  86, 130, 255, 243, 245, 246, 246, 245, 246, 246, 243
			db 243, 246, 246, 245, 246, 246, 245, 243, 255, 130,  85, 255,  73, 153, 170,  80,  52, 168, 155,  66, 255,  95, 130, 255, 242, 246, 245, 245, 246, 245, 246, 248
			db 247, 245, 245, 246, 246, 245, 246, 242, 255, 130,  91, 255,  72, 154, 166, 116,  81, 165, 154,  73, 255,  87, 130, 255, 242, 245, 246, 246, 244, 246, 246, 244
			db 246, 245, 246, 246, 245, 245, 246, 242, 255, 129,  94, 249,  53, 150, 203,  93,  90, 203, 150,  57, 249,  91, 129, 255, 242, 245, 246, 246, 245, 246, 246, 245
			db 243, 246, 246, 245, 246, 246, 245, 243, 255, 127, 106, 142,  10, 160, 200, 197, 197, 201, 160,   9, 146, 110, 126, 255, 242, 246, 245, 245, 246, 245, 245, 249
			db 248, 246, 245, 246, 245, 245, 246, 242, 255, 137,  57,  54,  39, 104, 195, 193, 193, 195, 104,  40,  52,  54, 137, 255, 243, 246, 246, 246, 245, 246, 246, 243
			db 244, 246, 246, 245, 246, 246, 245, 242, 255, 144,   6,  71,  57,  64, 147, 193, 193, 147,  64,  58,  71,   7, 144, 255, 242, 246, 245, 246, 245, 245, 245, 247
			db 245, 246, 246, 245, 245, 246, 244, 241, 255, 145,  38,  96,  50,  73,  75,  82,  82,  75,  73,  49,  96,  39, 143, 255, 242, 246, 245, 246, 246, 245, 245, 246
			db 248, 245, 245, 246, 245, 245, 246, 245, 251,  79,  48,  93,  50,  73,  72,  76,  76,  72,  73,  51,  93,  47,  81, 248, 246, 245, 246, 246, 245, 246, 246, 243
			db 244, 246, 246, 245, 246, 245, 241, 255, 155,  43, 104,  93,  51,  68, 147, 190, 190, 147,  68,  51,  92, 104,  42, 156, 255, 244, 245, 245, 246, 245, 245, 248
			db 247, 245, 245, 246, 245, 245, 247, 241,  52,  24,  40,  41,  46,  77, 149, 193, 193, 149,  76,  47,  42,  39,  25,  52, 243, 246, 245, 246, 245, 246, 246, 244
			db 246, 245, 245, 246, 246, 245, 246, 242, 225,  35,   0, 201,  62,  39,  81,  87,  87,  81,  39,  63, 203,   0,  36, 224, 242, 246, 245, 246, 245, 246, 245, 245
			db 243, 246, 246, 245, 246, 246, 244, 244, 255,  92,  45, 255, 183,  63,  22,  25,  24,  22,  62, 184, 253,  50,  90, 255, 243, 247, 245, 245, 246, 245, 245, 248
			db 248, 246, 245, 246, 246, 245, 246, 242, 253, 148, 118, 252, 250, 231,  28,   0,   0,  24, 231, 255, 254, 112, 153, 254, 243, 245, 246, 246, 245, 246, 246, 243
			db 244, 246, 247, 245, 246, 246, 245, 244, 253, 194, 175, 252, 240, 252, 148,   4,   3, 148, 252, 240, 252, 176, 196, 252, 244, 246, 245, 245, 246, 245, 245, 247
			db 245, 246, 246, 245, 246, 246, 245, 246, 246, 245, 243, 247, 244, 253, 216,  95,  94, 217, 252, 244, 247, 244, 245, 246, 245, 246, 245, 246, 246, 245, 245, 247
			db 248, 245, 245, 246, 245, 245, 246, 245, 245, 246, 245, 245, 245, 252, 209, 115, 117, 206, 253, 244, 246, 245, 244, 246, 247, 245, 246, 247, 245, 246, 246, 243
			db 243, 246, 246, 245, 247, 246, 245, 246, 246, 245, 246, 246, 245, 245, 252, 118, 111, 252, 244, 246, 246, 245, 246, 245, 246, 246, 245, 245, 246, 245, 245, 248
			db 247, 245, 245, 246, 246, 245, 246, 245, 245, 246, 245, 245, 246, 245, 252, 221, 222, 252, 245, 245, 246, 246, 245, 246, 246, 244, 246, 246, 245, 246, 247, 244
			db 246, 245, 245, 246, 246, 245, 246, 244, 246, 246, 244, 246, 246, 246, 244, 248, 248, 244, 246, 245, 246, 245, 245, 246, 245, 245, 246, 245, 245, 246, 246, 245
			db 243, 246, 246, 245, 246, 246, 244, 246, 246, 245, 246, 246, 245, 246, 246, 244, 245, 246, 245, 246, 246, 245, 246, 245, 245, 246, 246, 245, 246, 245, 245, 249
	;-------------------------------------------------------------------------------------------------------------------------------------------


	;----------- FILE HANDLING ------------------
    fhandle dw ?
    fname db "scores.txt", 0
    username db "HASSAN"
    buffer db 500 DUP('$')
	_cursor byte 6 
	
	;----------- Enemies position ------------------
	;ENEMIES PRINTING BOTTOM UP FROM THE LEFT SIDE TO THE RIGHT
	level_two_1 dw 50
	level_two_2	dw 100
	level_two_3 dw 150
	level_two_4 dw 200
	level_two_5 dw 250
	level_two_row1 dw 0

	level_two_6 dw 70
	level_two_7 dw 120
	level_two_8 dw 170
	level_two_9 dw 220
	level_two_10 dw 270
	level_two_row2 dw 0

	level_two_11 dw 50
	level_two_12 dw 100
	level_two_13 dw 150
	level_two_14 dw 200
	level_two_15 dw 250
	level_two_row3 dw 0

	level_two_16 dw 70
	level_two_17 dw 120
	level_two_18 dw 170
	level_two_19 dw 220
	level_two_20 dw 270
	level_two_row4 dw 0

	enemy1_x dw ?
	enemy1_y dw 80
	enemy1_status dw 1

	enemy2_x dw ?
	enemy2_y dw 80
	enemy2_status dw 1

	enemy3_x dw ?
	enemy3_y dw 80
	enemy3_status dw 1

	enemy4_x dw ?
	enemy4_y dw 80
	enemy4_status dw 1

	enemy5_x dw ?
	enemy5_y dw 80
	enemy5_status dw 1

	enemy6_x dw ?
	enemy6_y dw 60
	enemy6_status dw 1

	enemy7_x dw ?
	enemy7_y dw 60
	enemy7_status dw 1

	enemy8_x dw ?
	enemy8_y dw 60
	enemy8_status dw 1

	enemy9_x dw ?
	enemy9_y dw 60
	enemy9_status dw 1

	enemy10_x dw ?
	enemy10_y dw 60
	enemy10_status dw 1

	enemy11_x dw ?
	enemy11_y dw 40
	enemy11_status dw 1

	enemy12_x dw ?
	enemy12_y dw 40
	enemy12_status dw 1

	enemy13_x dw ?
	enemy13_y dw 40
	enemy13_status dw 1

	enemy14_x dw ?
	enemy14_y dw 40
	enemy14_status dw 1

	enemy15_x dw ?
	enemy15_y dw 40
	enemy15_status dw 1

	enemy16_x dw ?
	enemy16_y dw 20
	enemy16_status dw 1

	enemy17_x dw ?
	enemy17_y dw 20
	enemy17_status dw 1

	enemy18_x dw ?
	enemy18_y dw 20
	enemy18_status dw 1

	enemy19_x dw ?
	enemy19_y dw 20
	enemy19_status dw 1

	enemy20_x dw ?
	enemy20_y dw 20
	enemy20_status dw 1

	enemy_y_controller dw 1
	enemy_y_controller_gaps dw 5

	enemy_slow dw 0

	;----------- Shuttle position ------------------
	shuttle_x dw ?
	shuttle_y dw ?
	shuttle_status dw 1

	;----------- Bullet position ------------------
	bullet_x dw ?
	bullet_y dw ?
	remainder1 dw ?
	bullet_y_controller dw ?
	bullet_status dw 1


.code
	mdrawpixel MACRO row, col, color, status
		mov AH, 0Ch
		
		cmp color, 230
		ja black

		mov AL, 0

		.IF status > 0
			mov AL, color
		.ENDIF

		mov CX, col
		mov DX, row
		int 10H

		black:
			mov al, 00
	endm

	drawObject MACRO ycoord, xcoord, leny, lenx, array, status
		push ax
		mov ax,ycoord 
		mov row_no,ax
		pop ax
		mov cx, leny
		mov si, 0
		loop1:
			push cx
			mov cx, lenx
			push ax
			mov ax, xcoord
			mov col_no, ax
			pop ax
			mov bx, 0
					loop2:
						push cx
						cmp array[si+ bx], 0
						je skip
						mdrawpixel row_no, col_no, array[si+ bx], status
						skip:
						inc col_no
						inc bx
						pop cx
					loop loop2
			add si, lenx
			inc row_no
			pop cx
		loop loop1
	endm

main proc
	mov ax, @data
	mov ds, ax

	mov ah, 0h ; Seting Video mode 
	mov al, 13h ; 640 x 480- x 16 VGA
	int 10h

	.IF name_menu_condition == 1
		call displayusername_menu
	.ENDIF
	mov name_menu_condition, 0
	
	call display_menu
	call DrawLogo
	call DrawLogo
	call DrawLogo
	call DrawLogo
	mov  ah, 7
	int  21h

	sub al, 48

	cmp al, 1		;ENTERING THE GAME
	je Game

	cmp al, 3		;EXITING THE GAME
	je main_exit

	main_exit:
		mov ah, 4ch
		int 21h

	Game:
		call ClearScreen
		; Background color
		mov ah, 06h
		mov al, 7
		mov bh, 00
		mov bl, 00
		mov cx, 0
		mov dh, 50
		mov dl, 50
		int 10h
		
		loop_1:
			; ----------------MAKING ENEMIES----------------
			call DrawLevelOne
			;-----------------------------------------------


			; ----------------MAKING SHUTTLE----------------
			mov shuttle_y, 160
			push addx
			pop shuttle_x
			call DrawShuttle
			;-----------------------------------------------		
			mov ah, 01h
			int 16h

			mov ah, 00h
			int 16h

			mov dl, al

			.IF shuttle_x < 280
				cmp dl, 100	; D key
				je move_right
			.ENDIF

			.IF shuttle_x > 10
				cmp dl, 97	; A key
				je move_left
			.ENDIF

			cmp dl, 102		; F key
			je fire_bullet

			cmp dl, 27		; escape key
			je exit

			after: 
				mov ax, 0
		jmp loop_1


	fire_bullet:
		mov bullet_status, 1

		mov bx, 0
		mov bx, shuttle_x
		add bx, 15
		mov bullet_x, bx
		
		mov bullet_y_controller, 155 
		fire:
			mov bx, bullet_y_controller
			mov bullet_y, bx
			call DrawBullet
			sub bullet_y_controller, 5
			
			call megadelay
	

			cmp bullet_y_controller, 35
			je after
		jmp fire



	
	move_right:
		add addx, 5
		call ClearScreen
		jmp after

	move_left:
		sub addx, 5
		call ClearScreen
		jmp after

	
	exit:
		call ClearScreen
		mov ah, 4ch
		int 21h

main endp

displayusername_menu proc
	mov  dx, offset name_menu
	mov  ah, 9
	int  21h

	;TAKING INPUT FROM USER
	mov _cursor, 16
    mov ah, 02h  ;set cursor
    mov dh, 12
    mov dl, _cursor
    int 10h
    mov cx, 8
    mov si, offset username
    LoopName:
        push cx

        mov ah, 01h
        int 21h
        mov [si], al
        add si, TYPE username
        inc _cursor
        mov ah, 02h
        mov dh, 12
        mov dl, _cursor
        int 10h

        pop cx
    LOOP LoopName
	
	;FILE HANDLING
	MOV AH, 3CH        	 			;3ch: file creation, 3eh: file closes
	MOV CL, 2        				;to write/read

	MOV DX, OFFSET fname
	INT 21H
	MOV FHANDLE, AX


    ;LOAD FILE HANDLE
	lea dx, fname        			; Load address of String “file”
	mov al, 2                   	; Open file (write/read)
	mov ah, 3Dh                 	; Load File Handler and store in ax
	int 21h
	mov fhandle, ax


    ;WRITE IN FILE
	mov cx, LENGTHOF username       ; Number of bytes to write
	mov bx, fhandle              	; Move file Handle to bx
	lea dx, username                ; Load offset of string which is to be written to file
	mov ah, 40h                		; Write to file
	int 21h

    ;CLOSE FILE HANDLE
	mov ah, 3Eh
	mov bx, fhandle
	int 21h
  
	call ClearScreen
	ret
displayusername_menu endp

megadelay proc
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	call Delay
	ret
megadelay endp

display_menu proc
	mov  dx, offset menu
	mov  ah, 9
	int  21h
	ret
display_menu endp

display_level1_victory proc
	mov  dx, offset LEVEL_ONE_COMPLETE
	mov  ah, 9
	int  21h
	ret
display_level1_victory endp

display_congrats proc
    mov  dx, offset congratulations
	mov  ah, 9
	int  21h
	ret
display_congrats endp

display_score proc
	mov ah, 02h  ;set cursor
    mov _cursor, 0
    mov dh, 0
    mov dl, _cursor
    int 10h
    mov cx,7
    mov si, offset score

    Loopscore:
        push cx
        mov al, [si]
        mov bh, 0
        mov bl, 15
        mov cx, 1
        mov ah, 0Ah
        int 10h
        add si, TYPE score
        add _cursor, 1
        mov ah, 02h
        mov dh, 0
        mov dl,_cursor
        int 10h

        pop cx
    LOOP Loopscore

	mov cx,7
    mov si, offset level_one_header

	mov dx, score_value2
	add dx, '0'
	mov ah, 02h 
	int 21h

	mov dx, score_value
	add dx, '0'
	mov ah, 02h 
	int 21h

	ret
display_score endp

DrawLevelOne proc
	call display_score

	mov enemy1_x, 50
	call DrawEnemy1

	mov enemy2_x, 100
	call DrawEnemy2

	mov enemy3_x, 150
	call DrawEnemy3

	mov enemy4_x, 200
	call DrawEnemy4

	mov enemy5_x, 250
	call DrawEnemy5

	mov enemy6_x, 70
	call DrawEnemy6

	mov enemy7_x, 120
	call DrawEnemy7

	mov enemy8_x, 180
	call DrawEnemy8

	mov enemy9_x, 220
	call DrawEnemy9

	mov enemy10_x, 270
	call DrawEnemy10
	
	mov enemy11_x, 50
	call DrawEnemy11

	mov enemy12_x, 100
	call DrawEnemy12

	mov enemy13_x, 150
	call DrawEnemy13

	mov enemy14_x, 200
	call DrawEnemy14

	mov enemy15_x, 250
	call DrawEnemy15

	mov enemy16_x, 70
	call DrawEnemy16

	mov enemy17_x, 120
	call DrawEnemy17

	mov enemy18_x, 180
	call DrawEnemy18

	mov enemy19_x, 220
	call DrawEnemy19

	mov enemy20_x, 270
	call DrawEnemy20

	jmp move_enemy
	move_enemy:
		mov ax, enemy_slow
		.IF ax > 5
			inc enemy1_y
			inc enemy2_y
			inc enemy3_y
			inc enemy4_y
			inc enemy5_y
			inc enemy6_y
			inc enemy7_y
			inc enemy8_y
			inc enemy9_y
			inc enemy10_y
			inc enemy11_y
			inc enemy12_y
			inc enemy13_y
			inc enemy14_y
			inc enemy15_y
			inc enemy16_y
			inc enemy17_y
			inc enemy18_y
			inc enemy19_y
			inc enemy20_y
			mov enemy_slow, 0
		.ENDIF
		.IF ax < 6
			inc enemy_slow
		.ENDIF

		mov bx, enemy1_y	;IF YOU DIE
		.IF shuttle_y == bx
			call ClearScreen
			mov ah, 4ch
			int 21h
		.ENDIF

		jmp after2
	after2:
	ret
DrawLevelOne endp

ClearScreen proc
	xor ah, ah
	mov al, 13h 
	int 10h
	ret
ClearScreen endp

DrawEnemy1 proc
	drawObject enemy1_y, enemy1_x, 16, 16, enemy_new, enemy1_status
	ret
DrawEnemy1 endp

DrawEnemy2 proc
	drawObject enemy2_y, enemy2_x, 16, 16, enemy_new, enemy2_status
	ret
DrawEnemy2 endp

DrawEnemy3 proc
	drawObject enemy3_y, enemy3_x, 16, 16, enemy_new, enemy3_status
	ret
DrawEnemy3 endp

DrawEnemy4 proc
	drawObject enemy4_y, enemy4_x, 16, 16, enemy_new, enemy4_status
	ret
DrawEnemy4 endp

DrawEnemy5 proc
	drawObject enemy5_y, enemy5_x, 16, 16, enemy_new, enemy5_status
	ret
DrawEnemy5 endp

DrawEnemy6 proc
	drawObject enemy6_y, enemy6_x, 16, 16, enemy_new, enemy6_status
	ret
DrawEnemy6 endp

DrawEnemy7 proc
	drawObject enemy7_y, enemy7_x, 16, 16, enemy_new, enemy7_status
	ret
DrawEnemy7 endp

DrawEnemy8 proc
	drawObject enemy8_y, enemy8_x, 16, 16, enemy_new, enemy8_status
	ret
DrawEnemy8 endp

DrawEnemy9 proc
	drawObject enemy9_y, enemy9_x, 16, 16, enemy_new, enemy9_status
	ret
DrawEnemy9 endp

DrawEnemy10 proc
	drawObject enemy10_y, enemy10_x, 16, 16, enemy_new, enemy10_status
	ret
DrawEnemy10 endp

DrawEnemy11 proc
	drawObject enemy11_y, enemy11_x, 16, 16, enemy_new, enemy11_status
	ret
DrawEnemy11 endp

DrawEnemy12 proc
	drawObject enemy12_y, enemy12_x, 16, 16, enemy_new, enemy12_status
	ret
DrawEnemy12 endp

DrawEnemy13 proc
	drawObject enemy13_y, enemy13_x, 16, 16, enemy_new, enemy13_status
	ret
DrawEnemy13 endp

DrawEnemy14 proc
	drawObject enemy14_y, enemy14_x, 16, 16, enemy_new, enemy14_status
	ret
DrawEnemy14 endp

DrawEnemy15 proc
	drawObject enemy15_y, enemy15_x, 16, 16, enemy_new, enemy15_status
	ret
DrawEnemy15 endp

DrawEnemy16 proc
	drawObject enemy16_y, enemy16_x, 16, 16, enemy_new, enemy16_status
	ret
DrawEnemy16 endp

DrawEnemy17 proc
	drawObject enemy17_y, enemy17_x, 16, 16, enemy_new, enemy17_status
	ret
DrawEnemy17 endp

DrawEnemy18 proc
	drawObject enemy18_y, enemy18_x, 16, 16, enemy_new, enemy18_status
	ret
DrawEnemy18 endp

DrawEnemy19 proc
	drawObject enemy19_y, enemy19_x, 16, 16, enemy_new, enemy19_status
	ret
DrawEnemy19 endp

DrawEnemy20 proc
	drawObject enemy20_y, enemy20_x, 16, 16, enemy_new, enemy20_status
	ret
DrawEnemy20 endp

DrawShuttle proc
	.IF shuttle_status == 1
		drawObject shuttle_y, shuttle_x, 32, 32, shuttle, shuttle_status 
	.ENDIF

	.IF shuttle_status == 0
		call ClearScreen
		mov ah, 4ch
		int 21h
	.ENDIF
	ret
DrawShuttle endp
;<-------------------------------------------------- LEVEL TWO ---------------------------------------------------------------->
DrawLevelTwo proc
	mov enemy1_status, 1
	mov enemy2_status, 1
	mov enemy3_status, 1
	mov enemy4_status, 1
	mov enemy5_status, 1
	mov enemy6_status, 1
	mov enemy7_status, 1
	mov enemy8_status, 1
	mov enemy9_status, 1
	mov enemy10_status, 1
	mov enemy11_status, 1
	mov enemy12_status, 1
	mov enemy13_status, 1
	mov enemy14_status, 1
	mov enemy15_status, 1
	mov enemy16_status, 1
	mov enemy17_status, 1
	mov enemy18_status, 1
	mov enemy19_status, 1
	mov enemy20_status, 1


	mov enemy1_y, 80
	mov enemy2_y, 80
	mov enemy3_y, 80
	mov enemy4_y, 80
	mov enemy5_y, 80
	mov enemy6_y, 60
	mov enemy7_y, 60
	mov enemy8_y, 60
	mov enemy9_y, 60
	mov enemy10_y, 60
	mov enemy11_y, 40
	mov enemy12_y, 40
	mov enemy13_y, 40
	mov enemy14_y, 40
	mov enemy15_y, 40
	mov enemy16_y, 20
	mov enemy17_y, 20
	mov enemy18_y, 20
	mov enemy19_y, 20
	mov enemy20_y, 20

	level_two_loop:
		
		call display_score

		.IF score_value == 1
			.IF score_value2 == 4
				call ClearScreen
				call DrawLevelThree
				
			.ENDIF
		.ENDIF

		mov bx, level_two_1
		mov enemy1_x, bx
		call DrawEnemy1
		
		mov bx, level_two_2
		mov enemy2_x, bx
		call DrawEnemy2

		mov bx, level_two_3
		mov enemy3_x, bx
		call DrawEnemy3

		mov bx, level_two_4
		mov enemy4_x, bx
		call DrawEnemy4
		
		mov bx, level_two_5
		mov enemy5_x, bx
		call DrawEnemy5

		.IF level_two_5 < 280
			.IF level_two_row1 == 0
				inc level_two_1
				inc level_two_2
				inc level_two_3
				inc level_two_4
				inc level_two_5
			.ENDIF
		.ENDIF

		.IF level_two_5 == 280
			mov level_two_row1, 1
		.ENDIF

		.IF level_two_row1 == 1
			dec level_two_1
			dec level_two_2
			dec level_two_3
			dec level_two_4
			dec level_two_5
		.ENDIF
		.IF level_two_1 == 20
			mov level_two_row1, 0
		.ENDIF

		mov bx, level_two_6
		mov enemy6_x, bx
		call DrawEnemy6
		
		mov bx, level_two_7
		mov enemy7_x, bx
		call DrawEnemy7

		mov bx, level_two_8
		mov enemy8_x, bx
		call DrawEnemy8

		mov bx, level_two_9
		mov enemy9_x, bx
		call DrawEnemy9
		
		mov bx, level_two_10
		mov enemy10_x, bx
		call DrawEnemy10

		.IF level_two_6 > 10
			.IF level_two_row2 == 0
				dec level_two_6
				dec level_two_7
				dec level_two_8
				dec level_two_9
				dec level_two_10
			.ENDIF
		.ENDIF

		.IF level_two_6 == 10
			mov level_two_row2, 1
		.ENDIF

		.IF level_two_row2 == 1
			inc level_two_6
			inc level_two_7
			inc level_two_8
			inc level_two_9
			inc level_two_10
		.ENDIF
		.IF level_two_10 == 300
			mov level_two_row2, 0
		.ENDIF

		mov bx, level_two_11
		mov enemy11_x, bx
		call DrawEnemy11
		
		mov bx, level_two_12
		mov enemy12_x, bx
		call DrawEnemy12

		mov bx, level_two_13
		mov enemy13_x, bx
		call DrawEnemy13

		mov bx, level_two_14
		mov enemy14_x, bx
		call DrawEnemy14
		
		mov bx, level_two_15
		mov enemy15_x, bx
		call DrawEnemy15

		.IF level_two_15 < 280
			.IF level_two_row3 == 0
				inc level_two_11
				inc level_two_12
				inc level_two_13
				inc level_two_14
				inc level_two_15
			.ENDIF
		.ENDIF

		.IF level_two_15 == 280
			mov level_two_row3, 1
		.ENDIF

		.IF level_two_row3 == 1
			dec level_two_11
			dec level_two_12
			dec level_two_13
			dec level_two_14
			dec level_two_15
		.ENDIF
		.IF level_two_11 == 20
			mov level_two_row3, 0
		.ENDIF

		mov bx, level_two_16
		mov enemy16_x, bx
		call DrawEnemy16
		
		mov bx, level_two_17
		mov enemy17_x, bx
		call DrawEnemy17

		mov bx, level_two_18
		mov enemy18_x, bx
		call DrawEnemy18

		mov bx, level_two_19
		mov enemy19_x, bx
		call DrawEnemy19
		
		mov bx, level_two_20
		mov enemy20_x, bx
		call DrawEnemy20

		.IF level_two_16 > 10
			.IF level_two_row4 == 0
				dec level_two_16
				dec level_two_17
				dec level_two_18
				dec level_two_19
				dec level_two_20
			.ENDIF
		.ENDIF

		.IF level_two_16 == 10
			mov level_two_row4, 1
		.ENDIF

		.IF level_two_row4 == 1
			inc level_two_16
			inc level_two_17
			inc level_two_18
			inc level_two_19
			inc level_two_20
		.ENDIF
		.IF level_two_20 == 300
			mov level_two_row4, 0
		.ENDIF

		jmp move_enemy
		move_enemy:
			mov ax, enemy_slow
			.IF ax > 5
				inc enemy1_y
				inc enemy1_y
				inc enemy2_y
				inc enemy2_y
				inc enemy3_y
				inc enemy3_y
				inc enemy4_y
				inc enemy4_y
				inc enemy5_y
				inc enemy5_y
				inc enemy6_y
				inc enemy6_y
				inc enemy7_y
				inc enemy7_y
				inc enemy8_y
				inc enemy8_y
				inc enemy9_y
				inc enemy9_y
				inc enemy10_y
				inc enemy10_y
				inc enemy11_y
				inc enemy11_y
				inc enemy12_y
				inc enemy12_y
				inc enemy13_y
				inc enemy13_y
				inc enemy14_y
				inc enemy14_y
				inc enemy15_y
				inc enemy15_y
				inc enemy16_y
				inc enemy16_y
				inc enemy17_y
				inc enemy17_y
				inc enemy18_y
				inc enemy18_y
				inc enemy19_y
				inc enemy19_y
				inc enemy20_y
				inc enemy20_y
				mov enemy_slow, 0
			.ENDIF
			.IF ax < 6
				inc enemy_slow
			.ENDIF
			jmp after2

		after2:

		mov shuttle_y, 160
		push addx
		pop shuttle_x
		call DrawShuttle
		

		mov ah, 01h
		int 16h

		mov ah, 00h
		int 16h

		mov dl, al

		.IF shuttle_x < 280
			cmp dl, 100	; D key
			je move_right
		.ENDIF

		.IF shuttle_x > 10
			cmp dl, 97	; A key
			je move_left
		.ENDIF

		cmp dl, 102		; F key
		je fire_bullet

		cmp dl, 27		; escape key
		je exit

		after: 
			mov ax, 0
	jmp level_two_loop

	fire_bullet:
		mov bullet_status, 1

		mov bx, 0
		mov bx, shuttle_x
		add bx, 15
		mov bullet_x, bx
		
		mov bullet_y_controller, 155 
		fire:
			mov bx, bullet_y_controller
			mov bullet_y, bx
			call DrawBullet
			sub bullet_y_controller, 5
			
			call megadelay

			cmp bullet_y_controller, 35
			je after
		jmp fire
	
	move_right:
		add addx, 5
		call ClearScreen
		jmp after

	move_left:
		sub addx, 5
		call ClearScreen
		jmp after

	exit:
		call ClearScreen
		mov ah, 4ch
		int 21h
	
	ret
DrawLevelTwo endp



;<-------------------------------------------------- LEVEL THREE ---------------------------------------------------------------->

DrawLevelThree proc
	;mov shuttle_x, 150
    mov shuttle_x, 50
	mov shuttle_y, 160

	mov logo_x, 140
	mov logo_y, 40
	
	mov bx, logo_x
	add bx, 18
	mov bullet2_x, bx

	mov bx, logo_y
	add bx, 30
	mov bullet2_y, bx

	mov bx, shuttle_x
	add bx, 15
	mov LevelThreeShuttleBullet_x, bx
	mov LevelThreeShuttleBullet_y, 155 

	Level_Three:
		call DrawMainBoss

		inc bullet2_y
		inc bullet2_y

		call megadelay
		call ClearScreen

		.IF bullet2_y == 200
			mov bx, logo_x
			add bx, 18
			mov bullet2_x, bx

			mov bx, logo_y
			add bx, 30
			mov bullet2_y, bx

			mov bullet2_y, 70
		.ENDIF
		

		;<-----------------------DAMAGE MODEL FOR THE BOSS--------------------->
		mov bx, shuttle_x
		.IF bullet2_x > bx
			mov bx, shuttle_x
			add bx, 32
			.IF	bullet2_x < bx
				mov bx, shuttle_y
				.IF bullet2_y > bx 
					mov shuttle_status, 0
				.ENDIF
			.ENDIF
		.ENDIF
		;<--------------------------------------------------------------------->

		call DrawShuttle
		
		mov ah, 01h

		push cx
		push dx
		int 16h
		jnz keypressed

		pop dx
		pop cx
		xor cx, cx
		jmp after

		keypressed:
			mov ah, 00h
			int 16h

		after:

		.IF shuttle_x < 280
			.IF al == 'd'
				add shuttle_x, 5
			.ENDIF
		.ENDIF

		.IF shuttle_x > 10
			.IF al == 'a'
				sub shuttle_x, 5
			.ENDIF
		.ENDIF
		
		;<-----------------------FIRE BULLET----------------------->
		.IF al == 'f'	
			mov LevelThreeShuttleBullet_status, 1
			mov bx, shuttle_x
			add bx, 15
			mov LevelThreeShuttleBullet_x, bx
		.ENDIF

		mov bx, logo_y
		.IF LevelThreeShuttleBullet_y > bx
			add bx, 40
			.IF LevelThreeShuttleBullet_y < bx
				mov LevelThreeShuttleBullet_status, 0
				mov LevelThreeShuttleBullet_y, 155
			.ENDIF
		.ENDIF

		.IF LevelThreeShuttleBullet_status == 1
			dec LevelThreeShuttleBullet_y
            dec LevelThreeShuttleBullet_y
		.ENDIF

		mov bx, logo_x 
		.IF LevelThreeShuttleBullet_x > bx
			mov bx, logo_x 
			add bx, 40
			.IF	LevelThreeShuttleBullet_x < bx
				mov bx, logo_y
				.IF LevelThreeShuttleBullet_y > bx 
                    mov bx, logo_y 
			        add bx, 40
                    .IF LevelThreeShuttleBullet_y < bx 
                        inc MainBossDamageCounter
                    .ENDIF
				.ENDIF
			.ENDIF
		.ENDIF

		.IF MainBossDamageCounter == 1
            call ClearScreen
            call display_congrats
            call megadelay
            call megadelay
            call megadelay
			mov ah, 4ch
			int 21h
		.ENDIF 

		call DrawLevelThreeBullet
		;<--------------------------------------------------------->
		
		.IF rand_counter == 25
			call randomNumber
			mov  rand_counter, 0
		.ENDIF

		;<-----------------------RANDOM PATTERN FOR BOSS----------------------->
		.IF rand_num == 0
			.IF logo_x < 240
				inc logo_x
				inc logo_x
			.ENDIF

			.IF logo_y < 100
				inc logo_y
			.ENDIF
		.ENDIF

		.IF rand_num == 1
			.IF logo_x > 40
				dec logo_x
				dec logo_x
			.ENDIF

			.IF logo_y > 30
				dec logo_y
			.ENDIF
		.ENDIF

		.IF rand_num == 2
			.IF logo_x < 240
				inc logo_x
				inc logo_x
			.ENDIF

			.IF logo_y > 30
				dec logo_y
			.ENDIF
		.ENDIF

		.IF rand_num == 3
			.IF logo_x > 40
				dec logo_x
				dec logo_x
			.ENDIF
			.IF logo_y < 100
				inc logo_y
			.ENDIF
		.ENDIF
		;<--------------------------------------------------------------------->

		inc rand_counter
		call DrawMainBossBullet

		jmp Level_Three
	ret
DrawLevelThree endp

;<------------------------------------------------------------------------------------------------------------------------------->

DrawLevelThreeBullet proc
	.IF LevelThreeShuttleBullet_status == 1
		drawObject LevelThreeShuttleBullet_y, LevelThreeShuttleBullet_x, 4, 2, bullet, LevelThreeShuttleBullet_status
	.ENDIF
	ret
DrawLevelThreeBullet endp

randomNumber proc
	call Delay
    mov ah, 0h
    int 1ah

    mov ax, dx
    mov dx, 0
    mov bx, 4
    div bx

    mov rand_num, dl
    ret
randomNumber endp




DrawBullet proc
	mov ax, score_value
	.IF ax == 10
		mov score_value, 0
		inc score_value2
	.ENDIF

	.IF score_value == 0
		.IF score_value2 == 2
			call megadelay
			call ClearScreen
			inc score_value
			call DrawLevelTwo
			
		.ENDIF
	.ENDIF

    mov bx, enemy1_x
    .IF bullet_x > bx
        mov bx, enemy1_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy1_y
            .IF bullet_y > bx
                mov bx, enemy1_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy1_status > 0
                            mov enemy1_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


	;mov bx, bullet_x
	;.IF enemy1_x <  bx
	;	mov bx, enemy1_x
	;	add bx, 16
	;	.IF	bullet_x < bx
	;		mov bx, enemy1_y
	;		.IF bullet_y > bx 
	;			.IF bullet_status > 0
	;				.IF enemy1_status > 0
	;					mov enemy1_status, 0
	;					mov bullet_status, 0
	;					inc score_value
	;					jmp logic
	;				.ENDIF
	;			.ENDIF
	;		.ENDIF
	;	.ENDIF
	;.ENDIF


    mov bx, enemy2_x
    .IF bullet_x > bx
        mov bx, enemy2_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy2_y
            .IF bullet_y > bx
                mov bx, enemy2_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy2_status > 0
                            mov enemy2_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy3_x
    .IF bullet_x > bx
        mov bx, enemy3_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy3_y
            .IF bullet_y > bx
                mov bx, enemy3_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy3_status > 0
                            mov enemy3_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy4_x
    .IF bullet_x > bx
        mov bx, enemy4_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy4_y
            .IF bullet_y > bx
                mov bx, enemy4_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy4_status > 0
                            mov enemy4_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy5_x
    .IF bullet_x > bx
        mov bx, enemy5_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy5_y
            .IF bullet_y > bx
                mov bx, enemy5_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy5_status > 0
                            mov enemy5_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy6_x
    .IF bullet_x > bx
        mov bx, enemy6_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy6_y
            .IF bullet_y > bx
                mov bx, enemy6_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy6_status > 0
                            mov enemy6_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy7_x
    .IF bullet_x > bx
        mov bx, enemy7_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy7_y
            .IF bullet_y > bx
                mov bx, enemy7_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy7_status > 0
                            mov enemy7_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 



    mov bx, enemy8_x
    .IF bullet_x > bx
        mov bx, enemy8_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy8_y
            .IF bullet_y > bx
                mov bx, enemy8_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy8_status > 0
                            mov enemy8_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 



    mov bx, enemy9_x
    .IF bullet_x > bx
        mov bx, enemy9_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy9_y
            .IF bullet_y > bx
                mov bx, enemy9_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy9_status > 0
                            mov enemy9_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 



    mov bx, enemy10_x
    .IF bullet_x > bx
        mov bx, enemy10_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy10_y
            .IF bullet_y > bx
                mov bx, enemy10_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy10_status > 0
                            mov enemy10_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy11_x
    .IF bullet_x > bx
        mov bx, enemy11_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy11_y
            .IF bullet_y > bx
                mov bx, enemy11_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy11_status > 0
                            mov enemy11_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy12_x
    .IF bullet_x > bx
        mov bx, enemy12_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy12_y
            .IF bullet_y > bx
                mov bx, enemy12_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy12_status > 0
                            mov enemy12_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy13_x
    .IF bullet_x > bx
        mov bx, enemy13_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy13_y
            .IF bullet_y > bx
                mov bx, enemy13_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy13_status > 0
                            mov enemy13_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy14_x
    .IF bullet_x > bx
        mov bx, enemy14_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy14_y
            .IF bullet_y > bx
                mov bx, enemy14_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy14_status > 0
                            mov enemy14_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy15_x
    .IF bullet_x > bx
        mov bx, enemy15_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy15_y
            .IF bullet_y > bx
                mov bx, enemy15_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy15_status > 0
                            mov enemy15_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy16_x
    .IF bullet_x > bx
        mov bx, enemy16_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy16_y
            .IF bullet_y > bx
                mov bx, enemy16_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy16_status > 0
                            mov enemy16_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy17_x
    .IF bullet_x > bx
        mov bx, enemy17_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy17_y
            .IF bullet_y > bx
                mov bx, enemy17_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy17_status > 0
                            mov enemy17_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy18_x
    .IF bullet_x > bx
        mov bx, enemy18_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy18_y
            .IF bullet_y > bx
                mov bx, enemy18_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy18_status > 0
                            mov enemy18_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy19_x
    .IF bullet_x > bx
        mov bx, enemy19_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy19_y
            .IF bullet_y > bx
                mov bx, enemy19_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy19_status > 0
                            mov enemy19_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 


    mov bx, enemy20_x
    .IF bullet_x > bx
        mov bx, enemy20_x
        add bx, 16
        .IF bullet_x < bx
            mov bx, enemy20_y
            .IF bullet_y > bx
                mov bx, enemy20_y
                add bx, 16
                .IF bullet_y < bx
                    .IF bullet_status > 0
                        .IF enemy20_status > 0
                            mov enemy20_status, 0
                            mov bullet_status, 0
                            inc score_value
                            jmp logic
                        .ENDIF
				    .ENDIF
                .ENDIF
            .ENDIF
        .ENDIF
    .ENDIF 

	
	;mov bullet_status, 1
	drawObject bullet_y, bullet_x, 4, 2, bullet, bullet_status
	logic:
		ret

		
DrawBullet endp

DrawLogo proc
	drawObject logo_y, logo_x, 40, 40, logo, logo_status
	add logo_x, 80
	ret
DrawLogo endp

DrawMainBoss proc
	drawObject logo_y, logo_x, 40, 40, logo, logo_status
	ret
DrawMainBoss endp

DrawMainBossBullet proc
	drawObject bullet2_y, bullet2_x, 4, 4, bullet2, bullet2_status
	ret
DrawMainBossBullet endp

Delay proc
	mov ah, 86h
	int 15h
	ret
Delay endp


end main