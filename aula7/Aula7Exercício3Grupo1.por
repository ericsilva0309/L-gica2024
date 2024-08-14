programa
{
/*
3) Crie uma função que receba um valor como parâmetro 
e retorne do dobro do valor e exiba na tela este valor. */

	
	funcao inicio()
	{
		inteiro valor
		escreva("Digite um valor ")
		leia(valor)

		dobro(valor)

		escreva("O dobro de ", valor, " é ", dobro(valor))
	}
	funcao inteiro dobro(inteiro d)
	{
		retorne d*2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */