// 1) Criar dois vetores com 5 posições um para ler o nome  
// e outro para ler a altura de pessoas a partir do teclado, 
// criticar para não ter alturas inferiores a zero. No final 
// deverá ser impresso o vetor com as informações das pessoas.

//Fiz um pouco diferente do resto do grupo pois ficamos testando versões e tentei achar uma mais otimizada
programa
{
	funcao inicio()
	{
		cadeia nomes[5]
		real alturas[5]

		para (inteiro i = 0; i < 5; i++)
		{
			escreva("Nome: ")
			leia(nomes[i])			
			escreva("Altura: ")
			leia(alturas[i])

			se (alturas[i] <= 0)
			{
				escreva("Altura inválida! O valor deve ser superior a zero.\n")
				i--
			}
		}

		escreva("\nOs nomes e alturas registradas são: ")
		para (inteiro i = 0; i < 5; i++)
		{
			escreva("\nNome: ", nomes[i], "\t\t | Altura: ", alturas[i], "m")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 11, 9, 5}-{alturas, 12, 7, 7}-{i, 14, 16, 1}-{i, 29, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */