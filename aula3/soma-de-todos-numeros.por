programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		/*//2) Faça outro exercício para que sejam impressos os números da seguinte forma: 100,90...10
		inteiro contador = 100

		enquanto(contador > 0)
{
	     limpa()
		escreva("O contador está em: ",contador)
		contador = contador-10
		u.aguarde(1000)
}
     limpa()
	escreva("O contador chegou a 0")

	//3) Escrever um programa de computador que leia números inteiros e ao final, apresente a soma de todos os números lidos até
que o valor digitado seja zero.*/

          inteiro num1, total = 0

          escreva("Digite um número: ")
          	leia(num1)

          enquanto(num1 != 0){
          	total = total+num1
          	escreva("Digite um número: ")
          	leia(num1)
          }
          escreva("Total = "+total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */