GRAVIDADE:				.float 0.35
SALTO:					.float -7.4

mapa.y:					.half 587
mapa.x:					.half 52

.eqv ALUCARD.OFFSET			4268
.eqv ALUCARD.HITBOX.ALTURA		47
.eqv ALUCARD.HITBOX.LARGURA		20
.eqv ALUCARD.HITBOX_OFFSET.Y		17
.eqv ALUCARD.HITBOX_OFFSET.X		38
.eqv ALUCARD.LARGURA 			97
.eqv ALUCARD.ALTURA			64

alucard:				.string "sprites/alucard.bin"
alucard.animacao:			.byte 0
alucard.parado.direita.offsets: 	.word 0,0,0,0,0,0,0,0,97,97,97,97,97,97,97,97,194,194,194,194,194,194,194,194,291,291,291,291,291,291,291,291,388,388,388,388,388,388,388,388,485,485,485,485,485,485,485,485
alucard.parado.esquerda.offsets: 	.word 2813,2813,2813,2813,2813,2813,2813,2813,2716,2716,2716,2716,2716,2716,2716,2716,2619,2619,2619,2619,2619,2619,2619,2619,2522,2522,2522,2522,2522,2522,2522,2522,2425,2425,2425,2425,2425,2425,2425,2425,2328,2328,2328,2328,2328,2328,2328,2328
alucard.correndo.direita.offsets: 	.word 273152,273152,273249,273249,273346,273346,273443,273443,273540,273540,273637,273637,273734,273734,273831,273831,273928,273928,274025,274025,274122,274122,274219,274219,274316,274316,274413,274413,274510,274510,274607,274607,274704,274704,274801,274801,274898,274898,274995,274995,275092,275092,275189,275189,275286,275286,275383,275383,275480,275480,275577,275577,275674,275674,275771,275771,275868,275868,275965,275965,276062,276062
alucard.correndo.esquerda.offsets: 	.word 549214,549214,549117,549117,549020,549020,548923,548923,548826,548826,548729,548729,548632,548632,548535,548535,548438,548438,548341,548341,548244,548244,548147,548147,548050,548050,547953,547953,547856,547856,547759,547759,547662,547662,547565,547565,547468,547468,547371,547371,547274,547274,547177,547177,547080,547080,546983,546983,546886,546886,546789,546789,546692,546692,546595,546595,546498,546498,546401,546401,546304,546304
alucard.pulando.direita.offsets: 	.word 819456,819456,819456,819456,819553,819553,819553,819553,819650,819650,819650,819650,819747,819747,819747,819747,819844,819844,819844,819844,819941,819941,819941,819941,820038,820038,820038,820038,820135,820135,820135,820135,820232,820232,820232,820232,820329,820329,820329,820329,820426,820426,820426,820426,820523,820523,820523,820523,820620,820620,820620,820620,820717,820717,820717,820717,820814,820814,820814,820814,820911,820911,820911,820911,821008,821008,821008,821008,821105,821105,821105,821105,821202,821202,821202,821202,821299,821299,821299,821299,821396,821396,821396,821396,821493,821493,821493,821493
alucard.pulando.esquerda.offsets: 	.word 823627,823627,823627,823627,823530,823530,823530,823530,823433,823433,823433,823433,823336,823336,823336,823336,823239,823239,823239,823239,823142,823142,823142,823142,823045,823045,823045,823045,822948,822948,822948,822948,822851,822851,822851,822851,822754,822754,822754,822754,822657,822657,822657,822657,822560,822560,822560,822560,822463,822463,822463,822463,822366,822366,822366,822366,822269,822269,822269,822269,822172,822172,822172,822172,822075,822075,822075,822075,821978,821978,821978,821978,821881,821881,821881,821881,821784,821784,821784,821784,821687,821687,821687,821687,821590,821590,821590,821590
alucard.socando.direita.offsets: 	.word 1092608,1092608,1092705,1092705,1092802,1092802,1092899,1092899,1092996,1092996,1093093,1093093,1093190,1093190,1093287,1093287,1093384,1093384,1093481,1093481,1093578,1093578,1093675,1093675,1093772,1093772,1093869,1093869,1093966,1093966,1094063,1094063,1094160,1094160
alucard.socando.esquerda.offsets: 	.word 1095809,1095809,1095712,1095712,1095615,1095615,1095518,1095518,1095421,1095421,1095324,1095324,1095227,1095227,1095130,1095130,1095033,1095033,1094936,1094936,1094839,1094839,1094742,1094742,1094645,1094645,1094548,1094548,1094451,1094451,1094354,1094354,1094257,1094257
alucard.hellfire.direita.offsets: 	.word 1365760,1365857,1365954,1366051,1366148,1366245,1366342,1366439,1366536,1366633,1366730
alucard.hellfire.esquerda.offsets: 	.word 1368864,1368864,1368767,1368767,1368670,1368670,1368573,1368573,1368476,1368476,1368379,1368379,1368282,1368282,1368185,1368185,1368088,1368088,1367991,1367991,1367894,1367894,1367797,1367797

# Posi�oes atuais do personagem
horizontal_alucard:			.word 120
vertical_alucard:			.word 135

velocidadeY_alucard:			.float 0

# booleano para indicar se o personagem est� em anima��o de pulo
moveX:					.byte 0
pulando:				.byte 0
sentido:				.byte 1
socando:				.byte 0
