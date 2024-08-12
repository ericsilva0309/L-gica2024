programa
{
	
	funcao inicio()
	{
		inteiro matriz [3][3], soma =0

		para(inteiro lin=0; lin < 3; lin++){
			para(inteiro col=0; col < 3; col++){
				escreva("Digite os números: ")
				leia(matriz [lin][col])
				soma += matriz [lin][col]

		}
		escreva("Total da soma: ",soma)
		soma=0
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */