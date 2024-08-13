/*	4) Crie um algoritmo informe qual o maior e qual o menor elemento
	existente em uma matriz 4x3. */

programa
{
	
	funcao inicio()
	{
		inteiro matriz[4][3]={{3,2,1},{5,9,2},{0,7,8},{77,12,6}}, maior=0, menor=999999

		para(inteiro l=0; l<4; l++){
			para(inteiro c=0; c<3; c++){
				
				se(matriz[l][c]>maior)
					{maior=matriz[l][c]}
				se(matriz[l][c]<menor)
					{menor=matriz[l][c]}
			}
		}
		escreva("\nO maior elemento é o número: ", maior,".")
		escreva("\nO menor elemento é o número: ", menor,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 20; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */