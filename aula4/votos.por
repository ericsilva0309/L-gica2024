/* Faça um exercício para leitura de dados de uma eleição 
1 - Candidato - X
2 - Candidato - Y
3 - Branco
0 - Encerrar Votação

Qualquer opção diferente anulará o voto
No final deverá ser exibido o total de votos e o percentual de voto de todos candidados  */

programa
{
	
	funcao inicio()
	{
		inteiro opcaoVoto
		real opcaoA=0, opcaoB=0, opcaoBrancos=0, opcaoNulos=0, totalVotos=0
		faca
		{
		escreva("Escolha o seu candidato. ")
		escreva("Os candidatos disponíveis são: \nCANDIDATO A - Tecla 1\nCANDIDATO B - Tecla 2")
		escreva("\nOPÇÃO EM BRANCO - Tecla 3\nTecle 0 para sair\n")
		leia(opcaoVoto)
		se(opcaoVoto==1){ opcaoA+=1}
		senao se(opcaoVoto==2){ opcaoB+=1}
		senao se(opcaoVoto==3){ opcaoBrancos+=1}
		senao{opcaoNulos++}

		se(opcaoVoto==0){opcaoNulos--}

		}			
		enquanto(opcaoVoto!=0)
		totalVotos=opcaoA+opcaoB+opcaoBrancos+opcaoNulos
		escreva(totalVotos,"\n")

		real percentualA, percentualB, percentualBranco, percentualNulos

		percentualA=(opcaoA/totalVotos)*100
		percentualB=(opcaoB/totalVotos)*100
		percentualBranco=(opcaoBrancos/totalVotos)*100
		percentualNulos=(opcaoNulos/totalVotos)*100

		escreva("O total de votos foi de ", totalVotos,".\n")
		escreva("Candidato A: ", opcaoA, " voto(s). ", percentualA, "% do total\n")
		escreva("Candidato B: ", opcaoB, " voto(s). ", percentualB, "% do total\n")
		escreva("Brancos: ", opcaoBrancos, " voto(s). ", percentualBranco, "% do total\n")
		escreva("Nulos: ", opcaoNulos, " voto(s). ", percentualNulos, "% do total\n")
	}
		
				
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */