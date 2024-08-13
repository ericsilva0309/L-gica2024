/* 	3) Fazer um algoritmo com um matriz 3x2 de inteiros.  Preencher a matriz 
	fazendo a leitura no console.  Fazer o somatório dos valores das linhas  
	das colunas da matriz, exibindo na tela os resultados. */


programa
{
	
	funcao inicio()
	{
	inteiro matriz[3][2], soma=0, total=0
		
		para(inteiro l=0; l < 3; l++){
			para(inteiro c=0; c < 2; c++){
				escreva("\nDigite o nº: ")
				leia(matriz[l][c])
				soma+=matriz[l][c]
				total+=matriz[l][c]								
			}			
			escreva("\nTotal da soma da linha ", l+1, " é: ",soma)
			soma=0
		}
		para(inteiro c=0; c < 2; c++){
			para(inteiro l=0; l < 3; l++){				
				escreva("\n")
				soma+=matriz[l][c]							
			}			
			escreva("\nTotal da soma da coluna ", c+1, " é: ",soma)
			soma=0
		}
		
		escreva("\nO total geral é: ", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 656; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 11, 9, 6}-{soma, 11, 23, 4}-{total, 11, 31, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */