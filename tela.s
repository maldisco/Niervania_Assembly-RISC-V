# Troca para a tela que o personagem passou
# a0 = cor label da tela alvo
TELA.TROCA:		li		t0, -1
			beq		a0, t0, TELA_1.PARA.TELA_2	# se a cor for 12, muda da tela 1 para tela 2
			
			li		t0, -2
			beq		a0, t0, TELA_2.PARA.TELA_1
			
			li		t0, -3
			beq		a0, t0,	TELA_2.PARA.TELA_3
			
			li 		t0, -4
			beq		a0, t0, TELA_3.PARA.TELA_2 
			
			li		t0, -7
			beq		a0, t0, TELA_2.PARA.TELA_10
			
			li		t0, -5
			beq 		a0, t0, TELA_3.PARA.TELA_4
			
			li		t0, -8
			beq		a0, t0, TELA_3.PARA.TELA_5_CIMA
			
			li		t0, -9
			beq		a0, t0, TELA_3.PARA.TELA_5_BAIXO
			
			li		t0, -14
			beq		a0, t0, TELA_5.PARA.TELA_3_BAIXO
			
			li		t0, -22
			beq		a0, t0, TELA_5.PARA.TELA_3_CIMA
			
			li		t0, -15
			beq		a0, t0, TELA_5.PARA.TELA_6
			
			li		t0, -16
			beq		a0, t0, TELA_6.PARA.TELA_5
			
			li		t0, -10
			beq		a0, t0, TELA_4.PARA.TELA_7 
			
			li		t0, -18
			beq		a0, t0, TELA_7.PARA.TELA_4
			
			li		t0, -17
			beq		a0, t0, TELA_7.PARA.TELA_10
			
			li 		t0, -12
			beq		a0, t0, TELA_10.PARA.TELA_7
			
			li		t0, -13
			beq		a0, t0, TELA_10.PARA.TELA_2

# Configurações para mudar da tela 1 para 2
TELA_1.PARA.TELA_2:	jal 		CONFIG.TELA_2			# Padrões
			
			li		s4, T2.X_INI
			li 		s3, T2.Y_INI	
			li		s6, 110
			li		s5, 150
			
			la		t0, moveX
			li		t1, -14
			sb		t1, (t0)
			
			la		t0, pulando
			li		t1, 1
			sb		t1, (t0)
			
			li 		t1, -6		
			fcvt.s.w 	fs2, t1				
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO			

# Configurações para mudar da tela 2 para 1
TELA_2.PARA.TELA_1:	jal		CONFIG.TELA_1
			
			li		s4, 212
			li 		s3, 0
			li		s6, 120
			li		s5, 30
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO

# Configurações para mudar da tela 2 para 3
TELA_2.PARA.TELA_3:	jal		CONFIG.TELA_3
			
			li		s4, T3.X_INI
			li 		s3, T3.Y_INI	
			li		s6, 240
			li		s5, 115
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO

# Configurações ao mudar da tela 2 para 10
TELA_2.PARA.TELA_10:	
			jal		CONFIG.TELA_10
			
			li		s4, 0
			li 		s3, 0
			li		s6, 20
			li		s5, 95
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO


# Configurações para mudar da tela 3 para 2
TELA_3.PARA.TELA_2:	jal 		CONFIG.TELA_2
			
			li		s4, 0
			li 		s3, 0
			li		s6, 0
			li		s5, 95
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO

# Configurações ao mudar da tela 3 para 4
TELA_3.PARA.TELA_4:	jal		CONFIG.TELA_4
			
			li		s4, T4.X_INI
			li 		s3, T4.Y_INI
			li		s6, 0
			li		s5, 72
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 3 para 5
TELA_3.PARA.TELA_5_CIMA:	
			jal		CONFIG.TELA_5
			
			li		s4, 191
			li 		s3, 0
			li		s6, 220
			li		s5, 70
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 3 para 5
TELA_3.PARA.TELA_5_BAIXO:	
			jal		CONFIG.TELA_5
			
			li		s4, 193
			li 		s3, 222
			li		s6, 225
			li		s5, 100
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações para mudar da tela 5 para 3
TELA_5.PARA.TELA_3_BAIXO:	
			jal		CONFIG.TELA_3
			
			li		s4, T3.X_INI
			li 		s3, T3.Y_INI
			li		s6, 10
			li		s5, 115
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO

# Configurações para mudar da tela 5 para 3
TELA_5.PARA.TELA_3_CIMA:	
			jal		CONFIG.TELA_3
			
			li		s4, 0
			li 		s3, 236
			li		s6, 10
			li		s5, 90
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO

# Configurações para mudar da tela 5 para 6
TELA_5.PARA.TELA_6:	jal		CONFIG.TELA_6
			
			li		s4, T6.X_INI
			li 		s3, T6.Y_INI
			li		s6, 223
			li		s5, 88
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)
			
			tail		LOOP_JOGO

# Configurações ao mudar da tela 6 para 5
TELA_6.PARA.TELA_5:	
			jal		CONFIG.TELA_5
			
			li		s4, 0
			li 		s3, 0
			li		s6, 20
			li		s5, 70
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 4 para 7
TELA_4.PARA.TELA_7:	
			jal		CONFIG.TELA_7
			
			li		s4, 0
			li 		s3, 528
			li		s6, 20
			li		s5, 70
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, 1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 7 para 4
TELA_7.PARA.TELA_4:	
			jal		CONFIG.TELA_4
			
			li		s4, 704
			li		s3, 222
			li		s6, 220
			li		s5, 90
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 7 para 10
TELA_7.PARA.TELA_10:	
			jal		CONFIG.TELA_10
			
			li		s4, 0
			li 		s3, 0
			li		s6, 220
			li		s5, 95
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 10 para 7
TELA_10.PARA.TELA_7:	
			jal		CONFIG.TELA_7
			
			li		s4, 0
			li 		s3, 528
			li		s6, 220
			li		s5, 75
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO

# Configurações ao mudar da tela 10 para 2
TELA_10.PARA.TELA_2:	
			jal		CONFIG.TELA_2
			
			li		s4, 447
			li 		s3, 0
			li		s6, 205
			li		s5, 95
			
			la		t0, moveX
			sb		zero, (t0)
			
			la		t0, pulando
			sb		zero, (t0)
			
			fcvt.s.w 	fs2, zero
			
			la		t0, sentido
			li		t1, -1
			sb		t1, (t0)
			
			la		t0, socando
			sb		zero, (t0)			
	
			tail		LOOP_JOGO


# Configuracoes ao iniciar o jogo
config_tela_1:		jal		CONFIG.TELA_1
	
			li		s4, T1.X_INI			# s4 = Posição X do mapa
			li 		s3, T1.Y_INI			# s3 = Posição Y do mapa
			li		s6, 120				# s6 = Posição X do personagem
			li		s5, 135				# s5 = Posição Y do personagem
	
			# Inicia velocidade Y como 0
			fcvt.s.w	fs2, zero
			
			# Dialogo inicial do jogo
			# jal		DIALOGO_1.START
									
 			tail 		LOOP_JOGO
 
# Constantes ao mudar para o mapa 1
CONFIG.TELA_1:		la		t0, TELA.DESCRITORES
			lw		s9, 0(t0)
			
			la		t1, mapa.imagem.largura
			li 		t2, T1.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T1.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T1.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T1.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T1.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T1.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_1_hitboxes
			sw		t1, 0(t0)
 			
 			ret
 			
# Constantes ao mudar para o mapa 2
CONFIG.TELA_2:		la		t0, TELA.DESCRITORES
			lw		s9, 4(t0)

			la		t1, mapa.imagem.largura
			li 		t2, T2.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T2.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T2.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T2.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T2.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T2.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_2_hitboxes
			sw		t1, 0(t0)

			ret

# Constantes ao mudar para o mapa 3
CONFIG.TELA_3:		la		t0, TELA.DESCRITORES
			lw		s9, 8(t0)
			
			la		t1, mapa.imagem.largura
			li 		t2, T3.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T3.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T3.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T3.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T3.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T3.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_3_hitboxes
			sw		t1, 0(t0)
			
			ret

# Constantes ao mudar para tela 4
CONFIG.TELA_4:		la		t0, TELA.DESCRITORES
			lw		s9, 12(t0)
			
			
			la		t1, mapa.imagem.largura
			li 		t2, T4.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T4.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T4.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T4.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T4.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T4.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_4_hitboxes
			sw		t1, 0(t0)
			
			ret

# Constantes ao mudar para tela 5
CONFIG.TELA_5:		la		t0, TELA.DESCRITORES
			lw		s9, 16(t0)
			
			
			la		t1, mapa.imagem.largura
			li 		t2, T5.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T5.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T5.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T5.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T5.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T5.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_5_hitboxes
			sw		t1, 0(t0)
			
			ret

# Constantes ao mudar para tela 6
CONFIG.TELA_6:		la		t0, TELA.DESCRITORES
			lw		s9, 20(t0)
			
			
			la		t1, mapa.imagem.largura
			li 		t2, T6.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T6.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T6.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T6.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T6.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T6.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_6_hitboxes
			sw		t1, 0(t0)
			
			ret

# Constantes para tela 7
CONFIG.TELA_7:		la		t0, TELA.DESCRITORES
			lw		s9, 24(t0)
			
			
			la		t1, mapa.imagem.largura
			li 		t2, T7.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T7.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T7.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T7.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T7.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T7.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_7_hitboxes
			sw		t1, 0(t0)
			
			ret

# Constantes para tela 10
CONFIG.TELA_10:		la		t0, TELA.DESCRITORES
			lw		s9, 28(t0)
			
			
			la		t1, mapa.imagem.largura
			li 		t2, T10.LARGURA
			sh 		t2, 0(t1)
		
			la		t1, mapa.hitbox.largura 
			li 		t2, T10.LARGURA
			sh		t2, 0(t1)
	
			la 		t1, mapa.max.x
			li 		t2, T10.MAX.X
			sh		t2, 0(t1)
	
			la 		t1, mapa.min.x
			li		t2, T10.MIN.X
			sh		t2, 0(t1)
			
			la 		t1, mapa.max.y
			li		t2, T10.MAX.Y
			sh		t2, 0(t1)
			
			la 		t1, mapa.min.y
			li		t2, T10.MIN.Y
			sh		t2, 0(t1)
			
			la 		t0, mapa_hitbox
			la 		t1, tela_10_hitboxes
			sw		t1, 0(t0)
			
			ret
